import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Endoplasmic Reticulum";

const List<String> notes = [

  "The Endoplasmic Reticulum (ER) is an extensive network of membranes that extends throughout the cytoplasm. It is responsible for synthesising, modifying and transporting proteins and lipids within the cell.",

  "",

  "The ER is continuous with the outer membrane of the nuclear envelope, allowing materials to move easily between the nucleus and the cytoplasm.",

  "",

  "[IMAGE]",

  "",

  "There are two types of Endoplasmic Reticulum:",

  "• Rough Endoplasmic Reticulum (RER)",
  "• Smooth Endoplasmic Reticulum (SER)",

  "",

  "### Rough Endoplasmic Reticulum (RER)",

  "The Rough ER is covered with ribosomes, giving it a rough appearance under the microscope. It specialises in the synthesis, folding and transport of proteins.",

  "",

  "Functions:",

  "• Synthesises proteins.",
  "• Folds newly made proteins into their correct shape.",
  "• Modifies proteins before transport.",
  "• Packages proteins into transport vesicles.",
  "• Sends proteins to the Golgi Apparatus.",

  "",

  "Proteins produced by the Rough ER include:",

  "• Secreted proteins (e.g. hormones and enzymes).",
  "• Membrane proteins.",
  "• Lysosomal enzymes.",

  "",

  "Key Feature:",

  "Rough ER = Has Ribosomes = Protein Production.",

  "",

  "### Smooth Endoplasmic Reticulum (SER)",

  "The Smooth ER has no ribosomes attached, giving it a smooth appearance. It specialises mainly in lipid synthesis and detoxification.",

  "",

  "Functions:",

  "• Synthesises phospholipids.",
  "• Synthesises steroids.",
  "• Detoxifies drugs and poisons.",
  "• Stores calcium ions (especially in muscle cells).",
  "• Participates in carbohydrate metabolism.",

  "",

  "Key Feature:",

  "Smooth ER = No Ribosomes = Lipid Production & Detoxification.",

  "",

  "### Relationship with Other Organelles",

  "The ER works closely with other organelles:",

  "• Ribosomes produce proteins.",
  "• Rough ER processes proteins.",
  "• Vesicles transport proteins.",
  "• Golgi Apparatus modifies and packages proteins for their final destination.",

  "",

  "### Comparison",

  "Rough ER",

  "• Ribosomes attached.",
  "• Produces proteins.",
  "• Sends proteins to the Golgi Apparatus.",

  "",

  "Smooth ER",

  "• No ribosomes.",
  "• Produces lipids.",
  "• Detoxifies harmful substances.",
  "• Stores calcium ions.",

  "",

  "### Memory Trick",

  "Rough = Ribosomes = Proteins.",

  "Smooth = Steroids, Lipids & Detoxification.",

  "",

  "EXAM TIP:",

  "If an organelle has ribosomes attached, it is the Rough ER. If it has no ribosomes, it is the Smooth ER.",

];

const List<String> images = [
  "assets/modules/mlb111/Endoplasmic_Reticulum.png",
];

class EndoplasmicReticulumScreen extends StatelessWidget {
  const EndoplasmicReticulumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Endoplasmic Reticulum",
      ),
    );
  }
}