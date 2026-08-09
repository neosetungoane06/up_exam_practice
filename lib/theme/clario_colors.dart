import 'package:flutter/material.dart';

class ClarioColors {
  const ClarioColors._();

  static Color background(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF121212)
          : Colors.white;

  static Color card(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF121212)
          : Colors.white;

  static Color text(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black;

  static Color subtitle(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black;

  // Brand colours never change
  static const Color blue = Color(0xFF2563EB);
  static const Color purple = Colors.deepPurple;
  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static const Color orange = Colors.orange;
}