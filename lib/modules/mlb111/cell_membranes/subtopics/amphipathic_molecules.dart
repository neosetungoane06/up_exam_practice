import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Amphipathic Molecules";

const List<String> notes = [

  "### Amphipathic Molecules",

  "An amphipathic molecule is a molecule that contains two regions with opposite chemical properties. One part interacts with water while the other avoids water.",

  "",

  "[IMAGE]",

  "",

  "### Phospholipids are Amphipathic",

  "The phospholipids that make up the plasma membrane are amphipathic molecules because they contain:",

  "",

  "• A hydrophilic (water-loving) phosphate head.",
  "• Two hydrophobic (water-fearing) fatty acid tails.",

  "",

  "### Hydrophilic Head",

  "The phosphate head is polar, meaning it is attracted to water.",

  "• Faces the watery environment outside the cell.",
  "• Faces the watery cytoplasm inside the cell.",

  "",

  "### Hydrophobic Tails",

  "The fatty acid tails are non-polar, meaning they avoid water.",

  "• Face inward toward each other.",
  "• Form the interior of the membrane.",
  "• Prevent water-soluble substances from passing freely.",

  "",

  "### Why Amphipathic Molecules are Important",

  "Because phospholipids contain both hydrophilic and hydrophobic regions, they automatically arrange themselves into a phospholipid bilayer when placed in water.",

  "",

  "This arrangement forms the basic structure of every cell membrane.",

  "",

  "### Memory Trick",

  "Hydrophilic = Loves water.",

  "Hydrophobic = Hates water.",

  "",

  "EXAM TIP: A phospholipid is amphipathic because it has a hydrophilic head and hydrophobic tails.",

];

const List<String> images = [
  "assets/modules/mlb111/Amphipatic_molecule.png",
];

class AmphipathicMoleculesScreen extends StatelessWidget {
  const AmphipathicMoleculesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Amphipathic Molecules",
      ),
    );
  }
}