import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Concentration Gradient";

const List<String> notes = [

  "### Concentration Gradient",

  "A concentration gradient exists whenever there is a difference in the concentration of a substance between two regions.",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Imagine one side of a room is crowded with people while the other side is almost empty. Naturally, people spread out until both sides have similar numbers. Molecules behave in the same way.",

  "",

  "### Scientific Definition",

  "A concentration gradient is the difference in the concentration of particles between two areas.",

  "",

  "### Movement Along a Concentration Gradient",

  "Particles naturally move:",

  "• From HIGH concentration.",
  "• To LOW concentration.",

  "This movement continues until equilibrium is reached.",

  "",

  "### Equilibrium",

  "Equilibrium occurs when the concentration becomes equal on both sides. Molecules still move randomly, but there is no overall net movement.",

  "",

  "### Importance",

  "Concentration gradients drive many transport processes in cells including:",

  "• Diffusion.",
  "• Osmosis.",
  "• Facilitated diffusion.",

  "",

  "### Memory Trick",

  "Crowded → Less Crowded.",

  "",

  "### Quick Summary",

  "✓ Difference in concentration\n"
      "✓ High → Low\n"
      "✓ No ATP required\n"
      "✓ Drives passive transport",

  "",

  "EXAM TIP: A concentration gradient is the difference in concentration between two regions.",

];

const List<String> images = [
  "assets/modules/mlb111/Concentration_gradient.png",
];

class ConcentrationGradientScreen extends StatelessWidget {
  const ConcentrationGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Concentration Gradient",
      ),
    );
  }
}