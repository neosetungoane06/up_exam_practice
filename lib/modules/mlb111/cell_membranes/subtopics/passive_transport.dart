import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Passive Transport";

const List<String> notes = [

  "### Passive Transport",

  "Passive transport is the movement of substances across the plasma membrane without the use of cellular energy (ATP).",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Cells allow certain substances to move naturally without spending energy.",

  "",

  "### Characteristics",

  "• No ATP required.",
  "• Moves down the concentration gradient.",
  "• Occurs naturally.",
  "• Continues until equilibrium.",

  "",

  "### Types of Passive Transport",

  "• Diffusion.",
  "• Osmosis.",
  "• Facilitated diffusion.",

  "",

  "### Why is Passive Transport Important?",

  "Passive transport allows cells to:",

  "• Obtain oxygen.",
  "• Remove carbon dioxide.",
  "• Balance water levels.",
  "• Exchange nutrients efficiently.",

  "",

  "### Passive vs Active Transport",

  "Passive Transport:",

  "• No ATP.",
  "• High → Low concentration.",

  "",

  "Active Transport:",

  "• Requires ATP.",
  "• Low → High concentration.",

  "",

  "### Memory Trick",

  "Passive = Peaceful (No Energy).",

  "",

  "### Quick Summary",

  "✓ No ATP\n"
      "✓ High → Low\n"
      "✓ Natural movement\n"
      "✓ Includes diffusion, osmosis and facilitated diffusion",

];

const List<String> images = [
  "assets/modules/mlb111/Passive_transport.png",
];

class PassiveTransportScreen extends StatelessWidget {
  const PassiveTransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Passive Transport",
      ),
    );
  }
}