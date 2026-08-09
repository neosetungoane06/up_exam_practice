import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'university_selection.dart';
import '../services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

final TextEditingController preferredNameController =
TextEditingController();

final TextEditingController emailController =
TextEditingController();

final TextEditingController passwordController =
TextEditingController();

final TextEditingController confirmPasswordController =
TextEditingController();

bool obscurePassword = true;
final AuthService authService = AuthService();
final FirestoreService firestoreService = FirestoreService();

bool isLoading = false;
bool obscureConfirmPassword = true;

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

offset: const Offset(0,10),

),

],

),

child: Column(

crossAxisAlignment: CrossAxisAlignment.stretch,

children: [

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

),

),

),

const SizedBox(height: 35),

const Center(

child: Text(

"Create Account",

style: TextStyle(

fontSize: 30,

fontWeight: FontWeight.bold,

),

),

),

const SizedBox(height: 30),
  const Text(
    "Preferred Name",
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
  ),

  const SizedBox(height: 8),

  TextField(
    controller: preferredNameController,
    decoration: InputDecoration(
      hintText: "What should Clario call you?",
      prefixIcon: const Icon(Icons.person_outline),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),

  const SizedBox(height: 22),

  const Text(
    "Email Address",
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
  ),

  const SizedBox(height: 8),

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

  const SizedBox(height: 22),

  const Text(
    "Password",
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
  ),

  const SizedBox(height: 8),

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
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),

  const SizedBox(height: 22),

  const Text(
    "Confirm Password",
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
  ),

  const SizedBox(height: 8),

  TextField(
    controller: confirmPasswordController,
    obscureText: obscureConfirmPassword,
    decoration: InputDecoration(
      hintText: "Confirm Password",
      prefixIcon: const Icon(Icons.lock_reset_outlined),
      suffixIcon: IconButton(
        icon: Icon(
          obscureConfirmPassword
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
        ),
        onPressed: () {
          setState(() {
            obscureConfirmPassword =
            !obscureConfirmPassword;
          });
        },
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),

  const SizedBox(height: 30),

  SizedBox(
    height: 58,
    child: ElevatedButton(
      onPressed: () async {
        if (preferredNameController.text.trim().isEmpty ||
            emailController.text.trim().isEmpty ||
            passwordController.text.trim().isEmpty ||
            confirmPasswordController.text.trim().isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Please complete all fields."),
            ),
          );
          return;
        }

        if (passwordController.text !=
            confirmPasswordController.text) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Passwords do not match."),
            ),
          );
          return;
        }

        try {
          setState(() {
            isLoading = true;
          });

          final userCredential = await authService.createAccount(
            email: emailController.text,
            password: passwordController.text,
          );

          await authService.sendEmailVerification();

          final uid = userCredential.user!.uid;

          await firestoreService.createUser(
            uid: uid,
            preferredName: preferredNameController.text.trim(),
            email: emailController.text.trim(),
          );

          if (!mounted) return;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const UniversitySelectionScreen(),
            ),
          );
        } on FirebaseAuthException catch (e) {

          String message = "Unable to create account.";

          switch (e.code) {

            case "email-already-in-use":
              message =
              "An account with this email already exists.";
              break;

            case "weak-password":
              message =
              "Password is too weak.";
              break;

            case "invalid-email":
              message =
              "Please enter a valid email address.";
              break;

            case "network-request-failed":
              message =
              "No internet connection.";
              break;

            default:
              message =
              "Unable to create your account right now.";
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );

        }
        finally {
          if (mounted) {
            setState(() {
              isLoading = false;
            });
          }
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
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 3,
          color: Colors.white,
        ),
      )
          : const Text(
        "CREATE ACCOUNT",
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  ),

  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      const Text(
        "Already have an account? ",
        style: TextStyle(fontSize: 16),
      ),

      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Text(
          "Log In",
          style: TextStyle(
            color: Color(0xFF234E84),
            fontWeight: FontWeight.bold,
            fontSize: 16,
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