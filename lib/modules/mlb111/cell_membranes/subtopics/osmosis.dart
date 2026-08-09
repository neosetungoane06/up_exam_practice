import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Osmosis";

const List<String> notes = [

  "### Osmosis",

  "Osmosis is the diffusion of water across a selectively permeable membrane.",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Only water moves during osmosis.",

  "",

  "### Scientific Definition",

  "Water moves from a region of high water concentration (low solute concentration) to a region of low water concentration (high solute concentration).",

  "",

  "### Requirements for Osmosis",

  "• A selectively permeable membrane.",
  "• A difference in water concentration.",
  "• Water molecules.",

  "",

  "### Characteristics",

  "• Only water moves.",
  "• No ATP required.",
  "• Passive process.",
  "• Continues until equilibrium.",

  "",

  "### Everyday Examples",

  "• Raisins swelling in water.",
  "• Plant roots absorbing water.",
  "• Red blood cells changing size in different solutions.",

  "",

  "### Importance",

  "Osmosis helps maintain:",

  "• Cell volume.",
  "• Water balance.",
  "• Normal cell function.",

  "",

  "### Memory Trick",

  "Osmosis = Only Water.",

  "",

  "### Quick Summary",

  "✓ Water only\n"
      "✓ High water → Low water\n"
      "✓ No ATP\n"
      "✓ Requires a selectively permeable membrane",

  "",

  "EXAM TIP: Diffusion can involve many molecules, but osmosis always involves WATER only.",

];

const List<String> images = [
  "assets/modules/mlb111/Osmosis.png",
];

class OsmosisScreen extends StatelessWidget {
  const OsmosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Osmosis",
      ),
    );
  }
}