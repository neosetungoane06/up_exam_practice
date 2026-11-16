import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Handles capturing a `?ref=XXXX` code from the URL, persisting it
/// across refreshes, and applying it once the student signs up.
///
/// The actual attribution, counting and rewards all happen in the
/// Cloud Functions — this class never touches referral data directly.
class ReferralService {
  ReferralService._();

  static const String _storageKey = 'pending_referral_code';

  /// The code currently waiting to be applied. Kept in memory so the
  /// synchronous main() can capture it before runApp, and persisted to
  /// SharedPreferences so a page refresh does not lose it.
  static String? _memory;

  /// Call from main() BEFORE runApp. Reads `?ref=` from the current URL
  /// and remembers it. On web this is the only place we look at the
  /// URL, so the code survives even if navigation rewrites the path.
  static void captureFromUrl() {
    if (!kIsWeb) return;
    try {
      final ref = Uri.base.queryParameters['ref'];
      if (ref != null && ref.trim().isNotEmpty) {
        _memory = ref.trim().toUpperCase();
      }
    } catch (e) {
      debugPrint('Referral capture failed: $e');
    }
  }

  /// Persists the in-memory code to disk so it survives a refresh.
  /// Fire-and-forget from main().
  static Future<void> persist() async {
    final code = _memory;
    if (code == null || code.isEmpty) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_storageKey, code);
    } catch (e) {
      debugPrint('Referral persist failed: $e');
    }
  }

  /// Attempts to apply any pending referral code for the signed-in
  /// user. Called once from the auth state listener. Safe to call
  /// multiple times — the Cloud Function rejects double-attribution.
  ///
  /// No-ops if there is no pending code. Clears the pending code on
  /// both success and failure so a broken code does not retry forever.
  static Future<void> tryApplyForCurrentUser() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    // Prefer the memory copy (fast path when URL still has it), then
    // fall back to whatever was persisted on a previous load.
    String? code = _memory;
    if (code == null || code.isEmpty) {
      try {
        final prefs = await SharedPreferences.getInstance();
        code = prefs.getString(_storageKey);
      } catch (e) {
        debugPrint('Referral read failed: $e');
      }
    }
    if (code == null || code.isEmpty) return;

    try {
      final callable =
      FirebaseFunctions.instance.httpsCallable('applyReferralCode');
      final result = await callable.call(<String, dynamic>{
        'refCode': code,
      });
      debugPrint('Referral applied: $code → $result');
    } on FirebaseFunctionsException catch (e) {
      // Expected errors: not-found (bad code), already-exists (already
      // referred), invalid-argument (self-referral). None of these
      // should bother the student — silently stop trying.
      debugPrint('Referral not applied (${e.code}): ${e.message}');
    } catch (e) {
      debugPrint('Referral apply failed: $e');
    } finally {
      // Always clear, so a broken code never retries forever.
      _memory = null;
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove(_storageKey);
      } catch (_) {}
    }
  }
}