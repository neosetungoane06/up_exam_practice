import 'package:flutter/material.dart';
import 'summary_screen.dart';

class ModuleTopicsScreen extends StatelessWidget {
  final String moduleName;

  const ModuleTopicsScreen({
    super.key,
    required this.moduleName,
  });

  @override
  Widget build(BuildContext context) {

    List<String> topics = [];
    int completedTopics = 5;

    if (moduleName == 'MLB111') {
      topics = [
        'Cells and Cell Structure',
        'Cell Membranes',
        'Photosynthesis',
        'Molecules and Chemistry of Cells',
        'Energy, Enzymes and Metabolism',
        'Pathways that Harvest Chemical Energy',
        'Cell Cycle and Cell Division',
        'DNA and Heredity',
        'Gene Expression and Mutation',
      ];
    }

    if (moduleName == 'PHY131') {
      topics = [
        'Vectors and Forces',
        'Newton Second Law',
        'Kinematics',
        'Work and Energy',
        'Temperature and Ideal Gas Law',
        'Heat',
        'Thermodynamics',
        'Electric Forces and Fields',
        'Electric Potential',
        'Reflection and Refraction',
        'Nuclear Physics',
      ];
    }

    if (moduleName == 'CMY117') {
      topics = [
        'Matter and Measurement',
        'Atoms Molecules and Ions',
        'Electronic Structure of Atoms',
        'Periodic Properties',
        'Chemical Bonding',
        'Stoichiometry',
        'Chemical Reactions',
        'Energy and Chemical Reactions',
        'Properties of Gases',
        'Properties of Liquids',
        'Properties of Solutions',
        'Chemical Kinetics',
      ];
    }

    if (moduleName == 'WTW134') {
      topics = [
        'Functions and Change',
        'Differentiation',
        'Exponential Functions',
        'Logarithmic Functions',
        'Trigonometric Functions',
        'Absolute Value Functions',
        'Applications of Derivatives',
        'Integration',
        'Applications of Definite Integrals',
        'Functions and Economics',
        'Linear Algebra',
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(moduleName),
        centerTitle: true,
      ),
        body: Column(
          children: [

            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Progress: $completedTopics / ${topics.length} Topics Completed",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  LinearProgressIndicator(
                    value: completedTopics / topics.length,
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(10),
                  ),

                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(topics[index]),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SummaryScreen(
                              topicName: topics[index],
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
    );
  }
}