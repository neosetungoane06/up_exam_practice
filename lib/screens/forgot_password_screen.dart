import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState
    extends State<ForgotPasswordScreen> {

  final TextEditingController emailController =
  TextEditingController();

  final AuthService authService = AuthService();

  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future<void> resetPassword() async {

    if (emailController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter your email address."),
        ),
      );
      return;
    }

    try {

      setState(() {
        isLoading = true;
      });

      await authService.resetPassword(
        email: emailController.text.trim(),
      );

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 6),
          content: Text(
            "If an account exists for this email, we've sent a password reset link. Please check your Inbox, Spam/Junk and Promotions folders if you don't see it within a few minutes.",
          ),
        ),
      );

    } on FirebaseAuthException {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Unable to send reset email right now.",
          ),
        ),
      );

    } finally {

      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }

    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            const SizedBox(height: 20),

            const Text(
              "Enter your email address and we'll send you a password reset link.",
              style: TextStyle(
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email Address",
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: isLoading
                    ? null
                    : resetPassword,
                child: isLoading
                    ? const CircularProgressIndicator(
                  color: Colors.white,
                )
                    : const Text(
                  "SEND RESET LINK",
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}