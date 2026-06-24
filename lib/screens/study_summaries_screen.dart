import 'package:flutter/material.dart';
import 'module_topics_screen.dart';

class StudySummariesScreen extends StatelessWidget {
  const StudySummariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = [
      'MLB111',
      'PHY131',
      'CMY117',
      'WTW134',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Summaries'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search modules...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.menu_book),
                      title: Text(modules[index]),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ModuleTopicsScreen(
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