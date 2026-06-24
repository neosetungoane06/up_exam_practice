import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const UpExamHubApp());
}

class UpExamHubApp extends StatelessWidget {
  const UpExamHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UP Exam Hub',
      debugShowCheckedModeBanner: false,
      // No named routes needed: SplashScreen pushes HomeScreen directly
      // via Navigator.pushReplacement. Adding a '/home' route alongside
      // that would create two competing navigation paths for the same
      // screen — unnecessary complexity this early.
      home: const SplashScreen(),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A),
        ),
      ),
    );
  }
}