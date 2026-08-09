import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Peroxisomes";

const List<String> notes = [
  "Peroxisomes contain enzymes that break down fatty acids and detoxify harmful substances. They also convert hydrogen peroxide into water and oxygen.",

  "",

  "[IMAGE]",

  "",

  "### Functions",

  "• Break down fatty acids.",
  "• Detoxify harmful chemicals.",
  "• Protect cells from oxidative damage.",
  "• Found mostly in eukaryotic cells.",

  "",

  "Key: Protects the cell from harmful chemicals.",

  "",

  "### Glyoxysomes",

  "Glyoxysomes are specialised peroxisomes found exclusively in plants and filamentous fungi.",

  "",

  "MEMORY TRICK: Peroxisomes = Detox Centres.",
];

const List<String> images = [
  "assets/modules/mlb111/Peroxisome.png",
];

class PeroxisomesScreen extends StatelessWidget {
  const PeroxisomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Peroxisomes",
      ),
    );
  }
}