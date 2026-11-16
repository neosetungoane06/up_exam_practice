import {onCall, HttpsError} from "firebase-functions/https";
import {defineSecret} from "firebase-functions/params";
import {getFirestore, FieldValue} from "firebase-admin/firestore";
import {YoutubeTranscript} from "youtube-transcript";
import {callGemini} from "../providers/gemini";
import {getPlanCaps} from "../plan/planCaps";
import {
  SAFETY_FOOTER,
  SAFETY_PROMPT_RULES,
  SafetyCategory,
  parseSafety,
  saveSafetyReport,
} from "./safetyHelper";

const geminiApiKey = defineSecret("GEMINI_API_KEY");

interface VideoTutorRequest {
  videoId: string;
  title: string;
  channel?: string;
  question: string;
  /** Where the student paused, in seconds (optional). */
  atSeconds?: number;
  history?: Array<{role: "user" | "model"; text: string}>;
}

const MAX_QUESTION_CHARS = 1500;
const MAX_HISTORY_TURNS = 8;
/**
 * Video tutor questions per day, by plan. -1 = unlimited.
 * Keep in step with PlanLimits.videoTutorMessagesPerDay in the app and with
 * the pricing text (subscription screen, about.html, index.html).
 */
const DAILY_CAP_BY_PLAN: Record<string, number> = {
  free: 5,
  standard: -1,
  premium: -1,
};

/**
 * Tutor for the video screen. The student is watching a study video and
 * asks about something they did not understand.
 *
 * The tutor reads the video's captions around the moment the student
 * paused at (or, when the position is unknown, the part of the captions
 * that best matches the question). Anything the captions do not cover is
 * answered from its own subject knowledge. Captions are cached per video.
 */
export const askVideoTutor = onCall(
  {
    secrets: [geminiApiKey],
    enforceAppCheck: true,
    timeoutSeconds: 60,
  },
  async (request) => {
    if (!request.auth) {
      throw new HttpsError(
        "unauthenticated",
        "You must be signed in to ask the tutor."
      );
    }

    const uid = request.auth.uid;
    const data = request.data as VideoTutorRequest;

    const videoId = String(data.videoId ?? "").slice(0, 32);
    const title = String(data.title ?? "").slice(0, 200);
    const channel = String(data.channel ?? "").slice(0, 100);
    const question = String(data.question ?? "")
      .trim().slice(0, MAX_QUESTION_CHARS);

    if (!videoId || !question) {
      throw new HttpsError(
        "invalid-argument",
        "videoId and question are required."
      );
    }

    // Daily limit, kept in a document only the server can touch.
    const caps = await getPlanCaps(uid);
    const dailyCap = DAILY_CAP_BY_PLAN[caps.planId] ?? DAILY_CAP_BY_PLAN.free;
    const unlimited = dailyCap < 0;
    const day = new Date().toISOString().slice(0, 10);
    const usageRef = getFirestore()
      .collection("users").doc(uid)
      .collection("video_tutor_usage").doc(day);
    const used = ((await usageRef.get()).data()?.count as number) ?? 0;

    if (!unlimited && used >= dailyCap) {
      throw new HttpsError(
        "resource-exhausted",
        `You've used your ${dailyCap} video tutor questions for today. ` +
        "Come back tomorrow, or upgrade for more."
      );
    }

    const history = (Array.isArray(data.history) ? data.history : [])
      .filter((m) => m && (m.role === "user" || m.role === "model") &&
        typeof m.text === "string")
      .slice(-MAX_HISTORY_TURNS * 2)
      .map((m) => ({role: m.role, text: m.text.slice(0, 3000)}));

    const atSeconds = typeof data.atSeconds === "number" ? data.atSeconds : null;
    const excerpt = await getTranscriptExcerpt(videoId, atSeconds, question);

    const prompt = buildPrompt({
      title,
      channel,
      excerpt,
      atSeconds,
      history,
      question,
    });

    let reply: string;
    try {
      reply = await callGemini(prompt, geminiApiKey.value());
    } catch (e) {
      throw new HttpsError(
        "internal",
        "The tutor couldn't answer right now. Please try again."
      );
    }

    const cleaned = reply.trim();
    let text = cleaned;
    let safety: SafetyCategory = "none";
    try {
      const parsed = JSON.parse(
        cleaned.replace(/^```json\s*/i, "").replace(/```$/i, "").trim()
      );
      if (parsed && typeof parsed.reply === "string") text = parsed.reply;
      safety = parseSafety(parsed?.safety);
    } catch {
      // Not JSON: use the raw text.
    }

    if (safety !== "none") {
      text = `${text}\n\n${SAFETY_FOOTER[safety]}`;
      await saveSafetyReport({
        uid,
        source: "ask_tutor",
        noteId: `video:${videoId}`,
        category: safety,
        question,
        history,
        reply: text,
      });
      // A safety reply does not count against the daily limit.
      return {reply: text, safety, remainingToday: unlimited ? -1 :
        Math.max(0, dailyCap - used)};
    }

    await usageRef.set(
      {count: FieldValue.increment(1), updatedAt: FieldValue.serverTimestamp()},
      {merge: true}
    );

    return {
      reply: text,
      remainingToday: unlimited ? -1 : Math.max(0, dailyCap - used - 1),
    };
  }
);

