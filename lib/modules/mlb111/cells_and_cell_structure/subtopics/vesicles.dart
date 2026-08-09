import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Vesicles";

const List<String> notes = [
  "A vesicle is a small membrane-bound sac that stores and transports substances within the cell. Think of it like a shipping container.",

  "",

  "[IMAGE]",

  "",

  "### Functions",

  "• Stores substances.",
  "• Transports substances.",
  "• Moves proteins between organelles.",

  "",

  "### Formation of Vesicles",

  "• The Rough ER makes a new protein.",
  "• The protein moves against the inside wall (membrane) of the ER.",
  "• The ER membrane starts to bulge outward like a balloon inflating.",
  "• As it buds off, it forms a tiny membrane bubble with the protein trapped inside.",
  "• A transport vesicle is formed.",

  "",

  "### What Happens After",

  "• The transport vesicle moves along a microtubule (covered later).",
  "• Microtubules act like train tracks for vesicles.",
  "• The vesicle reaches the Golgi Apparatus.",
  "• It fuses with the Golgi Apparatus and delivers the protein.",
  "• When the protein is ready, a new vesicle buds from the Golgi Apparatus and transports it to another location inside or outside the cell.",

  "",

  "### Common Mistake",

  "Many students think the vesicle simply drops off the protein and floats away. This is incorrect.",

  "The vesicle actually fuses with the Golgi Apparatus, and its membrane becomes part of the Golgi membrane.",
];

const List<String> images = [
  "assets/modules/mlb111/vessicle.png",
];

class VesiclesScreen extends StatelessWidget {
  const VesiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure ",
        subtopic: "Vesicles",
      ),
    );
  }
}