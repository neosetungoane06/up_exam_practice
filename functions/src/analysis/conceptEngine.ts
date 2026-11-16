import {getFirestore, FieldValue} from "firebase-admin/firestore";

export type ErrorType = "factual" | "conceptual" | "application";
export type ConceptStatus = "critical" | "shaky" | "mastered" | "new";

export const ERROR_TYPES: ErrorType[] = [
  "factual",
  "conceptual",
  "application",
];

/**
 * A score at or above this is a pass. It drives the spaced-repetition
 * schedule here, and the review-queue cutoff on the client
 * (WeakAreasService.threshold must stay in sync with this number).
 */
export const PASS_SCORE = 70;

/** How much the newest score counts toward mastery (0-1). */
const ALPHA = 0.4;
const MAX_RECENT = 5;
const MAX_INTERVAL_DAYS = 30;
const DAY_MS = 24 * 60 * 60 * 1000;

export function slugify(name: string): string {
  const s = name
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "_")
    .replace(/^_+|_+$/g, "")
    .slice(0, 60);
  return s || "general";
}

/**
 * The ONLY place a concept's status is decided. Deterministic on
 * purpose: the LLM never labels a concept red/yellow/green.
 *
 *  critical: last two answers both under 40, OR (2+ attempts and
 *            mastery under 45)
 *  mastered: mastery 75+ AND at least 3 attempts
 *  new:      mastery 75+ but fewer than 3 attempts (not enough data)
 *  shaky:    everything else
 */
export function computeStatus(
  mastery: number,
  attempts: number,
  recent: number[],
): ConceptStatus {
  const lastTwo = recent.slice(-2);
  if (lastTwo.length === 2 && lastTwo.every((s) => s < 40)) return "critical";
  if (attempts >= 2 && mastery < 45) return "critical";
  if (mastery >= 75) return attempts >= 3 ? "mastered" : "new";
  return "shaky";
}

export interface AttemptInput {
  uid: string;
  conceptName: string;
  noteId: string;
  sourceFileName: string;
  /** 'practice' | 'notes_practice_item' | 'review_retry' | ... */
  source: string;
  questionType: string;
  questionId: string;
  score: number;
  errorType: ErrorType | null;
}

export interface ConceptSnapshot {
  conceptId: string;
  conceptName: string;
  status: ConceptStatus;
  mastery: number;
}

/**
 * Logs one graded answer and updates that concept's rolling stats in
 * ONE transaction, so the attempt log and the concept doc can never
 * disagree. Both collections are server-write-only (see rules), so a
 * client cannot inflate its own mastery.
 *
 * Never throws: a failure here must not cost the student their
 * grading result. It does log loudly, because a failure means lost
 * analytics data.
 */
export async function recordAttempt(
  a: AttemptInput,
): Promise<ConceptSnapshot | null> {
  const name = a.conceptName.trim().slice(0, 60) || "General";
  const conceptId = slugify(name);
  const score = Math.max(0, Math.min(100, Math.round(a.score)));

  const db = getFirestore();
  const userRef = db.collection("users").doc(a.uid);
  const conceptRef = userRef.collection("concepts").doc(conceptId);
  const attemptRef = userRef.collection("attempts").doc();
  const now = Date.now();

  try {
    return await db.runTransaction(async (tx) => {
      const snap = await tx.get(conceptRef);
      const prev = (snap.data() ?? {}) as Record<string, unknown>;

      const prevAttempts = Number(prev.attempts ?? 0);
      const prevMastery =
        typeof prev.mastery === "number" ? prev.mastery : score;

      const attempts = prevAttempts + 1;
      const mastery = prevAttempts === 0 ?
        score :
        ALPHA * score + (1 - ALPHA) * prevMastery;
      const masteryRounded = Math.round(mastery * 10) / 10;

      const prevRecent = Array.isArray(prev.recent) ?
        (prev.recent as unknown[]).map(Number) : [];
      const recent = [...prevRecent, score].slice(-MAX_RECENT);

      const prevCounts = (prev.errorCounts ?? {}) as Record<string, number>;
      const errorCounts: Record<string, number> = {
        factual: Number(prevCounts.factual ?? 0),
        conceptual: Number(prevCounts.conceptual ?? 0),
        application: Number(prevCounts.application ?? 0),
      };
      if (a.errorType) errorCounts[a.errorType] += 1;

      // Spaced repetition: a pass doubles the gap (1, 2, 4 ... 30
      // days). A fail resets it to 1 day.
      const prevInterval = Number(prev.intervalDays ?? 0);
      const passed = score >= PASS_SCORE;
      const intervalDays = passed ?
        Math.min(MAX_INTERVAL_DAYS, Math.max(1, prevInterval * 2)) :
        1;

      const status = computeStatus(masteryRounded, attempts, recent);

      tx.set(conceptRef, {
        name: typeof prev.name === "string" && prev.name ? prev.name : name,
        mastery: masteryRounded,
        attempts,
        recent,
        status,
        errorCounts,
        intervalDays,
        nextReviewAtMs: now + intervalDays * DAY_MS,
        lastScore: score,
        lastSeenMs: now,
        firstSeenMs: Number(prev.firstSeenMs ?? now),
        lastNoteId: a.noteId,
        lastSourceFileName: a.sourceFileName,
      }, {merge: true});

      tx.set(attemptRef, {
        conceptId,
        conceptName: name,
        noteId: a.noteId,
        source: a.source,
        questionType: a.questionType,
        questionId: a.questionId,
        score,
        errorType: a.errorType,
        createdAtMs: now,
        createdAt: FieldValue.serverTimestamp(),
      });

      return {
        conceptId,
        conceptName: typeof prev.name === "string" && prev.name ?
          prev.name : name,
        status,
        mastery: masteryRounded,
      };
    });
  } catch (e) {
    console.error("recordAttempt failed - analytics data lost", e);
    return null;
  }
}

/**
 * Names of the student's most recently seen concepts. Passed to the
 * grader so it REUSES an existing name instead of inventing a new
 * spelling of the same concept (which would split its mastery in two).
 */
export async function getExistingConceptNames(
  uid: string,
  limit = 40,
): Promise<string[]> {
  try {
    const snap = await getFirestore()
      .collection("users").doc(uid)
      .collection("concepts")
      .orderBy("lastSeenMs", "desc")
      .limit(limit)
      .get();
    return snap.docs
      .map((d) => String(d.data().name ?? ""))
      .filter((n) => n.length > 0);
  } catch (e) {
    console.error("getExistingConceptNames failed", e);
    return [];
  }
}