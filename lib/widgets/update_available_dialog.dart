import 'dart:math';

import 'package:flutter/material.dart';

import 'kepler_logo.dart';

/// "A new version of Kepler is ready" pop-up. Returns true when the student
/// taps Update, false when they choose Later (not offered when [forced]).
Future<bool> showUpdateAvailableDialog(
    BuildContext context, {
      String name = '',
      bool forced = false,
    }) async {
  final result = await showGeneralDialog<bool>(
    context: context,
    barrierDismissible: !forced,
    barrierLabel: 'Update available',
    barrierColor: Colors.black.withValues(alpha: 0.55),
    transitionDuration: const Duration(milliseconds: 320),
    pageBuilder: (_, __, ___) =>
        _UpdateDialog(name: name, forced: forced),
    transitionBuilder: (_, anim, __, child) {
      final curved = CurvedAnimation(parent: anim, curve: Curves.easeOutBack);
      return FadeTransition(
        opacity: CurvedAnimation(parent: anim, curve: Curves.easeOut),
        child: ScaleTransition(scale: Tween(begin: 0.88, end: 1.0).animate(curved),
            child: child),
      );
    },
  );
  return result ?? false;
}

class _UpdateDialog extends StatelessWidget {
  final String name;
  final bool forced;
  const _UpdateDialog({required this.name, required this.forced});

  static const _indigo = Color(0xFF4F46E5);
  static const _violet = Color(0xFF7C6FF0);
  static const _deepIndigo = Color(0xFF312E81);

  /// Rotating wording so it never reads like the same nag twice.
  (String, String) _copy() {
    final n = name.isEmpty ? '' : '$name, ';
    final options = <(String, String)>[
      (
      '${n}a faster Kepler is waiting',
      'We polished the app so your notes, quizzes and tutor run smoother. '
          'The update takes under a minute and you pick up exactly where '
          'you left off.'
      ),
      (
      'Your study app just got better',
      'New speed-ups and fixes are ready for you. Update now and keep your '
          'momentum going.'
      ),
      (
      "${n}don't study on yesterday's version",
      'A fresh update is live with improvements you will feel straight '
          'away. Tap update and get back to it.'
      ),
    ];
    return options[Random().nextInt(options.length)];
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final card = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final text = isDark ? Colors.white : const Color(0xFF111827);
    final sub = isDark ? Colors.grey.shade400 : Colors.grey.shade700;
    final copy = _copy();

    return PopScope(
      canPop: !forced,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            constraints: const BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              color: card,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: _indigo.withValues(alpha: 0.35),
                  blurRadius: 40,
                  offset: const Offset(0, 16),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _hero(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 22, 24, 8),
                    child: Column(
                      children: [
                        Text(
                          copy.$1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 21,
                            height: 1.2,
                            fontWeight: FontWeight.w800,
                            color: text,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          copy.$2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, height: 1.5, color: sub),
                        ),
                        const SizedBox(height: 18),
                        _benefit(Icons.bolt_rounded, 'Smoother and faster',
                            text, sub),
                        _benefit(Icons.build_circle_outlined,
                            'Fixes and improvements', text, sub),
                        _benefit(Icons.lock_outline_rounded,
                            'Your notes stay exactly as they are', text, sub),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 14, 24, 14),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () => Navigator.pop(context, true),
                            icon: const Icon(Icons.system_update_rounded,
                                size: 20),
                            label: const Text(
                              'Update now',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _indigo,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              padding:
                              const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                        ),
                        if (!forced) ...[
                          const SizedBox(height: 4),
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: Text(
                              'Maybe later',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: sub),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _hero() {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [_deepIndigo, _indigo, _violet],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Soft rings behind the logo.
          for (final d in const [150.0, 110.0])
            Container(
              width: d,
              height: d,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: d > 120 ? 0.07 : 0.10),
              ),
            ),
          Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: 0.18),
              border: Border.all(
                  color: Colors.white.withValues(alpha: 0.5), width: 1.5),
            ),
            alignment: Alignment.center,
            child: const KeplerLogo(size: 46, color: Colors.white),
          ),
          Positioned(
            right: 16,
            top: 14,
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'NEW VERSION',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.5,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _benefit(IconData icon, String label, Color text, Color sub) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: _indigo.withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(icon, size: 18, color: _indigo),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(label,
                style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600,
                    color: text)),
          ),
        ],
      ),
    );
  }
}