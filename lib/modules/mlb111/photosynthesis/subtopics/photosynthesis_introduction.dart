import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Introduction to Photosynthesis";

const List<String> notes = [

  "### What is Photosynthesis?",

  "Photosynthesis is the biological process by which plants, algae and certain bacteria convert light energy from the Sun into chemical energy stored in glucose. Glucose is the main food produced during photosynthesis and serves as an important source of energy for living organisms.",

  "Photosynthesis is one of the most important biological processes because almost all life on Earth depends on it either directly or indirectly.",

  "",

  "[IMAGE]",

  "",

  "### Why is Photosynthesis Important?",

  "Photosynthesis is essential because it:",

  "• Produces glucose, which serves as food for plants.",
  "• Releases oxygen needed for aerobic respiration.",
  "• Removes carbon dioxide from the atmosphere.",
  "• Forms the foundation of almost every food chain.",
  "• Stores solar energy as chemical energy.",

  "",

  "### Reactants and Products",

  "Photosynthesis requires three main inputs (reactants):",

  "• Carbon dioxide (CO₂) from the atmosphere.",
  "• Water (H₂O) absorbed by the roots.",
  "• Light energy from the Sun.",

  "",

  "The process produces two main products:",

  "• Glucose (C₆H₁₂O₆).",
  "• Oxygen (O₂).",

  "",

  "### Word Equation",

  "Carbon dioxide + Water + Light Energy → Glucose + Oxygen",

  "",

  "### Balanced Chemical Equation",

  "6CO₂ + 6H₂O + Light Energy → C₆H₁₂O₆ + 6O₂",

  "",

  "### Where Does Photosynthesis Occur?",

  "Photosynthesis takes place inside specialised organelles called chloroplasts. Chloroplasts are found mainly in the cells of leaves because leaves receive the greatest amount of sunlight.",

  "Inside the chloroplast are structures that capture light energy and use it to manufacture glucose.",

  "",

  "### Two Main Stages of Photosynthesis",

  "Photosynthesis occurs in two connected stages:",

  "• Light-dependent reactions.",
  "• Calvin Cycle (Light-independent reactions).",

  "",

  "During the light-dependent reactions, sunlight is absorbed and converted into chemical energy in the form of ATP and NADPH.",

  "The Calvin Cycle then uses ATP and NADPH together with carbon dioxide to manufacture glucose.",

  "",

  "The next subtopics will explain these stages in detail.",

  "",

  "### Key Idea",

  "Photosynthesis converts light energy into chemical energy stored in glucose.",

  "",

  "### Memory Trick",

  "Think of a chloroplast as a solar-powered food factory:",

  "• Sunlight = Electricity.",
  "• Chloroplast = Factory.",
  "• Carbon dioxide and water = Raw materials.",
  "• Glucose = Finished product.",
  "• Oxygen = Waste product released.",

  "",

  "EXAM TIP:",

  "Always remember the three reactants (carbon dioxide, water and light energy) and the two products (glucose and oxygen).",

];

const List<String> images = [
  "assets/modules/mlb111/Photosynthesis.png",
];

class PhotosynthesisIntroductionScreen extends StatelessWidget {
  const PhotosynthesisIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Photosynthesis Introduction",
      ),
    );
  }
}