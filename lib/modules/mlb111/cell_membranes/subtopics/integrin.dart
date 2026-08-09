import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Integrins";

const List<String> notes = [

  "### Integrins",

  "Integrins are transmembrane proteins that connect cells to the extracellular matrix (ECM). They also help cells communicate with their surroundings.",

  "",

  "[IMAGE]",

  "",

  "### Structure",

  "An integrin spans the plasma membrane.",

  "• One end binds to the extracellular matrix.",
  "• The other end attaches to the cytoskeleton inside the cell.",

  "",

  "This creates a physical connection between the inside and outside of the cell.",

  "",

  "### Functions",

  "• Anchor cells to the extracellular matrix.",
  "• Help cells maintain their position.",
  "• Participate in cell signalling.",
  "• Detect changes in the external environment.",
  "• Assist cell migration during tissue repair.",
  "• Help regulate cell growth and survival.",

  "",

  "### Why Integrins are Important",

  "Without integrins, many cells would lose their attachment to surrounding tissues and would not be able to communicate effectively with the extracellular matrix.",

  "",

  "### Relationship with the ECM",

  "Integrins bind to proteins such as fibronectin and collagen that are found within the extracellular matrix.",

  "",

  "Together they provide:",

  "• Mechanical support.",
  "• Communication.",
  "• Tissue organisation.",

  "",

  "Memory Trick:",

  "Integrins integrate the inside of the cell with the outside environment.",

  "",

  "EXAM TIP: Integrins connect the cytoskeleton to the extracellular matrix and play an important role in cell adhesion and signalling.",

];

const List<String> images = [
  "assets/modules/mlb111/Integrin.png",
];

class IntegrinsScreen extends StatelessWidget {
  const IntegrinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Integrin",
      ),
    );
  }
}