import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Lysosomes";

const List<String> notes = [

  "Lysosomes are membrane-bound organelles that contain powerful digestive enzymes. They act as the recycling and waste disposal centres of animal cells by breaking down unwanted materials and worn-out cell components.",

  "",

  "[IMAGE]",

  "",

  "### Structure of Lysosomes",

  "Lysosomes are small spherical organelles surrounded by a single membrane. Their membrane protects the rest of the cell from the powerful digestive enzymes they contain.",

  "",

  "### Formation of Lysosomes",

  "Lysosomes are produced by the Golgi Apparatus. Digestive enzymes are packaged into vesicles that bud off from the Golgi and become lysosomes.",

  "",

  "### Functions of Lysosomes",

  "• Digest worn-out organelles.",
  "• Break down waste materials.",
  "• Destroy bacteria, viruses and pathogens.",
  "• Recycle useful cellular components.",
  "• Digest food particles taken into the cell.",
  "• Help remove damaged cell parts.",

  "",

  "### Autophagy",

  "Autophagy means 'self-eating'. During this process, lysosomes digest damaged or old organelles so that their useful components can be recycled by the cell.",

  "",

  "### Phagocytosis",

  "White blood cells engulf bacteria through phagocytosis. Lysosomes then fuse with the vesicle containing the bacterium and digest it using hydrolytic enzymes.",

  "",

  "### Acidic Environment",

  "The inside of a lysosome has a very low pH (about pH 5). This acidic environment activates the digestive enzymes.",

  "If these enzymes entered the cytoplasm, they would become much less active because the cytoplasm has a near-neutral pH.",

  "",

  "### Hydrolytic Enzymes",

  "Lysosomes contain hydrolytic enzymes that break down:",

  "• Proteins.",
  "• Lipids.",
  "• Carbohydrates.",
  "• Nucleic acids.",

  "",

  "### Why Lysosomes are Important",

  "Without lysosomes, waste materials and damaged organelles would accumulate inside the cell, eventually causing the cell to malfunction.",

  "",

  "### Memory Trick",

  "Lysosome = Cell Recycling Centre.",

  "Digest → Recycle → Protect.",

  "",

  "EXAM TIP:",

  "Remember these three key facts:",

  "• Produced by the Golgi Apparatus.",
  "• Contain hydrolytic enzymes.",
  "• Maintain an acidic pH for digestion.",

];

const List<String> images = [
  "assets/modules/mlb111/Lysosome.png",
];

class LysosomesScreen extends StatelessWidget {
  const LysosomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Lysosomes",
      ),
    );
  }
}