type Seg = [number, string]; // [start second, text]

const EXCERPT_BEFORE_SEC = 120;
const EXCERPT_AFTER_SEC = 30;
const EXCERPT_MAX_CHARS = 3500;

/** Captions for a video, cached in Firestore. Empty when none exist. */
async function loadTranscript(videoId: string): Promise<Seg[]> {
  const ref = getFirestore().collection("video_transcripts").doc(videoId);
  try {
    const cached = await ref.get();
    if (cached.exists) {
      const segs = cached.data()?.segs as Seg[] | undefined;
      return Array.isArray(segs) ? segs : [];
    }
  } catch {
    // Fall through and try to fetch.
  }

  let segs: Seg[] = [];
  try {
    const raw = await YoutubeTranscript.fetchTranscript(videoId);
    const offsets = raw.map((r) => Number(r.offset) || 0);
    // Some versions report milliseconds, some seconds. Caption lines are
    // a few seconds apart, so a median gap above 100 means milliseconds.
    const gaps: number[] = [];
    for (let i = 1; i < offsets.length; i++) gaps.push(offsets[i] - offsets[i - 1]);
    gaps.sort((a, b) => a - b);
    const median = gaps.length ? gaps[Math.floor(gaps.length / 2)] : 0;
    const div = median > 100 ? 1000 : 1;
    segs = raw
      .map((r, i): Seg => [
        Math.round(offsets[i] / div),
        String(r.text ?? "").replace(/&amp;#39;|&#39;/g, "'")
          .replace(/&amp;/g, "&").replace(/\s+/g, " ").trim(),
      ])
      .filter((x) => x[1].length > 0);
  } catch {
    segs = [];
  }

  try {
    // Cache misses too (empty list) so a video without captions is not
    // fetched again on every question.
    await ref.set({segs, fetchedAt: FieldValue.serverTimestamp()});
  } catch {
    // Caching is best effort.
  }
  return segs;
}

function join(segs: Seg[]): string {
  return segs.map((x) => `[${formatTime(x[0])}] ${x[1]}`).join(" ");
}

/**
 * The part of the captions the answer should be based on.
 * - With a position: from 2 minutes before to 30 seconds after it.
 * - Without one: the 90-second stretches whose words best match the question.
 */
async function getTranscriptExcerpt(
  videoId: string,
  atSeconds: number | null,
  question: string
): Promise<string> {
  const segs = await loadTranscript(videoId);
  if (segs.length === 0) return "";

  if (atSeconds !== null) {
    const from = atSeconds - EXCERPT_BEFORE_SEC;
    const to = atSeconds + EXCERPT_AFTER_SEC;
    const part = segs.filter((x) => x[0] >= from && x[0] <= to);
    return join(part).slice(-EXCERPT_MAX_CHARS);
  }

  const words = new Set(
    question.toLowerCase().match(/[a-z0-9]{4,}/g) ?? []
  );
  if (words.size === 0) return join(segs.slice(0, 40)).slice(0, EXCERPT_MAX_CHARS);

  const last = segs[segs.length - 1][0];
  const scored: Array<{start: number; score: number}> = [];
  for (let start = 0; start <= last; start += 45) {
    const win = segs.filter((x) => x[0] >= start && x[0] < start + 90);
    const hay = win.map((x) => x[1]).join(" ").toLowerCase();
    let score = 0;
    for (const w of words) if (hay.includes(w)) score++;
    if (score > 0) scored.push({start, score});
  }
  scored.sort((a, b) => b.score - a.score);
  const picked = scored.slice(0, 2).map((x) => x.start).sort((a, b) => a - b);
  if (picked.length === 0) return "";
  const out = picked
    .map((st) => join(segs.filter((x) => x[0] >= st && x[0] < st + 90)))
    .join("\n...\n");
  return out.slice(0, EXCERPT_MAX_CHARS);
}

function formatTime(seconds: number): string {
  const s = Math.max(0, Math.floor(seconds));
  const m = Math.floor(s / 60);
  const r = s % 60;
  return `${m}:${r.toString().padStart(2, "0")}`;
}

function buildPrompt(params: {
  title: string;
  channel: string;
  excerpt: string;
  atSeconds: number | null;
  history: Array<{role: "user" | "model"; text: string}>;
  question: string;
}): string {
  const historyText = params.history.length === 0 ?
    "(no earlier messages)" :
    params.history
      .map((m) => `${m.role === "user" ? "Student" : "Tutor"}: ${m.text}`)
      .join("\n");

  const position = params.atSeconds === null ? "unknown" :
    formatTime(params.atSeconds);

  return `
You are the Kepler Study assistant, a warm, patient tutor. A university
student is watching a study video and has a question about something they
did not understand. Your whole purpose is to improve their learning.

THE VIDEO:
- Title: ${params.title || "(unknown)"}
- Channel: ${params.channel || "(unknown)"}
- The student is currently at: ${position}

WHAT THE SPEAKER SAID NEAR THAT MOMENT (auto-captions, may contain
mistakes; times are minutes:seconds):
${params.excerpt ? params.excerpt : "(captions are not available for this video)"}

IDENTITY:
- If asked your name, who made you, or what AI model or company is behind
  you, reply only: "I'm the Kepler Study assistant, here to help you
  learn." Then steer back to their studies. Never name any AI model or
  company.

${SAFETY_PROMPT_RULES}

HOW TO ANSWER:
1. Be brief. Most answers are 2 to 5 short sentences. Never write an
   essay, never repeat the question, no long intros or closing offers.
2. A direct question gets a direct answer, then stop. For example,
   "what is osmosis" -> "Osmosis is the movement of water across a
   semi-permeable membrane from a dilute solution to a concentrated one."
   Add one short example or an "Imagine ..." picture only when it makes
   the idea clearer, then finish.
3. If the captions above cover what the student is asking, base your answer
   on them and say where ("In the video, ...") using the speaker's own
   steps and numbers. Captions can be wrong, so fix obvious mistakes
   quietly.
4. If the question goes beyond what the captions cover, answer from your
   own knowledge of the topic. Say in a few words that the video does not
   go into it, then explain, and give a small example to make it stick.
   Stay on the video's topic.
5. If the student asks for practice ("quiz me", "give me a question"),
   give one or two short practice questions on exactly this topic, then
   stop. Give the answer only when they ask for it.
6. Never invent what the speaker said or what is on screen. If there are
   no captions and the answer depends on the exact wording, say so in one
   sentence and still explain the concept.
7. If the question is not about studying, say so politely and bring the
   conversation back to their learning.

EARLIER CONVERSATION:
${historyText}

STUDENT'S NEW QUESTION:
${params.question}

Respond with ONLY a JSON object, no other text:
{ "reply": string, "safety": "none" | "self_harm" | "harm_others" }

MATH FORMATTING (only when math appears - the app renders LaTeX):
- Inline math goes between single dollar signs, e.g. "$F = ma$".
- A display equation on its own line goes between double dollar signs,
  e.g. "$$F = G \\frac{m_1 m_2}{r^2}$$".
- Use real LaTeX commands: \\frac{a}{b}, x^{2}, v_{0}, \\sqrt{x},
  \\cdot, \\times, \\pm, \\pi, \\theta, \\Delta, \\int, \\sum,
  \\left( \\right), \\text{}.
- NEVER write a bare "^" for an exponent, a "/" for a fraction, or the
  word "sqrt" as plain text. NEVER wrap math in backticks or code
  fences.
`.trim();
}