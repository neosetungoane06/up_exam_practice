import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Introduction to Cells";

const List<String> learningOutcomes = [
  "Explain what a cell is.",
  "Differentiate between prokaryotic and eukaryotic cells.",
  "Identify major organelles and their functions.",
  "Explain the endomembrane system.",
  "Explain the endosymbiotic theory.",
  "Distinguish between plant and animal cells.",
  "Describe the cytoskeleton and extracellular matrix.",
];

const List<String> notes = [
  "### What is a Cell?",

  "A cell is the basic structural and functional unit of life.",

  "• All living organisms are made of one or more cells.",
  "• Cells perform all life processes.",
  "• Cells carry out growth, respiration and reproduction.",

  "",

  "Examples:",

  "• A bacterium = one cell.",
  "• A human = trillions of cells.",
  "• A plant = millions to billions of cells.",

  "",

  "Cells perform all life processes including:",

  "• Growth.",
  "• Respiration.",
  "• Protein synthesis.",
  "• Reproduction.",
  "• Response to the environment.",

  "",

  "### Why do cells differ in size?",

  "As a cell grows larger, its volume increases much faster than its surface area.",

  "Mathematically:",

  "• Volume increases by m³.",
  "• Surface area increases by m².",

  "",

  "Many cells are small because they require less energy, nutrients and water.",

  "The main reason cells differ in size is because they have different specialisations and functions.",

  "Specialised cells have structures adapted to their specific jobs. For example, human nerve cells are very long to transmit impulses over long distances.",

  "Some plant cells are very large because of their central vacuole, which can occupy up to 30% or more of the cell's volume.",

  "",

  "EXAM TIP: If asked 'What is the basic unit of life?' Answer: The Cell.",
];

const List<String> images = [];

class IntroductionToCellsScreen extends StatelessWidget {
  const IntroductionToCellsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Introduction to Cells",
      ),
    );
  }
}