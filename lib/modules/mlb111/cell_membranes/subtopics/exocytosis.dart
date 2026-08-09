import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Exocytosis";

const List<String> notes = [

  "### Exocytosis",

  "Exocytosis is an active transport process in which substances leave the cell when vesicles fuse with the plasma membrane.",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "The cell packages materials inside a vesicle and delivers them outside by joining the vesicle with the plasma membrane.",

  "",

  "### Why Exocytosis is Needed",

  "Cells constantly produce substances that must be exported, such as hormones, enzymes and proteins.",

  "",

  "### How Exocytosis Works",

  "Step 1: A vesicle containing materials forms inside the cell (usually from the Golgi apparatus).",

  "Step 2: The vesicle moves toward the plasma membrane.",

  "Step 3: The vesicle membrane fuses with the plasma membrane.",

  "Step 4: The contents are released outside the cell.",

  "Step 5: The vesicle membrane becomes part of the plasma membrane.",

  "",

  "### Characteristics",

  "• Material moves OUT of the cell.",
  "• Requires ATP.",
  "• Uses vesicles.",
  "• Active transport process.",

  "",

  "### Examples",

  "• Release of hormones.",
  "• Release of digestive enzymes.",
  "• Release of neurotransmitters.",
  "• Export of proteins.",

  "",

  "### Importance",

  "Exocytosis allows cells to:",

  "• Communicate with other cells.",
  "• Remove waste products.",
  "• Secrete useful substances.",
  "• Increase plasma membrane size.",

  "",

  "### Endocytosis vs Exocytosis",

  "Endocytosis:",

  "• Into the cell.",

  "• Plasma membrane folds inward.",

  "",

  "Exocytosis:",

  "• Out of the cell.",

  "• Vesicle fuses with plasma membrane.",

  "",

  "### Memory Trick",

  "Exo = Exit.",

  "",

  "### Quick Summary",

  "✓ Moves material OUT of cell\n"
      "✓ Uses vesicles\n"
      "✓ Requires ATP\n"
      "✓ Vesicle membrane joins plasma membrane",

  "",

  "EXAM TIP: During exocytosis, the vesicle membrane becomes part of the plasma membrane.",

];

const List<String> images = [
  "assets/modules/mlb111/exocytosis.png",
];

class ExocytosisScreen extends StatelessWidget {
  const ExocytosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Exocytosis",
      ),
    );
  }
}