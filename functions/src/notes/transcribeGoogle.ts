import {getStorage} from "firebase-admin/storage";
import {logger} from "firebase-functions";
import {SpeechClient} from "@google-cloud/speech";
import {JobError} from "./jobErrors";
import type {TranscriptSegment} from "./buildMaterial";

/**
 * Speech-to-text with Google Cloud Speech-to-Text, used for recordings made
 * in a web browser (Opus audio in a .webm file). The audio is read straight
 * from Cloud Storage by Google, and the long-running call is polled until it
 * finishes, so recordings of up to 1 h 30 min work.
 */

const FRIENDLY =
  "The recording couldn't be transcribed. Please try recording again.";

/** Google's time format: seconds may be a number, a string or a Long. */
interface GoogleDuration {
  seconds?: number | string | {toString(): string} | null;
  nanos?: number | null;
}

/**
 * Turns Google's duration into seconds.
 * @param {GoogleDuration | null | undefined} d - Google's duration.
 * @return {number} Seconds as a number.
 */
function toSeconds(d: GoogleDuration | null | undefined): number {
  if (!d) return 0;
  return Number(String(d.seconds ?? 0)) + (Number(d.nanos ?? 0) / 1e9);
}

/**
 * Transcribes a .webm recording that is already in Cloud Storage.
 *
 * @param {object} params - What to transcribe.
 * @param {string} params.storagePath - Path of the audio file in the bucket.
 * @param {number | null} params.durationSeconds - Length the app reported.
 * @param {Function} params.onTick - Called every 30s with seconds elapsed.
 * @return {Promise<TranscriptSegment[]>} Speech segments in time order.
 */
export async function transcribeWithGoogle(params: {
  storagePath: string;
  durationSeconds: number | null;
  onTick: (elapsedSeconds: number) => void;
}): Promise<TranscriptSegment[]> {
  const bucket = getStorage().bucket().name;
  const client = new SpeechClient();
  const startedAt = Date.now();
  const ticker = setInterval(() => {
    params.onTick(Math.round((Date.now() - startedAt) / 1000));
  }, 30000);

  try {
    const [operation] = await client.longRunningRecognize({
      config: {
        // The sample rate is read from the WebM file itself.
        encoding: "WEBM_OPUS",
        languageCode: "en-ZA",
        enableAutomaticPunctuation: true,
        enableWordTimeOffsets: true,
      },
      audio: {uri: `gs://${bucket}/${params.storagePath}`},
    });

    const [response] = await operation.promise();
    const segments: TranscriptSegment[] = [];

    for (const result of response.results ?? []) {
      const best = result.alternatives?.[0];
      const text = (best?.transcript ?? "").trim();
      if (!best || !text) continue;

      const words = best.words ?? [];
      let start = 0;
      let end = 0;
      if (words.length > 0) {
        start = toSeconds(words[0].startTime as GoogleDuration);
        end = toSeconds(
          words[words.length - 1].endTime as GoogleDuration
        );
      } else {
        end = toSeconds(result.resultEndTime as GoogleDuration);
        start = Math.max(0, end - 5);
      }
      segments.push({startSeconds: start, endSeconds: end, text});
    }

    if (segments.length === 0) {
      throw new JobError("We couldn't hear any speech in that recording.");
    }

    segments.sort((a, b) => a.startSeconds - b.startSeconds);
    return segments;
  } catch (e) {
    if (e instanceof JobError) throw e;
    logger.error("Google speech-to-text failed", e);
    throw new JobError(FRIENDLY);
  } finally {
    clearInterval(ticker);
    await client.close().catch(() => undefined);
  }
}