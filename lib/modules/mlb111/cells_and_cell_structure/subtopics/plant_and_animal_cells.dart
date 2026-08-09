import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Plant and Animal Cells";

const List<String> notes = [
  "Plant and animal cells share many structures, but they also possess important differences.",

  "",

  "[IMAGE]",

  "",

  "### Plant Cells",

  "• Contain chloroplasts.",
  "• Have a cell wall.",
  "• Possess a large central vacuole.",
  "• Generally have a fixed shape.",

  "",

  "### Animal Cells",

  "• Do not contain chloroplasts.",
  "• Lack a cell wall.",
  "• Have smaller vacuoles.",
  "• Usually have a flexible shape.",

  "",

  "EXAM TIP: Cell wall + Chloroplast + Large Vacuole = Plant Cell.",
];

const List<String> images = [
  "assets/modules/mlb111/Cells.png",
];

class PlantAndAnimalCellsScreen extends StatelessWidget {
  const PlantAndAnimalCellsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Plant and Animal Cells",
      ),
    );
  }
}