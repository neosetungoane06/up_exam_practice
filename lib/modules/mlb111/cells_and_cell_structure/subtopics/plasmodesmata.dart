import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Plasmodesmata";

const List<String> notes = [

  "Plasmodesmata are microscopic channels that pass through the cell walls of adjacent plant cells. These channels create direct connections between neighbouring cells, allowing them to communicate and exchange materials.",

  "",

  "[IMAGE]",

  "",

  "### Structure of Plasmodesmata",

  "Each plasmodesma is lined by the plasma membrane of the two neighbouring cells. Running through the centre is a thin tube called the desmotubule, which is connected to the endoplasmic reticulum (ER) of both cells.",

  "• Lined by the plasma membrane.",
  "• Contains a central desmotubule.",
  "• Connects the cytoplasm of adjacent cells.",

  "",

  "### Functions",

  "• Connect adjacent plant cells.",
  "• Allow direct cell-to-cell communication.",
  "• Transport water between cells.",
  "• Transport ions and mineral nutrients.",
  "• Transport sugars produced during photosynthesis.",
  "• Transport hormones and signalling molecules.",
  "• Help coordinate activities across plant tissues.",

  "",

  "### Importance in Plants",

  "Unlike animal cells, plant cells are surrounded by rigid cell walls. Without plasmodesmata, neighbouring plant cells would be isolated from one another. These channels allow plant tissues to function as one coordinated system.",

  "",

  "### Comparison with Animal Cells",

  "Animal cells communicate through gap junctions, whereas plant cells communicate through plasmodesmata.",

  "• Plant cells → Plasmodesmata.",
  "• Animal cells → Gap junctions.",

  "",

  "### What Can Pass Through Plasmodesmata?",

  "Small molecules move freely between cells, while larger molecules such as proteins and RNA may also pass under certain conditions.",

  "Examples include:",

  "• Water.",
  "• Sugars.",
  "• Amino acids.",
  "• Ions.",
  "• Plant hormones.",
  "• Some proteins and RNA molecules.",

  "",

  "### Memory Trick",

  "Plasmodesmata = Plant Cell Bridges.",

  "",

  "EXAM TIP:",

  "Remember that plasmodesmata are found ONLY in plant cells because animal cells do not have cell walls.",

];

const List<String> images = [
  "assets/modules/mlb111/Plasmodesmata.png",
];

class PlasmodesmataScreen extends StatelessWidget {
  const PlasmodesmataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Plasmodesmata",
      ),
    );
  }
}