// lib/services/analytics_service.dart
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

/// Central analytics wrapper. Every screen calls this - never call
/// FirebaseAnalytics directly elsewhere, so event names stay consistent.
class AnalyticsService {
  AnalyticsService._();
  static final AnalyticsService instance = AnalyticsService._();

  final FirebaseAnalytics _fa = FirebaseAnalytics.instance;

  // ---------------------------------------------------------------
  // Auth / user properties
  // ---------------------------------------------------------------

  /// Call once right after sign-in (and once on app start if already
  /// signed in). Sets the user ID and the "plan" property so every
  /// event can be broken down by free / standard / premium.
  Future<void> setUser({
    required String uid,
    required String planId, // 'free' | 'standard' | 'premium'
    String? email,
  }) async {
    await _fa.setUserId(id: uid);
    await _fa.setUserProperty(name: 'plan', value: planId);
    if (email != null) {
      await _fa.setUserProperty(name: 'email_domain', value: email.split('@').last);
    }
  }

  Future<void> clearUser() => _fa.setUserId(id: null);

  Future<void> setUserPlan(String planId) =>
      _fa.setUserProperty(name: 'plan', value: planId);

  // ---------------------------------------------------------------
  // Screens
  // ---------------------------------------------------------------

  /// Call from every screen's initState(). GA4 uses this to build
  /// screen paths, time-in-screen, and exit screens.
  Future<void> screen(String name) => _fa.logScreenView(
    screenName: name,
    screenClass: name,
  );

  // ---------------------------------------------------------------
  // Onboarding / acquisition
  // ---------------------------------------------------------------

  Future<void> onboardingStarted() =>
      _fa.logEvent(name: 'onboarding_started');

  Future<void> onboardingPageViewed(int page, String label) =>
      _fa.logEvent(name: 'onboarding_page_viewed', parameters: {
        'page_index': page,
        'page_label': label,
      });

  Future<void> onboardingSkipped(int atPage) =>
      _fa.logEvent(name: 'onboarding_skipped', parameters: {'at_page': atPage});

  Future<void> onboardingCompleted({required int pagesViewed}) =>
      _fa.logEvent(name: 'onboarding_completed', parameters: {
        'pages_viewed': pagesViewed,
      });

  /// Call this ONLY when a brand-new account is created (not on
  /// every sign-in). This is your real signup conversion metric.
  Future<void> accountCreated({required String method}) =>
      _fa.logEvent(name: 'sign_up', parameters: {'method': method});

  // ---------------------------------------------------------------
  // Notes lifecycle
  // ---------------------------------------------------------------

  Future<void> notesCreationStarted({required String sourceType}) =>
      _fa.logEvent(name: 'notes_create_started', parameters: {
        'source_type': sourceType, // recording, file, photo, text, link
      });

  Future<void> notesCreationSucceeded({
    required String sourceType,
    required String noteId,
    required int parts,
  }) => _fa.logEvent(name: 'notes_create_success', parameters: {
    'source_type': sourceType,
    'note_id': noteId,
    'parts': parts,
  });

  Future<void> notesCreationFailed({
    required String sourceType,
    required String reason,
  }) => _fa.logEvent(name: 'notes_create_failed', parameters: {
    'source_type': sourceType,
    'reason': reason,
  });

  // ---------------------------------------------------------------
  // Reader (study time + feature usage)
  // ---------------------------------------------------------------

  /// Call from reader initState(). The reader will log `reader_close`
  /// with duration when it's disposed.
  Future<void> readerOpened({required String noteId}) =>
      _fa.logEvent(name: 'reader_open', parameters: {'note_id': noteId});

  Future<void> readerTabChanged({
    required String tabName, // notes, ask_tutor, quiz_practice, flashcards
    required int secondsOnReader,
  }) => _fa.logEvent(name: 'reader_tab_changed', parameters: {
    'tab': tabName,
    'reader_seconds': secondsOnReader,
  });

  Future<void> readerClosed({
    required String noteId,
    required int seconds,
    required int partsRead,
  }) => _fa.logEvent(name: 'reader_close', parameters: {
    'note_id': noteId,
    'duration_seconds': seconds,
    'parts_read': partsRead,
  });

  Future<void> partContinued({required int newPartNumber}) =>
      _fa.logEvent(name: 'reader_part_continued', parameters: {
        'part_number': newPartNumber,
      });

  // ---------------------------------------------------------------
  // Feature usage - one event, one parameter for all features
  // ---------------------------------------------------------------

  Future<void> featureUsed({required String feature}) =>
      _fa.logEvent(name: 'feature_used', parameters: {'feature': feature});
  // features: practice, review, quiz, flashcards, ask_tutor, active_recall, recording, folder, search

  Future<void> practiceStarted({required String noteId}) =>
      _fa.logEvent(name: 'practice_started', parameters: {'note_id': noteId});

  Future<void> practiceCompleted({
    required int questions,
    required int correct,
  }) => _fa.logEvent(name: 'practice_completed', parameters: {
    'questions': questions,
    'correct': correct,
  });

  // ---------------------------------------------------------------
  // Monetisation
  // ---------------------------------------------------------------

  Future<void> paywallViewed({required String sourceScreen}) =>
      _fa.logEvent(name: 'paywall_viewed', parameters: {
        'source_screen': sourceScreen,
      });

  Future<void> purchaseStarted({required String planId}) =>
      _fa.logEvent(name: 'begin_checkout', parameters: {'plan': planId});

  Future<void> purchaseCompleted({
    required String planId,
    required double value,
    required String currency,
  }) => _fa.logEvent(name: 'purchase', parameters: {
    'plan': planId,
    'value': value,
    'currency': currency,
  });
}