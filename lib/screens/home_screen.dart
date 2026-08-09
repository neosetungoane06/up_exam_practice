import 'package:flutter/material.dart';
import 'university_selection.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xFFF5F7FB),
body: SafeArea(
child: SingleChildScrollView(
padding: const EdgeInsets.symmetric(
horizontal: 20,
vertical: 10,
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [

const SizedBox(height: 10),

const Text(
"CLARIO",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Color(0xFF0F3D91),
letterSpacing: 1,
),
),

const SizedBox(height: 6),

const Text(
"Understand • Explain • Master",
style: TextStyle(
color: Colors.grey,
fontSize: 15,
),
),

const SizedBox(height: 35),

const Align(
alignment: Alignment.centerLeft,
child: Text(
"Welcome👋",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 12),

const Align(
alignment: Alignment.centerLeft,
child: Text(
"Let's build your personal learning space.",
style: TextStyle(
fontSize: 18,
color: Color(0xFF64748B),
height: 1.5,
),
),
),

const SizedBox(height: 30),

Row(
children: [

Expanded(
child: _card(
Icons.menu_book_rounded,
"Understand",
"Learn concepts clearly.",
),
),

const SizedBox(width: 12),

Expanded(
child: _card(
Icons.psychology_alt,
"Explain",
"Teach the AI.",
),
),

const SizedBox(width: 12),

Expanded(
child: _card(
Icons.workspace_premium,
"Master",
"Prepare for exams.",
),
),

],
),

const SizedBox(height: 18),

Container(
width: double.infinity,
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20),
boxShadow: const [
BoxShadow(
color: Color(0x14000000),
blurRadius: 12,
offset: Offset(0,5),
),
],
),

child: Column(
children: [

Icon(
Icons.school_rounded,
size: 70,
color: Colors.blue.shade700,
),

const SizedBox(height: 20),

const Text(
"Build Your Study Space",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 12),

const Text(
"Choose your university and modules once.\nClario will personalise your learning experience.",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 16,
color: Color(0xFF64748B),
height: 1.5,
),
),
  const SizedBox(height: 25),

  const Text(
    "Step 1 of 3",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Color(0xFF0F3D91),
    ),
  ),

  const SizedBox(height: 12),

  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      _dot(true),

      const SizedBox(width: 8),

      _dot(false),

      const SizedBox(width: 8),

      _dot(false),

    ],
  ),

],
),
),

  const SizedBox(height: 20),

  SizedBox(
    width: double.infinity,
    height: 60,
    child: ElevatedButton(

      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2563EB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
            const UniversitySelectionScreen(),
          ),
        );
      },

      child: const Text(
        "Create My Study Space",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  ),

  const SizedBox(height: 30),

],
),
),
),
);
}

Widget _card(
    IconData icon,
    String title,
    String subtitle,
    ) {
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: const [
        BoxShadow(
          color: Color(0x14000000),
          blurRadius: 8,
          offset: Offset(0,4),
        ),
      ],
    ),
    child: Column(
      children: [

        Icon(
          icon,
          color: const Color(0xFF2563EB),
          size: 32,
        ),

        const SizedBox(height: 10),

        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF64748B),
          ),
        ),

      ],
    ),
  );
}

Widget _dot(bool active) {
  return Container(
    width: 12,
    height: 12,
    decoration: BoxDecoration(
      color: active
          ? const Color(0xFF2563EB)
          : Colors.grey.shade300,
      shape: BoxShape.circle,
    ),
  );
}
}