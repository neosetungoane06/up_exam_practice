import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Energy, Enzymes and Metabolism";

const List<String> notes = [

  "### Energy, Enzymes and Metabolism",

  "Every living cell requires a continuous supply of energy to survive. Energy is needed for growth, movement, transport across membranes, protein synthesis, cell division and many other cellular activities. Without energy, life cannot exist.",

  "",

  "### What is Energy?",

  "Energy is the capacity to do work. In living organisms, energy allows cells to perform all the processes necessary to maintain life.",

  "",

  "### Forms of Energy",

  "Biologists mainly study two forms of energy:",

  "• Potential energy.",
  "• Kinetic energy.",

  "",
"[IMAGE]",
  "### Potential Energy",

  "Potential energy is stored energy. It exists because of an object's position or the arrangement of its atoms and molecules.",

  "Chemical bonds contain potential energy. Molecules such as glucose store large amounts of chemical potential energy that cells can later use.",

  "",

  "### Kinetic Energy",

  "Kinetic energy is the energy of motion.",

  "Examples include:",

  "• Flowing blood.",
  "• Contracting muscles.",
  "• Beating cilia and flagella.",
  "• Moving molecules during diffusion.",

  "",

  "### Cells Constantly Convert Energy",

  "Living cells constantly convert potential energy into kinetic energy and vice versa. This allows organisms to carry out normal life processes efficiently.",

  "",

  "### Why Do Cells Need Energy?",

  "Cells require energy for many important processes including:",

  "• Active transport.",
  "• Protein synthesis.",
  "• DNA replication.",
  "• Cell division.",
  "• Growth and repair.",
  "• Muscle contraction.",
  "• Movement of substances inside cells.",

  "",

  "### ATP: The Cell's Energy Currency",

  "Cells do not use the energy stored in food directly. Instead, they transfer that energy into ATP (adenosine triphosphate), the molecule that provides immediate energy for cellular work.",

  "ATP will be discussed in detail in the next subtopic.",

  "",

  "### Introducing Enzymes",

  "Most chemical reactions inside cells happen far too slowly on their own. Cells use special proteins called enzymes to speed up these reactions.",

  "Enzymes will also be studied in detail later in this topic.",

  "",

  "### Introducing Metabolism",

  "All chemical reactions occurring inside a living organism are collectively known as metabolism.",

  "The next subtopic explains metabolism and how cells obtain, use and regulate energy.",

  "",

  "### Memory Trick",

  "Potential = Stored energy.",
  "Kinetic = Moving energy.",

  "",

  "### Exam Tip",

  "Always remember that ATP is the immediate source of usable energy inside cells, not glucose itself.",

  "",

  "### Quick Summary",

  "• Energy is the ability to do work.",
  "• Potential energy is stored energy.",
  "• Kinetic energy is energy of motion.",
  "• Cells require energy for all life processes.",
  "• ATP is the immediate energy currency of the cell.",
  "• Enzymes speed up chemical reactions.",
  "• Metabolism includes all chemical reactions inside cells.",

  "",

  "### Connect the Dots",

  "Now that you understand why cells require energy, the next question is: What exactly is metabolism and how do cells obtain and use this energy?",

  "This leads us to the next subtopic: Metabolism.",

];

const List<String> images = [
  "assets/modules/mlb111/Energy_Overview.png",
];

class EnergyIntroductionScreen extends StatelessWidget {
  const EnergyIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Energy Introduction",
      ),
    );
  }
}