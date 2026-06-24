import 'package:flutter/material.dart';
import 'past_papers_screen.dart';
import 'exam_countdown_screen.dart';
import 'study_summaries_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Recap',
          style: TextStyle(
            color: Color(0xFF1E40AF),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 10),

            const Text(
              'Study smarter. Practice faster.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF475569),
              ),
            ),

            const SizedBox(height: 30),

            _featureCard(
              icon: Icons.calendar_month_outlined,
              title: 'Exam Countdown',
              subtitle: 'Track tests and exams',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExamCountdownScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            _featureCard(
              icon: Icons.description_outlined,
              title: 'Past Papers',
              subtitle: 'Find and practice past papers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PastPapersScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            _featureCard(
              icon: Icons.menu_book_outlined,
              title: 'Study Summaries',
              subtitle: 'Quick topic summaries',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudySummariesScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 3),
              color: Color(0x11000000),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: const Color(0xFF1E40AF),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Color(0xFF64748B),
                    ),
                  ),
                ],
              ),
            ),

            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}