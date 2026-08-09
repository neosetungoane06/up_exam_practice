import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() =>
      _VerifyEmailScreenState();
}

class _VerifyEmailScreenState
    extends State<VerifyEmailScreen> {

  bool loading = false;

  Future<void> resendEmail() async {

    final user = FirebaseAuth.instance.currentUser;

    if (user == null) return;

    await user.sendEmailVerification();

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Verification email sent.\nPlease also check your Spam/Junk folder.",
        ),
      ),
    );
  }

  Future<void> checkVerification() async {

    setState(() {
      loading = true;
    });

    await FirebaseAuth.instance.currentUser?.reload();

    final user = FirebaseAuth.instance.currentUser;

    if (!mounted) return;

    setState(() {
      loading = false;
    });

    if (user != null && user.emailVerified) {

      Navigator.pop(context);

    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Your email is not verified yet.",
          ),
        ),
      );

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Verify Email"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(24),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Icon(
              Icons.mark_email_read_outlined,
              size: 90,
              color: Colors.blue,
            ),

            const SizedBox(height: 25),

            const Text(
              "Verify your email before using Clario.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "We sent a verification email.\nCheck your Inbox and Spam folder.",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: resendEmail,
                child: const Text("Resend Email"),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: loading ? null : checkVerification,
                child: loading
                    ? const CircularProgressIndicator()
                    : const Text("I've Verified My Email"),
              ),
            ),

          ],

        ),

      ),

    );

  }
}