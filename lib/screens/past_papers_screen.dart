import 'package:flutter/material.dart';
import 'module_papers_screen.dart';
class PastPapersScreen extends StatelessWidget {
  const PastPapersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = [
      'MLB111',
      'WTW134',
      'CMY117',
      'PHY131',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        centerTitle: true,
        title: const Text(
          'Past Papers',
          style: TextStyle(
            color: Color(0xFF1E40AF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                hintText: 'Search module...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 24),

            Expanded(
              child: ListView.builder(
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.description_outlined),
                      title: Text(modules[index]),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ModulePapersScreen(
                              moduleName: modules[index],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}