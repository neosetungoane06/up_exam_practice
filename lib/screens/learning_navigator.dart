import 'package:flutter/material.dart';
import '../data/module_data.dart';
import '../services/study_session_service.dart';
import '../../../services/learning_state_service.dart';
import '../navigation/study_navigation.dart';

class LearningNavigator extends StatefulWidget {
  const LearningNavigator({super.key});

  @override
  State<LearningNavigator> createState() =>
      _LearningNavigatorState();
}

class _LearningNavigatorState
    extends State<LearningNavigator> {

  int selectedModuleIndex = 0;

  String? lastModule;
  String? lastTopic;
  String? lastSubtopic;
  String? lastNote;
  Future<void> _loadLastModule() async {

    final savedModule =
    await LearningStateService.getLastModule();

    if (savedModule == null) return;

    final index = allModules.indexWhere(
          (module) => module.code == savedModule,
    );

    if (index != -1) {

      setState(() {

        selectedModuleIndex = index;

      });

    }

  }
  Future<void> _loadContinueLearning() async {

    lastModule = await LearningStateService.getLastModule();

    lastTopic = await LearningStateService.getLastTopic();

    lastSubtopic =
    await LearningStateService.getLastSubtopic();

    lastNote = await LearningStateService.getLastNote();

    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    _loadLastModule();
    _loadContinueLearning();
  }

  @override
  Widget build(BuildContext context) {
    final currentModule =
    allModules[selectedModuleIndex];
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final background =
    isDark ? const Color(0xFF121212) : const Color(0xFFF7F9FC);

    final cardColor =
    isDark ? const Color(0xFF1E1E1E) : Colors.white;

    final textColor =
    isDark ? Colors.white : Colors.black;

    final subtitleColor =
    isDark ? Colors.grey.shade400 : Colors.grey.shade700;
    return Scaffold(
      backgroundColor: background,

      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Learning Navigator",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

             Text(
              "YOUR MODULES",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 18),

            ...List.generate(allModules.length, (index) {

              final module = allModules[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 12),

                child: GestureDetector(

                  onTap: () async {

                    await StudySessionService.saveCurrentModule(
                      allModules[index].code,
                    );

                    setState(() {
                      selectedModuleIndex = index;
                    });

                  },

                  child: _moduleTile(
                    context,
                    title: "${module.code} - ${module.title}",
                    mastery: module.mastery,
                    selected: index == selectedModuleIndex,
                  ),

                ),

              );

            }),

            const SizedBox(height: 14),

            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text("See More..."),
              ),
            ),


            const SizedBox(height: 30),

             Text(
              "Continue Studying",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

    GestureDetector(
    onTap: () async {
    final location =
    await LearningStateService.getLastLocation();

    if (location == null) return;

    final screen = StudyNavigation.getScreen(
      module: location.module,
      topic: location.topic,
      subtopic: location.subtopic,
    );

    if (screen == null) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Unable to reopen this lesson."),
          duration: Duration(seconds: 2),
        ),
      );

      return;
    }

    if (!mounted) return;

    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (_) => screen,
    ),
    );
    },
    child: Container(
    padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.orange.shade300,
                ),
              ),

              child: Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Text(
                          "🔥 Continue Studying",
                          style: TextStyle(
                            fontSize: 15,
                            color: subtitleColor,
                          ),
                        ),


                        const SizedBox(height: 8),

                    Text(
                      lastNote ?? "No study session yet",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                        const SizedBox(height: 6),

                        Text(
                          lastTopic ?? "Open your first lesson to begin.",
                          style: TextStyle(
                            color: subtitleColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 4),

                        Text(
                          lastModule ?? "",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ],
                    ),
                  ),
    Icon(
    Icons.play_circle_outline,
    color: Colors.orange.shade700,
    size: 36,
    ),

                ],
              ),
            ),
    ),

            const SizedBox(height: 30),

             Text(
              "Browse Topics",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

            ...currentModule.topics.map(
                  (topic) => _topicTile(
                context,
                topic,
                onTap: () async {
                  if (topic.screen == null) return;

                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => topic.screen!,
                    ),
                  );

                  await _loadContinueLearning();
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

Widget _moduleTile(
    BuildContext context, {
      required String title,
      required double mastery,
      bool selected = false,
    }) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  final cardColor =
  isDark ? const Color(0xFF1E1E1E) : Colors.white;

  final textColor =
  isDark ? Colors.white : Colors.black;

  return Container(
    padding: const EdgeInsets.all(18),

    decoration: BoxDecoration(
      color: selected
          ? (isDark
          ? const Color(0xFF312E81)
          : const Color(0xFFEDE9FE))
          : cardColor,

      borderRadius: BorderRadius.circular(18),

      border: Border.all(
        color: selected
            ? Colors.deepPurple
            : Colors.grey.shade300,
      ),
    ),

    child: Row(
      children: [

        Icon(
          selected
              ? Icons.radio_button_checked
              : Icons.radio_button_off,
          color: selected
              ? Colors.deepPurple
              : Colors.grey,
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),

              const SizedBox(height: 8),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),

                child: LinearProgressIndicator(

                  value: mastery / 100,

                  minHeight: 7,

                  backgroundColor: Colors.grey.shade300,

                  color: mastery >= 90
                      ? Colors.green
                      : mastery >= 70
                      ? Colors.blue
                      : mastery >= 50
                      ? Colors.amber
                      : mastery >= 30
                      ? Colors.orange
                      : Colors.red,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "${mastery.toStringAsFixed(1)}%",
                style: TextStyle(
                  color: mastery >= 90
                      ? Colors.green
                      : mastery >= 70
                      ? Colors.blue
                      : mastery >= 50
                      ? Colors.amber.shade800
                      : mastery >= 30
                      ? Colors.orange
                      : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),

        if (selected)
          const Icon(
            Icons.check,
            color: Colors.deepPurple,
          ),

      ],
    ),
  );
}

Widget _topicTile(
    BuildContext context,
    Topic topic, {
      required VoidCallback onTap,
    }) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  final cardColor =
  isDark ? const Color(0xFF1E1E1E) : Colors.white;

  final textColor =
  isDark ? Colors.white : Colors.black;

  return Card(
    color: cardColor,
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      title: Text(
        topic.name,
        style: TextStyle(
          color: textColor,
        ),
      ),

      onTap: onTap,

      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          Text(
            "${topic.mastery.toStringAsFixed(1)}%",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: topic.mastery >= 90
                  ? Colors.green
                  : topic.mastery >= 70
                  ? Colors.blue
                  : topic.mastery >= 50
                  ? Colors.amber.shade800
                  : topic.mastery >= 30
                  ? Colors.orange
                  : Colors.red,
            ),
          ),

          const SizedBox(width: 10),

          Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: textColor,
          ),

        ],
      ),
    ),
  );
}