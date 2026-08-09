import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Mitochondria and Chloroplasts";

const List<String> notes = [
  "Mitochondria generate ATP through cellular respiration while chloroplasts carry out photosynthesis in plants.",

  "",

  "[IMAGE]",

  "",

  "### Functions",

  "• Mitochondria produce energy in the form of ATP.",
  "• Chloroplasts convert light energy into chemical energy.",
  "• Both possess their own DNA.",
  "• Both support the Endosymbiotic Theory.",

  "",

  "MEMORY TRICK: Mitochondria = Powerhouse of the Cell.",
];

const List<String> images = [
  "assets/modules/mlb111/Chloroplast_Mitochondria.png",
];

class MitochondriaAndChloroplastScreen extends StatelessWidget {
  const MitochondriaAndChloroplastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Mitochondria and Chloroplast",
      ),
    );
  }
}