import 'package:flutter/material.dart';

/// Switches and sizes for the web experience. Everything tweakable lives here.
class WebConfig {
  WebConfig._();

  /// Flip to true once Sign in with Apple is configured in Apple Developer
  /// and in Firebase Console (Authentication > Sign-in method > Apple).
  /// While false, tapping "Continue with Apple" shows the offline notice.
  static const bool appleSignInEnabled = false;

  /// At or above this width the sidebar is docked beside the content.
  /// Below it the sidebar slides over the content.
  static const double wideBreakpoint = 900;
  static const double sidebarWidth = 250;
  static const double contentMaxWidth = 1080;
}

class WebPalette {
  static const Color indigo = Color(0xFF4F46E5);
  static const Color violet = Color(0xFF7C6FF0);
  static const Color deepIndigo = Color(0xFF312E81);
  static const Color brand = Color(0xFF234E84);

  static const LinearGradient gradient = LinearGradient(
    colors: [deepIndigo, indigo, violet],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  final bool isDark;
  final Color bg;
  final Color card;
  final Color text;
  final Color subtitle;
  final Color line;

  const WebPalette._({
    required this.isDark,
    required this.bg,
    required this.card,
    required this.text,
    required this.subtitle,
    required this.line,
  });

  factory WebPalette.of(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return WebPalette._(
      isDark: dark,
      bg: dark ? const Color(0xFF121212) : const Color(0xFFF7F9FC),
      card: dark ? const Color(0xFF1E1E1E) : Colors.white,
      text: dark ? Colors.white : const Color(0xFF0F172A),
      subtitle: dark ? Colors.grey.shade400 : const Color(0xFF64748B),
      line: dark
          ? Colors.white.withValues(alpha: 0.10)
          : const Color(0xFFE2E8F0),
    );
  }
}