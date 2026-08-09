import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Facilitated Diffusion";

const List<String> notes = [

  "### Facilitated Diffusion",

  "Facilitated diffusion is the passive movement of substances across the plasma membrane with the help of transport proteins.",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Some molecules are too large or too charged to pass directly through the phospholipid bilayer. They require specialised membrane proteins to help them cross the membrane.",

  "",

  "### How Facilitated Diffusion Works",

  "Step 1: A concentration gradient exists.",

  "Step 2: Molecules move from HIGH concentration to LOW concentration.",

  "Step 3: Transport proteins help molecules cross the membrane.",

  "Step 4: No ATP is required because movement is down the concentration gradient.",

  "",

  "### Characteristics",

  "• Passive transport.",
  "• No ATP required.",
  "• High → Low concentration.",
  "• Uses transport proteins.",
  "• Highly specific.",

  "",

  "### Types of Transport Proteins",

  "Facilitated diffusion occurs through:",

  "• Channel proteins.",
  "• Carrier proteins.",

  "",

  "### Channel Proteins",

  "[IMAGE]",

  "",

  "Channel proteins form tiny hydrophilic pores through the membrane.",

  "They allow specific ions or small molecules to move rapidly through the membrane.",

  "",

  "Examples:",

  "• Water channels (Aquaporins).",
  "• Sodium ion channels.",
  "• Potassium ion channels.",

  "",

  "Characteristics:",

  "• Forms a tunnel.",
  "• Very fast transport.",
  "• Highly selective.",
  "• No ATP required.",

  "",

  "### Carrier Proteins",

  "[IMAGE]",

  "",

  "Carrier proteins bind to a specific molecule and change their shape to move it across the membrane.",

  "",

  "How Carrier Proteins Work",

  "1. Molecule binds to carrier protein.",

  "2. Protein changes shape.",

  "3. Molecule is released on the opposite side.",

  "4. Protein returns to its original shape.",

  "",

  "Characteristics:",

  "• Binds specific molecules.",
  "• Shape changes during transport.",
  "• Slower than channel proteins.",
  "• No ATP required.",

  "",

  "### Channel Proteins vs Carrier Proteins",

  "Channel Protein:",

  "• Forms a tunnel.",
  "• Molecules pass through.",

  "",

  "Carrier Protein:",

  "• Binds the molecule.",
  "• Changes shape.",
  "• Releases molecule.",

  "",

  "### Examples of Facilitated Diffusion",

  "• Glucose entering cells.",
  "• Water moving through aquaporins.",
  "• Sodium ions moving through ion channels.",

  "",

  "### Memory Trick",

  "Channel = Tunnel.",
  "Carrier = Taxi.",

  "",

  "### Quick Summary",

  "✓ Passive transport\n"
      "✓ No ATP\n"
      "✓ High → Low\n"
      "✓ Uses Channel or Carrier Proteins",

  "",

  "EXAM TIP: Facilitated diffusion is passive transport that requires membrane proteins but does NOT require ATP.",

];

const List<String> images = [
  "assets/modules/mlb111/Channel.png",
  "assets/modules/mlb111/Carrier.png",
];

class FacilitatedDiffusionScreen extends StatelessWidget {
  const FacilitatedDiffusionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Facilitated Diffusion",
      ),
    );
  }
}