import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class ExperimentsScreen extends StatelessWidget {
  const ExperimentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Experiments Proving DNA is the Genetic Material",
      images: [
        "assets/modules/mlb111/Experiments.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Experiments",
      ),
      notes: [

        "Scientists did not always know that DNA carries genetic information. For many years they debated whether DNA or proteins were responsible for heredity. Proteins seemed more likely because they are chemically more complex than DNA.",

        "",

        "Scientists performed several experiments to answer one important question:",

        "",

        "• Which molecule carries hereditary information from one generation to the next?",

        "",

        "The three most important experiments were performed by Griffith, Avery-MacLeod-McCarty and Hershey-Chase.",

        "",

        "[IMAGE]",

        "",

        "### Griffith's Transformation Experiment (1928)",

        "Frederick Griffith worked with two strains of the bacterium Streptococcus pneumoniae.",

        "",

        "• Smooth (S) strain → Causes disease",
        "• Rough (R) strain → Harmless",

        "",

        "When living harmless R bacteria were mixed with heat-killed S bacteria, the harmless bacteria unexpectedly became harmful.",

        "",

        "Griffith concluded that some hereditary material had moved from the dead S bacteria into the living R bacteria. He called this process transformation.",

        "",

        "EXAM TIP: Griffith discovered transformation. He did NOT prove that DNA was the hereditary material.",

        "",

        "### Avery, MacLeod and McCarty (1944)",

        "These scientists wanted to identify exactly what the transforming material was.",

        "",

        "They removed one biological molecule at a time from bacterial cells:",

        "",

        "• Proteins",
        "• RNA",
        "• DNA",

        "",

        "Transformation continued when proteins or RNA were removed.",

        "",

        "However, when DNA was destroyed, transformation stopped completely.",

        "",

        "This demonstrated that DNA was responsible for transformation.",

        "",

        "MEMORY TRICK: No DNA = No Transformation.",

        "",
      ],
    );
  }
}