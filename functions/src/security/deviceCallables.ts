import {onCall, HttpsError} from "firebase-functions/https";
import {cleanDeviceId, deviceKeyOf, removeDevice} from "./devices";

/**
 * Frees one of the signed-in student's device slots. The app calls it
 * when the student signs out (for that device), and from the "too many
 * devices" screen when they remove another device from the list.
 * Input: { deviceKey } (from the list) or { deviceId } (this device).
 */
export const removeMyDevice = onCall(
  {enforceAppCheck: true},
  async (request) => {
    if (!request.auth) {
      throw new HttpsError("unauthenticated", "Please sign in first.");
    }

    const fromId = cleanDeviceId(request.data?.deviceId);
    const rawKey = String(request.data?.deviceKey ?? "");
    const key = fromId ?
      deviceKeyOf(fromId) :
      /^[a-f0-9]{24}$/.test(rawKey) ? rawKey : null;

    if (!key) {
      throw new HttpsError("invalid-argument", "Which device?");
    }

    await removeDevice(request.auth.uid, key);
    return {ok: true};
  }
);