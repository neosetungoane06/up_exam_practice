import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Active Transport";

const List<String> notes = [

  "### Active Transport",

  "Active transport is the movement of substances across the plasma membrane against their concentration gradient using cellular energy (ATP).",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Imagine pushing a ball uphill. Energy is required because you are moving against gravity. Cells also require energy when moving substances from LOW concentration to HIGH concentration.",

  "",

  "### How Active Transport Works",

  "Step 1: Molecules bind to a transport protein.",

  "Step 2: ATP is broken down, releasing energy.",

  "Step 3: The transport protein changes shape.",

  "Step 4: Molecules are released on the opposite side of the membrane.",

  "",

  "### Characteristics",

  "• Requires ATP.",
  "• Low → High concentration.",
  "• Uses transport proteins.",
  "• Highly selective.",

  "",

  "### Why is Active Transport Important?",

  "Cells use active transport to:",

  "• Absorb nutrients.",
  "• Remove waste.",
  "• Maintain ion balance.",
  "• Generate electrical signals in nerve cells.",

  "",

  "### Passive vs Active Transport",

  "Passive:",

  "• High → Low.",
  "• No ATP.",

  "",

  "Active:",

  "• Low → High.",
  "• ATP required.",

  "",

  "### Examples",

  "• Sodium-Potassium Pump.",
  "• Uptake of mineral ions by plant roots.",

  "",

  "### Memory Trick",

  "Active = Action = Energy.",

  "",

  "### Quick Summary",

  "✓ ATP required\n"
      "✓ Low → High\n"
      "✓ Against concentration gradient\n"
      "✓ Uses transport proteins",

  "",

  "EXAM TIP: Whenever substances move from LOW concentration to HIGH concentration, ATP is always required.",

];

const List<String> images = [
  "assets/modules/mlb111/Passive_vs_Active.png",
];

class ActiveTransportScreen extends StatelessWidget {
  const ActiveTransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Active Transport",
      ),
    );
  }
}