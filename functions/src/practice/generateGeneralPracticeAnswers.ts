import {onCall, HttpsError} from "firebase-functions/https";
import {defineSecret} from "firebase-functions/params";
import {getFirestore} from "firebase-admin/firestore";
import {callDeepSeekChat} from "../providers/deepseekChat";
import {parseModelJson} from "../notes/jsonUtils";

const deepSeekApiKey = defineSecret("DEEPSEEK_API_KEY");

interface GradeRequest {
  sessionId: string;
  questionId: string;
  answer: string;
}

/**
 * Marks one General Notes practice answer. The question's true
 * answer key lives server-side under
 * users/{uid}/general_practice_sessions/{sessionId}/questions/{qid},
 * written by generateGeneralPracticeQuestions - so this function
 * never trusts the client for what's correct.
 */
export const gradeGeneralPracticeAnswer = onCall(
  {
    secrets: [deepSeekApiKey],
    enforceAppCheck: true,
    timeoutSeconds: 45,
  },
  async (request) => {
    if (!request.auth) {
      throw new HttpsError("unauthenticated", "You must be signed in.");
    }

    const uid = request.auth.uid;
    const data = request.data as GradeRequest;

    if (!data.sessionId || !data.questionId || !data.answer?.trim()) {
      throw new HttpsError(
        "invalid-argument",
        "sessionId, questionId and answer are required."
      );
    }

    const db = getFirestore();
    const qRef = db
      .collection("users").doc(uid)
      .collection("general_practice_sessions").doc(data.sessionId)
      .collection("questions").doc(data.questionId);

    const qSnap = await qRef.get();
    if (!qSnap.exists) {
      throw new HttpsError(
        "not-found",
        "That question is no longer available. Please start a fresh round."
      );
    }

    const q = qSnap.data()!;
    const promptText = String(q.prompt ?? "");
    const qType = String(q.type ?? "theory");
    const modelAnswer = String(q.modelAnswer ?? "");

    const gradingPrompt =
      qType === "mcq"
        ? buildMcqGradingPrompt(promptText, modelAnswer, data.answer)
        : buildWrittenGradingPrompt(
            promptText,
            modelAnswer,
            data.answer,
            qType
          );

    const raw = await callDeepSeekChat({
      apiKey: deepSeekApiKey.value(),
      system: "You are a fair exam marker. Output only valid JSON.",
      user: gradingPrompt,
      model: "deepseek-v4-pro",
      temperature: 0.2,
    });

    const parsed = parseModelJson(raw) as {
      correct?: boolean;
      score?: number;
      feedback?: string;
    };

    const score =
      typeof parsed.score === "number"
        ? Math.max(0, Math.min(100, Math.round(parsed.score)))
        : 0;

    return {
      correct: !!parsed.correct,
      score,
      feedback:
        String(parsed.feedback ?? "").trim() ||
        (score >= 70 ? "Nice." : "Worth another look."),
      modelAnswer,
    };
  }
);

function buildMcqGradingPrompt(
  question: string,
  correctAnswer: string,
  studentAnswer: string
): string {
  return `
The student chose one option for this multiple-choice question.

QUESTION: ${question}
CORRECT OPTION: ${correctAnswer}
STUDENT CHOSE: ${studentAnswer}

Return ONLY JSON with this exact shape:
{
  "correct": true or false,
  "score": 100 if correct else 0,
  "feedback": "one short sentence"
}
`.trim();
}

function buildWrittenGradingPrompt(
  question: string,
  modelAnswer: string,
  studentAnswer: string,
  type: string
): string {
  const subject =
    type === "calculation"
      ? "mathematics. Reward correct method even if a final arithmetic " +
        "slip happens; penalise a wrong method more than a wrong final " +
        "number."
      : "a written subject. Reward correct ideas expressed in the " +
        "student's own words.";

  return `
Mark this exam answer. The subject is ${subject}

QUESTION: ${question}

EXPECTED ANSWER (for reference - the student never saw this):
${modelAnswer}

STUDENT'S ANSWER:
${studentAnswer}

Return ONLY JSON with this exact shape:
{
  "correct": true or false,
  "score": an integer from 0 to 100,
  "feedback": "2-3 sentences: what was right, what was missing, what a full-marks answer would add."
}
`.trim();
}