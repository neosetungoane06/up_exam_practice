import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Pump Proteins";

const List<String> notes = [

  "### Pump Proteins",

  "Pump proteins are specialised membrane proteins that use ATP to actively move substances across the plasma membrane.",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Pump proteins act like powered pumps. They use energy from ATP to push molecules in a direction they would not naturally move.",

  "",

  "### How Pump Proteins Work",

  "Step 1: Molecule binds to the pump.",

  "Step 2: ATP provides energy.",

  "Step 3: Pump changes shape.",

  "Step 4: Molecule is transported across the membrane.",

  "Step 5: Pump returns to its original shape.",

  "",

  "### Characteristics",

  "• Uses ATP.",
  "• Active transport.",
  "• Highly selective.",
  "• Maintains concentration gradients.",

  "",

  "### Sodium-Potassium Pump",

  "The sodium-potassium pump is the most important membrane pump in animal cells.",

  "For every ATP used:",

  "• 3 Sodium ions (Na⁺) leave the cell.",

  "• 2 Potassium ions (K⁺) enter the cell.",

  "",

  "This helps:",

  "• Maintain nerve impulses.",
  "• Maintain muscle contraction.",
  "• Maintain resting membrane potential.",

  "",

  "### Why Pump Proteins Matter",

  "Without pump proteins:",

  "• Nerve cells would stop functioning.",
  "• Muscles would not contract properly.",
  "• Cells would lose ion balance.",

  "",

  "### Memory Trick",

  "Pump = Powered Transport.",

  "",

  "### Quick Summary",

  "✓ Uses ATP\n"
      "✓ Active transport\n"
      "✓ Maintains ion gradients\n"
      "✓ Example: Sodium-Potassium Pump",

  "",

  "EXAM TIP: Pump proteins are transport proteins that always require ATP because they perform active transport.",

];

const List<String> images = [
  "assets/modules/mlb111/Pumps.png",
];

class PumpProteinsScreen extends StatelessWidget {
  const PumpProteinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Pump Protein",
      ),
    );
  }
}