import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';
import 'signup_screen.dart';
import 'university_selection.dart';
import 'verify_email_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService authService = AuthService();

  bool isLoading = false;
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool obscurePassword = true;

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xFFF8FAFC),

body: SafeArea(
child: Center(
child: SingleChildScrollView(
padding: const EdgeInsets.symmetric(horizontal: 28),

child: Container(
constraints: const BoxConstraints(maxWidth: 420),

padding: const EdgeInsets.all(28),

decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(28),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(.08),
blurRadius: 30,
offset: const Offset(0, 10),
),
],
),

child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [

const SizedBox(height: 10),

const Icon(
Icons.menu_book_rounded,
size: 60,
color: Color(0xFF234E84),
),

const SizedBox(height: 12),

const Center(
child: Text(
"CLARIO",
style: TextStyle(
fontSize: 34,
fontWeight: FontWeight.bold,
color: Color(0xFF234E84),
letterSpacing: 1,
),
),
),

const SizedBox(height: 35),

const Center(
child: Text(
"Access your account",
style: TextStyle(
fontSize: 32,
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 40),
  const Text(
    "Email Address",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  ),

  const SizedBox(height: 10),

  TextField(
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: "Email Address",
      prefixIcon: const Icon(Icons.email_outlined),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),

  const SizedBox(height: 24),

  const Text(
    "Password",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  ),

  const SizedBox(height: 10),

  TextField(
    controller: passwordController,
    obscureText: obscurePassword,
    decoration: InputDecoration(
      hintText: "Password",
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: IconButton(
        icon: Icon(
          obscurePassword
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
        ),
        onPressed: () {
          setState(() {
            obscurePassword = !obscurePassword;
          });
        },
      ),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),

  const SizedBox(height: 10),

  Align(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () async {

        if (emailController.text.trim().isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Enter your email address first."),
            ),
          );
          return;
        }

        try {

          await authService.resetPassword(
            email: emailController.text.trim(),
          );

          if (!mounted) return;

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 6),
              content: Text(
                "If an account exists for this email, a password reset link has been sent.\n"
                    "Please check your Inbox and Spam/Junk folder.",
              ),
            ),
          );

        } on FirebaseAuthException {

          if (!mounted) return;

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Unable to process your request right now. Please try again.",
              ),
            ),
          );

        }

      },
      child: const Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
  ),

  const SizedBox(height: 16),

  SizedBox(
    height: 58,
    child: ElevatedButton(
      onPressed: () async {

        if (emailController.text.trim().isEmpty ||
            passwordController.text.trim().isEmpty) {

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Enter email and password"),
            ),
          );

          return;
        }

        try {
          setState(() {
            isLoading = true;
          });

          await authService.signInWithEmail(
            email: emailController.text,
            password: passwordController.text,
          );

          final user = FirebaseAuth.instance.currentUser;

          await user?.reload();

          if (!(user?.emailVerified ?? false)) {

            await FirebaseAuth.instance.signOut();

            if (!mounted) return;

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const VerifyEmailScreen(),
              ),
            );

            return;
          }

        } on FirebaseAuthException catch (e) {

          String message = "Something went wrong. Please try again.";

          switch (e.code) {

            case "invalid-credential":
            case "wrong-password":
            case "user-not-found":
            case "invalid-email":
              message = "Invalid email or password.";
              break;

            case "too-many-requests":
              message =
              "Too many login attempts. Please wait a few minutes and try again.";
              break;

            case "network-request-failed":
              message =
              "No internet connection. Please check your network.";
              break;

            default:
              message = "Unable to sign in right now.";
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );

        }
        finally {
          setState(() {
            isLoading = false;
          });
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF234E84),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: isLoading
          ? const SizedBox(
        width: 22,
        height: 22,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
      )
          : const Text(
        "LOG IN",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),

  const SizedBox(height: 20),

  const Row(
    children: [
      Expanded(child: Divider()),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text("OR"),
      ),
      Expanded(child: Divider()),
    ],
  ),

  const SizedBox(height: 20),

  SizedBox(
    height: 56,
    child: OutlinedButton.icon(
      onPressed: () {
        // Google Sign In
      },
      icon: const Icon(Icons.login),
      label: const Text(
        "Continue with Google",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  ),

  const SizedBox(height: 24),

  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have an account? ",
        style: TextStyle(fontSize: 16),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const SignUpScreen(),
            ),
          );
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(
            color: Color(0xFF234E84),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),

],
),
),
),
),
),
);
}
}