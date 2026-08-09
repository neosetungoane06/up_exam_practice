import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "The Endomembrane System";

const List<String> notes = [
  "The endomembrane system is a group of interconnected membranes and organelles that work together to synthesise, modify, package and transport proteins and lipids throughout the cell.",

  "",

  "The major components of the endomembrane system include the nuclear envelope, endoplasmic reticulum, Golgi apparatus, vesicles and plasma membrane.",

  "",

  "[IMAGE]",

  "",

  "### Protein Movement Through the Endomembrane System",

  "Step 1: DNA in the nucleus contains the instructions for producing a protein.",

  "Step 2: Ribosomes attached to the Rough Endoplasmic Reticulum synthesise the protein.",

  "Step 3: The Rough ER begins folding and processing the newly formed protein.",

  "Step 4: Transport vesicles carry the protein from the Rough ER to the Golgi Apparatus.",

  "Step 5: The Golgi Apparatus modifies, sorts and packages the protein.",

  "Step 6: Secretory vesicles transport the finished protein to its destination.",

  "Step 7: The vesicle may fuse with the plasma membrane and release the protein outside the cell through exocytosis.",

  "",

  "EXAM TIP: Memorise the pathway below.",

  "",

  "Nucleus → Ribosome → Rough ER → Vesicle → Golgi Apparatus → Vesicle → Plasma Membrane",
];

const List<String> images = [
  "assets/modules/mlb111/Endomembrane_System.png",
];

class EndomembraneSystemScreen extends StatelessWidget {
  const EndomembraneSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Endomembrane System",
      ),
    );
  }
}