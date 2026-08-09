import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Diffusion";

const List<String> notes = [

  "### Diffusion",

  "Diffusion is the net movement of molecules from an area of high concentration to an area of low concentration until equilibrium is reached.",

  "",

  "[IMAGE]",

  "",

  "### How Diffusion Works",

  "Step 1: Molecules are crowded together.",

  "Step 2: Molecules move randomly in all directions.",

  "Step 3: More molecules move away from the crowded area than return.",

  "Step 4: Eventually both areas have equal concentrations (equilibrium).",

  "",

  "### Characteristics",

  "• No ATP required.",
  "• High → Low concentration.",
  "• Continues until equilibrium.",
  "• Happens because molecules are constantly moving.",

  "",

  "### Examples",

  "• Oxygen entering cells.",
  "• Carbon dioxide leaving cells.",
  "• Perfume spreading through a room.",
  "• Food colouring spreading through water.",

  "",

  "### Factors Affecting Diffusion",

  "• Concentration gradient.",
  "• Temperature.",
  "• Surface area.",
  "• Distance.",
  "• Size of molecules.",

  "",

  "### Memory Trick",

  "Perfume filling a room = Diffusion.",

  "",

  "### Quick Summary",

  "✓ High → Low\n"
      "✓ No ATP\n"
      "✓ Random molecular movement\n"
      "✓ Ends at equilibrium",

];

const List<String> images = [
  "assets/modules/mlb111/diffusion.png",
];

class DiffusionScreen extends StatelessWidget {
  const DiffusionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Diffusion",
      ),
    );
  }
}