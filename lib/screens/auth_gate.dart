import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/firestore_service.dart';
import 'daily_home_screen.dart';
import 'login_screen.dart';
import 'verify_email_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  Future<Widget> _getScreen(User user) async {

    // Refresh user from Firebase
    await user.reload();

    final refreshedUser = FirebaseAuth.instance.currentUser;

    if (refreshedUser == null) {
      return const LoginScreen();
    }

    // Force email verification
    if (!refreshedUser.emailVerified) {
      await FirebaseAuth.instance.signOut();
      return const VerifyEmailScreen();
    }

    Map<String, dynamic>? data;

    try {
      data = await FirestoreService().getUser(refreshedUser.uid);
    } catch (e) {
      print("FIRESTORE ERROR:");
      print(e);
      rethrow;
    }

    final preferredName =
        data?['preferredName'] ?? "Student";

    return DailyHomeScreen(
      preferredName: preferredName,
    );
  }

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),

      builder: (context, authSnapshot) {

        if (authSnapshot.connectionState ==
            ConnectionState.waiting) {

          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (!authSnapshot.hasData) {
          return const LoginScreen();
        }

        return FutureBuilder<Widget>(
          future: _getScreen(authSnapshot.data!),

          builder: (context, snapshot) {

            if (snapshot.connectionState ==
                ConnectionState.waiting) {

              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (snapshot.hasError) {
              debugPrint("AUTH GATE ERROR: ${snapshot.error}");

              return Scaffold(
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      "Something went wrong while loading your account.\n\n"
                          "${snapshot.error}",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            }

            return snapshot.data ??
                const LoginScreen();
          },
        );
      },
    );
  }
}