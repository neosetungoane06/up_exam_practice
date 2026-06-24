import 'package:flutter/material.dart';
import 'paper_viewer_screen.dart';
class ModulePapersScreen extends StatelessWidget {
  final String moduleName;

  const ModulePapersScreen({
    super.key,
    required this.moduleName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        centerTitle: true,
        title: Text(
          moduleName,
          style: const TextStyle(
            color: Color(0xFF1E40AF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text('2025 Final Exam'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaperViewerScreen(
                      paperTitle: '2025 Final Exam',
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text('2024 Final Exam'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text('2023 Final Exam'),
            ),
          ),
        ],
      ),
    );
  }
}