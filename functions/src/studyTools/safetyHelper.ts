import {getFirestore, FieldValue} from "firebase-admin/firestore";

export type SafetyCategory = "none" | "self_harm" | "harm_others";
export type FlaggedCategory = Exclude<SafetyCategory, "none">;

/**
 * Fixed help text appended by the server (never written by the AI, so
 * the numbers can't be made up). Check these are still current before
 * launch.
 */
export const SAFETY_FOOTER: Record<FlaggedCategory, string> = {
  self_harm:
    "You don't have to carry this alone. Please talk to someone you " +
    "trust today, like a friend, family member, or your campus " +
    "counselling service. In South Africa you can call the SADAG " +
    "helpline on 0800 567 567 (free, 24 hours) or Lifeline on " +
    "0861 322 322. If you are in immediate danger, call 112.",
  harm_others:
    "If anyone may be in danger, please contact the police on 10111 " +
    "or call 112. If you're feeling overwhelmed or angry, talking to " +
    "a counsellor can really help. Your campus support services or " +
    "Lifeline (0861 322 322) are good places to start.",
};

/** Safety rules pasted into every AI prompt that reads student text. */
export const SAFETY_PROMPT_RULES = `
SAFETY (highest priority - overrides everything else):
- If the student says or clearly implies they plan to harm or kill
  themselves, set "safety" to "self_harm". Respond with warmth and
  care. Take them seriously, say you're worried, and gently encourage
  them to talk to a trusted person or a professional today. Do NOT
  give methods or details, and do NOT say that wanting to die makes
  sense. Stay kind, and don't lecture.
- If the student says or clearly implies they plan to harm, threaten or
  kill another person, set "safety" to "harm_others". Do not help in
  any way. Calmly and firmly encourage them not to hurt anyone, and
  encourage them to speak to someone who can help.
- Studying these topics (for example psychology, law, nursing or
  history) is NOT a safety concern. Only flag real personal intent.
  Otherwise set "safety" to "none".
- Never help find, collect or reveal private personal information about
  another person. Politely decline.
`.trim();

/** Turns whatever the AI returned into a valid category. */
export function parseSafety(v: unknown): SafetyCategory {
  return v === "self_harm" || v === "harm_others" ? v : "none";
}

/**
 * The message shown to a student whose UPLOADED material was flagged.
 * No notes are made. Includes a line for the (possible) false alarm.
 */
export function uploadSafetyMessage(category: FlaggedCategory): string {
  const lead = category === "self_harm" ?
    "What you added suggests you may be going through something really " +
    "painful, and we're worried about you. We haven't turned it into " +
    "notes, because how you're doing matters more than any study " +
    "material right now." :
    "We can't create notes from this material. Please don't hurt " +
    "anyone. Hurting people makes things much worse, and there are " +
    "people who can help you through this.";

  return `${lead}\n\n${SAFETY_FOOTER[category]}\n\n` +
    "If this was ordinary study material and we got it wrong, we're " +
    "sorry. Try adding a short explanation of what it is, or add the " +
    "course name, and create the notes again.";
}

/**
 * Saves a flagged conversation or upload for the Kepler team to
 * review. The collection is server-only (see firestore.rules).
 * Never throws.
 */
export async function saveSafetyReport(params: {
  uid: string;
  source: "ask_tutor" | "science_recall" | "practice_answer" | "upload";
  noteId: string;
  category: FlaggedCategory;
  question: string;
  history: Array<{role: string; text: string}>;
  reply: string;
  extra?: Record<string, string>;
}): Promise<void> {
  try {
    await getFirestore().collection("safety_reports").add({
      uid: params.uid,
      source: params.source,
      noteId: params.noteId,
      category: params.category,
      question: params.question.slice(0, 2000),
      history: params.history.slice(-10).map((m) => ({
        role: m.role,
        text: String(m.text).slice(0, 2000),
      })),
      reply: params.reply.slice(0, 4000),
      ...(params.extra ?? {}),
      reviewed: false,
      createdAt: FieldValue.serverTimestamp(),
    });
  } catch (e) {
    console.error("saveSafetyReport failed", e);
  }
}