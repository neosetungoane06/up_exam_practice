import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Golgi Apparatus";

const List<String> notes = [

  "The Golgi Apparatus is a stack of flattened membrane-bound sacs called cisternae. It acts as the cell's processing, packaging and shipping centre by modifying proteins and lipids received from the Endoplasmic Reticulum before sending them to their final destinations.",

  "",

  "[IMAGE]",

  "",

  "### Structure of the Golgi Apparatus",

  "The Golgi Apparatus consists of flattened membrane sacs called cisternae that are stacked on top of one another.",

  "Each Golgi Apparatus has two main faces:",

  "• Cis-face (Receiving side).",
  "• Trans-face (Shipping side).",

  "",

  "### Cis-face",

  "The cis-face always faces the Rough Endoplasmic Reticulum (RER). Transport vesicles arriving from the RER fuse with the cis-face and release newly synthesised proteins into the Golgi Apparatus.",

  "",

  "### Trans-face",

  "The trans-face faces the plasma membrane. Finished proteins are packaged into secretory vesicles and transported to their final destination.",

  "",

  "### Functions of the Golgi Apparatus",

  "• Receives proteins from the Rough ER.",
  "• Modifies proteins and lipids.",
  "• Sorts molecules according to their destination.",
  "• Packages proteins into vesicles.",
  "• Produces lysosomes.",
  "• Secretes proteins outside the cell through exocytosis.",

  "",

  "### Protein Modification",

  "Inside the Golgi Apparatus, proteins may undergo several modifications before becoming functional.",

  "Examples include:",

  "• Addition of carbohydrate chains (glycosylation).",
  "• Addition of phosphate groups.",
  "• Final folding and processing.",

  "",

  "### Protein Transport Pathway",

  "Protein transport follows this sequence:",

  "DNA → Ribosome → Rough ER → Transport Vesicle → Golgi Apparatus → Secretory Vesicle → Plasma Membrane",

  "",

  "### Formation of Lysosomes",

  "Some digestive enzymes processed by the Golgi Apparatus are packaged into specialised vesicles that become lysosomes.",

  "",

  "### Secretory Vesicles",

  "Secretory vesicles bud from the trans-face of the Golgi Apparatus. They transport proteins either to the plasma membrane, to other organelles or outside the cell.",

  "",

  "### Memory Trick",

  "Golgi Apparatus = Cell's Post Office.",

  "Receives → Modifies → Sorts → Packages → Ships.",

  "",

  "EXAM TIP:",

  "Remember:",

  "Cis-face = Receives from Rough ER.",

  "Trans-face = Ships to the rest of the cell or outside the cell.",

];

const List<String> images = [
  "assets/modules/mlb111/Golgi_Apparatus.png",
];

class GolgiApparatusScreen extends StatelessWidget {
  const GolgiApparatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Golgi Apparatus",
      ),
    );
  }
}