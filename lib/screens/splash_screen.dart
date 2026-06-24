import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Recap',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E40AF),
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 40),

                const Text(
                  '🎓',
                  style: TextStyle(fontSize: 90),
                ),

                const SizedBox(height: 30),

                const Text(
                  'Welcome to Recap 👋',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0F172A),
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Study Smarter. Practice Faster.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF475569),
                  ),
                ),

                const SizedBox(height: 50),

                const CircularProgressIndicator(
                  color: Color(0xFF1E40AF),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}