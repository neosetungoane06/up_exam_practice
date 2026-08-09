import 'package:flutter/material.dart';
import 'summary_screen.dart';
import '../services/completed_topics.dart';

class ModuleTopicsScreen extends StatefulWidget {
  final String moduleName;

  const ModuleTopicsScreen({
    super.key,
    required this.moduleName,
  });

  @override
  State<ModuleTopicsScreen> createState() => _ModuleTopicsScreenState();
}

class _ModuleTopicsScreenState extends State<ModuleTopicsScreen> {
  int completedTopics = 0;

  @override
  void initState() {
    super.initState();
    loadProgress();
  }

  Future<void> loadProgress() async {
    final count = await CompletedTopicsService.countCompleted(
      widget.moduleName,
    );

    setState(() {
      completedTopics = count;
    });
  }

  List<String> getTopics() {
    switch (widget.moduleName) {
      case 'MLB111':
        return [
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

      case 'PHY131':
        return [
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

      case 'CMY117':
        return [
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

      case 'WTW134':
        return [
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

      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final topics = getTopics();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moduleName),
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
            child: Text(
              "Completed: $completedTopics",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: topics.length,
              itemBuilder: (context, index) {
                final topic = topics[index];

                return Card(
                  child: ListTile(
                    title: Text(topic),

                    trailing: FutureBuilder<bool>(
                      future: CompletedTopicsService.isCompleted(
                        widget.moduleName,
                        topic,
                      ),
                      builder: (context, snapshot) {
                        final isDone = snapshot.data ?? false;

                        return Icon(
                          isDone
                              ? Icons.check_circle
                              : Icons.arrow_forward_ios,
                          color: isDone ? Colors.green : null,
                        );
                      },
                    ),

                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SummaryScreen(
                            topicName: topic,
                          ),
                        ),
                      );

                      await CompletedTopicsService.markCompleted(
                        widget.moduleName,
                        topic,
                      );

                      loadProgress();
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