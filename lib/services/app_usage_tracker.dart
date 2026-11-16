import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// Tracks how long a student really spends in Kepler, so notifications can
/// be personal ("you spent 14 minutes on Biology last time").
///
/// Writes to users/{uid}:
///   sessionCount, totalSeconds, lastSessionSeconds, lastSessionStartAt,
///   firstOpenAt, lastSeenAt, and (via recordUpload) uploadsTotal,
///   lastUploadAt, lastUploadTitle.
///
/// Time only counts while the app is in the foreground. A new session starts
/// when the student comes back after 30+ minutes away.
///
/// Call [start] after sign-in (next to NotificationService.initialize) and
/// [stop] on sign-out.
class AppUsageTracker with WidgetsBindingObserver {
  AppUsageTracker._();
  static final AppUsageTracker instance = AppUsageTracker._();

  static const _newSessionAfter = Duration(minutes: 30);
  static const _flushEvery = Duration(seconds: 60);

  Timer? _timer;
  bool _running = false;
  DateTime? _lastTick;
  DateTime? _lastPaused;
  int _sessionSeconds = 0;

  DocumentReference<Map<String, dynamic>>? get _doc {
    final u = FirebaseAuth.instance.currentUser;
    if (u == null) return null;
    return FirebaseFirestore.instance.collection('users').doc(u.uid);
  }

  Future<void> start() async {
    if (_running) return;
    _running = true;
    WidgetsBinding.instance.addObserver(this);
    unawaited(_markFirstOpen());
    _resumed();
  }

  Future<void> stop() async {
    if (!_running) return;
    await _flush();
    _timer?.cancel();
    _timer = null;
    WidgetsBinding.instance.removeObserver(this);
    _running = false;
    _lastTick = null;
    _lastPaused = null;
  }

  /// Call after an upload succeeds, e.g. recordUpload(title: note.title).
  static Future<void> recordUpload({String? title}) async {
    final ref = instance._doc;
    if (ref == null) return;
    // "Biology Lecture 3.pdf" -> "Biology Lecture 3"
    var clean = (title ?? '')
        .trim()
        .replaceFirst(RegExp(r'\.(pdf|docx|pptx|png|jpe?g)$',
        caseSensitive: false), '');
    if (clean.length > 60) clean = clean.substring(0, 60);
    try {
      await ref.set({
        'uploadsTotal': FieldValue.increment(1),
        'lastUploadAt': FieldValue.serverTimestamp(),
        if (clean.isNotEmpty) 'lastUploadTitle': clean,
      }, SetOptions(merge: true));
    } catch (e) {
      debugPrint('[Usage] recordUpload failed: $e');
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _resumed();
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
      case AppLifecycleState.detached:
        _paused();
        break;
      case AppLifecycleState.inactive:
        break;
    }
  }

  Future<void> _markFirstOpen() async {
    final ref = _doc;
    if (ref == null) return;
    try {
      final snap = await ref.get();
      if (snap.data()?['firstOpenAt'] == null) {
        await ref.set(
            {'firstOpenAt': FieldValue.serverTimestamp()},
            SetOptions(merge: true));
      }
    } catch (_) {}
  }

  void _resumed() {
    final ref = _doc;
    if (ref == null) return;
    final now = DateTime.now();

    final newSession =
        _lastPaused == null || now.difference(_lastPaused!) > _newSessionAfter;
    if (newSession) {
      _sessionSeconds = 0;
      ref.set({
        'sessionCount': FieldValue.increment(1),
        'lastSessionStartAt': FieldValue.serverTimestamp(),
        'lastSessionSeconds': 0,
        'lastSeenAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true)).catchError((_) {});
    }

    _lastTick = now;
    _timer?.cancel();
    _timer = Timer.periodic(_flushEvery, (_) => _flush());
  }

  void _paused() {
    _flush();
    _timer?.cancel();
    _timer = null;
    _lastPaused = DateTime.now();
    _lastTick = null;
  }

  Future<void> _flush() async {
    final ref = _doc;
    final last = _lastTick;
    if (ref == null || last == null) return;

    final now = DateTime.now();
    // Cap so a sleeping device never inflates the total.
    final delta = now.difference(last).inSeconds.clamp(0, 120);
    _lastTick = now;
    if (delta <= 0) return;

    _sessionSeconds += delta;
    try {
      await ref.set({
        'totalSeconds': FieldValue.increment(delta),
        'lastSessionSeconds': _sessionSeconds,
        'lastSeenAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } catch (_) {}
  }
}