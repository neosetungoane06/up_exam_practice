import 'package:flutter/material.dart';
import 'screens/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );
  final themeProvider = ThemeProvider();
  await themeProvider.loadTheme();

  runApp(
    ChangeNotifierProvider(
      create: (_) => themeProvider,
      child: const UpExamHubApp(),
    ),
  );
}

class UpExamHubApp extends StatelessWidget {
  const UpExamHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'UP Exam Hub',
          debugShowCheckedModeBanner: false,

          home: const AuthGate(),

          themeMode: themeProvider.themeMode,

          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,

            scaffoldBackgroundColor: Colors.white,
            canvasColor: Colors.white,
            cardColor: Colors.white,

            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF1E3A8A),
              brightness: Brightness.light,
              surface: Colors.white,
            ),

            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.black),
              bodyMedium: TextStyle(color: Colors.black),
              bodySmall: TextStyle(color: Colors.black),
              titleLarge: TextStyle(color: Colors.black),
              titleMedium: TextStyle(color: Colors.black),
              titleSmall: TextStyle(color: Colors.black),
            ),

            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          ),

          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,

            scaffoldBackgroundColor: const Color(0xFF121212),
            canvasColor: const Color(0xFF121212),
            cardColor: const Color(0xFF121212),

            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF1E3A8A),
              brightness: Brightness.dark,
              surface: const Color(0xFF121212),
            ),

            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white),
              titleLarge: TextStyle(color: Colors.white),
              titleMedium: TextStyle(color: Colors.white),
              titleSmall: TextStyle(color: Colors.white),
            ),

            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF121212),
              foregroundColor: Colors.white,
            ),
          ),
        );
      },
    );
  }
}