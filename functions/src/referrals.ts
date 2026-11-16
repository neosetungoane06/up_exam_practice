// functions/src/referrals.ts
//
// Referral system: unique codes, attribution, and Premium rewards.
//
// Collections used:
//   users/{uid}
//     - referralCode          (string)
//     - referralCount         (number)
//     - referredBy            (string | null)
//     - referralRewardGranted (boolean)
//
//   referral_codes/{code}     { uid, createdAt }
//   referrals/{referralId}    { referrerId, refereeId, refereeEmail, createdAt }

import { onCall, HttpsError } from "firebase-functions/https";
import { defineSecret } from "firebase-functions/params";
import { onSchedule } from "firebase-functions/scheduler";
import * as admin from "firebase-admin";

const REVENUECAT_SECRET_KEY = defineSecret("REVENUECAT_SECRET_KEY");

const PREMIUM_ENTITLEMENT_ID = "Kepler Premium";
const REFERRAL_THRESHOLD = 12;
const REWARD_DURATION_MS = 30 * 24 * 60 * 60 * 1000; // 30 days

// Unambiguous alphabet — no 0/O/1/I/L to avoid typing mistakes.
const CODE_ALPHABET = "ABCDEFGHJKMNPQRSTUVWXYZ23456789";
const CODE_LENGTH = 6;
const CODE_PREFIX = "KEP";

function generateCode(): string {
  let out = CODE_PREFIX;
  for (let i = 0; i < CODE_LENGTH; i++) {
    out += CODE_ALPHABET[Math.floor(Math.random() * CODE_ALPHABET.length)];
  }
  return out;
}

/**
 * Reserves a fresh unique code and links it to `uid` in referral_codes.
 * Returns the code, or throws if 5 collisions in a row (essentially
 * impossible, but we handle it cleanly).
 */
async function reserveCode(
  db: admin.firestore.Firestore,
  uid: string
): Promise<string> {
  for (let attempt = 0; attempt < 5; attempt++) {
    const code = generateCode();
    try {
      await db.collection("referral_codes").doc(code).create({
        uid,
        createdAt: admin.firestore.FieldValue.serverTimestamp(),
      });
      return code;
    } catch (e) {
      // gRPC status 6 = ALREADY_EXISTS. Anything else is a real error.
      if ((e as { code?: number }).code === 6) continue;
      throw e;
    }
  }
  throw new HttpsError(
    "internal",
    "Could not generate a referral code. Please try again."
  );
}

/**
 * Idempotent. Ensures the signed-in user has a referralCode and
 * returns it. Safe to call on every open of the referral screen.
 */
export const ensureReferralCode = onCall(async (request) => {
  if (!request.auth) {
    throw new HttpsError("unauthenticated", "Please sign in first.");
  }
  const uid = request.auth.uid;
  const db = admin.firestore();
  const userRef = db.collection("users").doc(uid);

  const userDoc = await userRef.get();
  if (!userDoc.exists) {
    throw new HttpsError("not-found", "Your user profile was not found.");
  }

  const existing = userDoc.data()?.referralCode;
  if (typeof existing === "string" && existing.length > 0) {
    return { referralCode: existing };
  }

  const newCode = await reserveCode(db, uid);
  await userRef.update({ referralCode: newCode });
  return { referralCode: newCode };
});

/**
 * Applies a referral code to the signed-in user. Called once, right
 * after signup. Rejects self-referral, double-referral, and codes that
 * point to deleted users.
 */
