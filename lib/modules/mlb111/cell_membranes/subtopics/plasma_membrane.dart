import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Plasma Membrane (Cell Membrane)";

const List<String> notes = [

  "### What is the Plasma Membrane?",

  "The plasma membrane, also called the cell membrane, is a thin, flexible boundary that surrounds every living cell. It separates the internal environment of the cell from the external environment and regulates the movement of substances into and out of the cell.",

  "",

  "[IMAGE]",

  "",

  "### Why is the Plasma Membrane Important?",

  "Without the plasma membrane, the contents of the cell would leak out and harmful substances could freely enter the cell. The membrane protects the cell while allowing it to exchange materials with its surroundings.",

  "",

  "### Functions of the Plasma Membrane",

  "• Forms the outer boundary of the cell.",
  "• Separates the internal and external environments.",
  "• Controls movement of substances into and out of the cell.",
  "• Maintains homeostasis (stable internal conditions).",
  "• Allows communication between cells.",
  "• Recognises neighbouring cells.",
  "• Anchors membrane proteins.",
  "• Provides structural support.",

  "",

  "### Selectively Permeable",

  "The plasma membrane is selectively permeable (also called selectively permeable). This means that some substances can pass through the membrane while others cannot.",

  "",

  "Examples:",

  "• Oxygen can enter.",
  "• Carbon dioxide can leave.",
  "• Water can move across the membrane.",
  "• Large proteins usually cannot pass without assistance.",

  "",

  "### Homeostasis",

  "Homeostasis refers to maintaining a stable internal environment despite changes in the external environment.",

  "The plasma membrane helps maintain homeostasis by regulating:",

  "• Water concentration.",
  "• Salt concentration.",
  "• Glucose levels.",
  "• Waste removal.",

  "",

  "### Components of the Plasma Membrane",

  "The plasma membrane is mainly composed of:",

  "• Phospholipids.",
  "• Proteins.",
  "• Cholesterol (animal cells).",
  "• Carbohydrate chains.",

  "",

  "These components work together to allow transport, communication and protection.",

  "",

  "### Memory Trick",

  "Plasma Membrane = Security Gate.",

  "It decides what enters, what leaves and what stays outside.",

  "",

  "EXAM TIP:",

  "Remember these five major functions:",

  "• Boundary.",
  "• Protection.",
  "• Transport.",
  "• Communication.",
  "• Homeostasis.",

];

const List<String> images = [
  "assets/modules/mlb111/plasma_membrane.png",
];

class PlasmaMembraneScreen extends StatelessWidget {
  const PlasmaMembraneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Plasma Membrane",
      ),
    );
  }
}