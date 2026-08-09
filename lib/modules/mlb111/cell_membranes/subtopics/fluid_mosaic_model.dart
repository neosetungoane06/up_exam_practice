import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Fluid Mosaic Model";

const List<String> notes = [

  "### Fluid Mosaic Model",

  "The Fluid Mosaic Model explains the structure and behaviour of the plasma membrane. It was proposed by Singer and Nicolson in 1972 and is the accepted model of membrane structure.",

  "",

  "[IMAGE]",

  "",

  "### Why is it called Fluid?",

  "The membrane is described as fluid because many of its molecules are able to move sideways (laterally) within the phospholipid bilayer.",

  "",

  "This movement allows the membrane to:",

  "• Repair itself.",
  "• Grow.",
  "• Change shape.",
  "• Allow membrane proteins to move.",

  "",

  "### Why is it called Mosaic?",

  "The membrane is described as a mosaic because many different molecules are embedded within the phospholipid bilayer.",

  "",

  "These include:",

  "• Membrane proteins.",
  "• Cholesterol.",
  "• Glycoproteins.",
  "• Glycolipids.",

  "",

  "The arrangement resembles the different coloured pieces of a mosaic artwork.",

  "",

  "### Main Components",

  "• Phospholipid bilayer forms the framework.",
  "• Membrane proteins perform specialised functions.",
  "• Cholesterol regulates membrane fluidity.",
  "• Carbohydrate chains assist in cell recognition.",

  "",

  "### Importance of the Fluid Mosaic Model",

  "The model explains how the plasma membrane is both flexible and selectively permeable.",

  "It also explains how cells communicate, transport substances and recognise neighbouring cells.",

  "",

  "### Characteristics of the Plasma Membrane",

  "• Fluid.",
  "• Flexible.",
  "• Dynamic.",
  "• Selectively permeable.",

  "",

  "EXAM TIP: 'Fluid' refers to lateral movement of molecules. 'Mosaic' refers to the many different molecules embedded in the membrane.",

];

const List<String> images = [
  "assets/modules/mlb111/Mosaic_Model.png",
];

class FluidMosaicModelScreen extends StatelessWidget {
  const FluidMosaicModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Fluid Mosaic Model",
      ),
    );
  }
}