export const applyReferralCode = onCall(
  { secrets: [REVENUECAT_SECRET_KEY] },
  async (request) => {
    if (!request.auth) {
      throw new HttpsError("unauthenticated", "Please sign in first.");
    }

    const data = request.data as { refCode?: string } | undefined;
    const rawCode = data?.refCode;
    if (typeof rawCode !== "string" || rawCode.trim().length === 0) {
      throw new HttpsError("invalid-argument", "A referral code is required.");
    }

    const code = rawCode.trim().toUpperCase();
    const newUid = request.auth.uid;
    const newEmail = (request.auth.token.email || "").toLowerCase();

    const db = admin.firestore();
    const newUserRef = db.collection("users").doc(newUid);

    // Resolve the code to its owner.
    const codeDoc = await db.collection("referral_codes").doc(code).get();
    if (!codeDoc.exists) {
      throw new HttpsError("not-found", "That referral code is not valid.");
    }
    const referrerId = codeDoc.data()?.uid as string | undefined;
    if (!referrerId) {
      throw new HttpsError("not-found", "That referral code is not valid.");
    }
    if (referrerId === newUid) {
      throw new HttpsError(
        "invalid-argument",
        "You cannot use your own referral code."
      );
    }

    // Transaction: attribute the referral, create the log entry, bump
    // the count, and grant Premium if the threshold is reached.
    let rewardJustGranted = false;
    let newCount = 0;

    await db.runTransaction(async (tx) => {
      const referrerRef = db.collection("users").doc(referrerId);
      const referrerSnap = await tx.get(referrerRef);
      if (!referrerSnap.exists) {
        throw new HttpsError(
          "not-found",
          "The person who referred you is no longer on Kepler."
        );
      }
      const referrer = referrerSnap.data() || {};

      const newUserSnap = await tx.get(newUserRef);
      if (!newUserSnap.exists) {
        throw new HttpsError("not-found", "Your user profile was not found.");
      }
      const newUser = newUserSnap.data() || {};

      if (newUser.referredBy) {
        throw new HttpsError(
          "already-exists",
          "You have already been referred."
        );
      }
      if (
        newEmail.length > 0 &&
        String(referrer.email || "").toLowerCase() === newEmail
      ) {
        throw new HttpsError(
          "invalid-argument",
          "You cannot use your own referral code."
        );
      }

      // 1. Mark the new user as referred.
      tx.update(newUserRef, { referredBy: referrerId });

      // 2. Log the referral.
      const referralRef = db.collection("referrals").doc();
      tx.set(referralRef, {
        referrerId,
        refereeId: newUid,
        refereeEmail: newEmail,
        createdAt: admin.firestore.FieldValue.serverTimestamp(),
      });

      // 3. Increment the referrer's count atomically.
      const nextCount = (referrer.referralCount || 0) + 1;
      newCount = nextCount;

      const referrerUpdate: Record<string, unknown> = {
        referralCount: admin.firestore.FieldValue.increment(1),
      };
      if (
        nextCount >= REFERRAL_THRESHOLD &&
        referrer.referralRewardGranted !== true
      ) {
        referrerUpdate.referralRewardGranted = true;
        rewardJustGranted = true;
      }
      tx.update(referrerRef, referrerUpdate);
    });

    // 4. Grant Premium outside the transaction (external API call).
    if (rewardJustGranted) {
      try {
        await grantPremiumPromotional(
          referrerId,
          REVENUECAT_SECRET_KEY.value()
        );
      } catch (e) {
        // Roll the flag back so the scheduled reconciler retries.
        console.error(
          `applyReferralCode: Premium grant failed for ${referrerId}`,
          e
        );
        await admin
          .firestore()
          .collection("users")
          .doc(referrerId)
          .update({ referralRewardGranted: false });
      }
    }

    return {
      ok: true,
      referredBy: referrerId,
      referrerCount: newCount,
      rewardGranted: rewardJustGranted,
    };
  }
);

/**
 * Grants a 30-day Premium promotional entitlement on RevenueCat.
 * The app will see it on its next PlanService.refresh().
 */
async function grantPremiumPromotional(
  uid: string,
  secretKey: string
): Promise<unknown> {
  const url =
    `https://api.revenuecat.com/v1/subscribers/` +
    `${encodeURIComponent(uid)}/entitlements/` +
    `${encodeURIComponent(PREMIUM_ENTITLEMENT_ID)}/promotional`;

  const now = Date.now();
  const res = await fetch(url, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${secretKey}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      start_time_ms: now,
      end_time_ms: now + REWARD_DURATION_MS,
    }),
  });

  if (!res.ok) {
    const text = await res.text();
    throw new Error(
      `RevenueCat promotional grant failed: ${res.status} ${text}`
    );
  }
  return res.json();
}

/**
 * Safety net. Every 6 hours, finds any user who has hit the referral
 * threshold but never received the reward (because the grant failed
 * during applyReferralCode) and tries again.
 */
export const reconcileReferralRewards = onSchedule(
  { schedule: "every 6 hours", secrets: [REVENUECAT_SECRET_KEY] },
  async () => {
    const db = admin.firestore();
    const pending = await db
      .collection("users")
      .where("referralCount", ">=", REFERRAL_THRESHOLD)
      .where("referralRewardGranted", "==", false)
      .limit(50)
      .get();

    for (const doc of pending.docs) {
      try {
        await grantPremiumPromotional(doc.id, REVENUECAT_SECRET_KEY.value());
        await doc.ref.update({ referralRewardGranted: true });
        console.log(`Granted referral reward to ${doc.id}`);
      } catch (e) {
        console.error(`Reward retry failed for ${doc.id}`, e);
      }
    }
  }
);