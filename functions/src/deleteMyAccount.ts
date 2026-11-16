// ============================================================
// FILE: functions/src/deleteMyAccount.ts
//
// Permanently deletes ONE student and everything that belongs to them:
// Storage uploads, the whole users/<uid> tree, job applications,
// feedback, the login-attempt record, and finally the sign-in account.
//
// NOTE: this file must NOT call initializeApp(). index.ts does that.
// ============================================================

import {onCall, HttpsError} from "firebase-functions/https";
import {getAuth} from "firebase-admin/auth";
import {getFirestore, Query} from "firebase-admin/firestore";
import {getStorage} from "firebase-admin/storage";

// The student must have signed in within the last few minutes.
const RECENT_LOGIN_SECONDS = 5 * 60;

async function deleteQueryInBatches(query: Query): Promise<void> {
  for (;;) {
    const snap = await query.limit(400).get();
    if (snap.empty) return;
    const batch = getFirestore().batch();
    snap.docs.forEach((d) => batch.delete(d.ref));
    await batch.commit();
    if (snap.size < 400) return;
  }
}

/** Removes every trace of [uid]. Safe to run more than once. */
export async function purgeUser(uid: string): Promise<void> {
  const db = getFirestore();
  const bucket = getStorage().bucket();

  let email: string | null = null;
  try {
    email = (await getAuth().getUser(uid)).email ?? null;
  } catch {
    // Already gone from Auth - carry on and clean the data.
  }

  // 1) Files a generated note points to (before the note documents go).
  const notes = await db
    .collection("users")
    .doc(uid)
    .collection("generated_notes")
    .select("storagePath")
    .get();

  for (const doc of notes.docs) {
    const raw = doc.get("storagePath");
    if (typeof raw !== "string" || raw.trim() === "") continue;
    const path = raw.replace(/^gs:\/\/[^/]+\//, "");
    await bucket.file(path).delete({ignoreNotFound: true});
  }

  // 2) Everything the student uploaded, and their CVs.
  await bucket.deleteFiles({prefix: `user_uploads/${uid}/`, force: true});
  await bucket.deleteFiles({prefix: `job_applications/${uid}/`, force: true});

  // 3) Documents about the student that live outside their own folder.
  await deleteQueryInBatches(
    db.collection("job_applications").where("userId", "==", uid)
  );
  await deleteQueryInBatches(
    db.collection("feedback").where("userId", "==", uid)
  );

  if (email) {
    const attempts = db.collection("login_attempts");
    await attempts.doc(email).delete();
    await attempts.doc(email.toLowerCase()).delete();
  }

  // NOTE: safety_reports are deliberately NOT deleted (server-only safety
  // records you may need to keep). Delete them here if you decide to.

  // 4) The whole Firestore tree: users/<uid> and every subcollection.
  await db.recursiveDelete(db.collection("users").doc(uid));

  // 5) Last of all, the sign-in account.
  try {
    await getAuth().deleteUser(uid);
  } catch (e) {
    if ((e as {code?: string}).code !== "auth/user-not-found") throw e;
  }
}

export const deleteMyAccount = onCall(
  {
    region: "us-central1",
    timeoutSeconds: 540,
    memory: "512MiB",
  },
  async (request) => {
    if (!request.auth) {
      throw new HttpsError("unauthenticated", "Please sign in first.");
    }

    const uid = request.auth.uid;

    const authTime = request.auth.token.auth_time as number | undefined;
    const age = Math.floor(Date.now() / 1000) - (authTime ?? 0);
    if (!authTime || age > RECENT_LOGIN_SECONDS) {
      throw new HttpsError("failed-precondition", "requires-recent-login");
    }

    try {
      await purgeUser(uid);
    } catch (e) {
      console.error("deleteMyAccount failed for", uid, e);
      throw new HttpsError(
        "internal",
        "We could not finish deleting your account. Please try again."
      );
    }

    return {ok: true};
  }
);