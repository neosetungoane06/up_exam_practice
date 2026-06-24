import 'package:flutter/material.dart';

class ExamCountdownScreen extends StatelessWidget {
  const ExamCountdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        centerTitle: true,
        title: const Text(
          'Exam Countdown',
          style: TextStyle(
            color: Color(0xFF1E40AF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          _ExamCard(
            module: 'CMY117',
            examDate: '02 Jun 2026',
          ),

          SizedBox(height: 12),

          _ExamCard(
            module: 'PHY131',
            examDate: '06 Jun 2026',
          ),

          SizedBox(height: 12),

          _ExamCard(
            module: 'WTW134',
            examDate: '09 Jun 2026',
          ),

          SizedBox(height: 12),

          _ExamCard(
            module: 'MLB111',
            examDate: '15 Jun 2026',
          ),
        ],
      ),
    );
  }
}

class _ExamCard extends StatelessWidget {
  final String module;
  final String examDate;

  const _ExamCard({
    required this.module,
    required this.examDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.school,
          color: Color(0xFF1E40AF),
        ),
        title: Text(module),
        subtitle: Text('Final Exam\n$examDate'),
      ),
    );
  }
}