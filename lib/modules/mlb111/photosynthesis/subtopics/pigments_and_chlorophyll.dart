import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Photosynthetic Pigments and Chlorophyll";

const List<String> notes = [

  "### Photosynthetic Pigments",

  "Photosynthetic pigments are coloured molecules that absorb light energy during photosynthesis. The absorbed light energy is converted into chemical energy that is eventually stored in glucose.",

  "",

  "[IMAGE]",

  "",

  "### What is Chlorophyll?",

  "Chlorophyll is the main green pigment found inside chloroplasts. It absorbs light energy from the Sun and begins the light-dependent reactions of photosynthesis.",

  "Plants appear green because chlorophyll reflects green wavelengths of light while absorbing mainly red and blue light.",

  "",

  "### Chlorophyll a",

  "Chlorophyll a is the primary photosynthetic pigment.",

  "• Present in all photosynthetic organisms.",
  "• Directly participates in the light-dependent reactions.",
  "• Converts light energy into chemical energy by exciting electrons.",

  "",

  "### Chlorophyll b",

  "Chlorophyll b is an accessory pigment.",

  "• Absorbs wavelengths of light that chlorophyll a absorbs less efficiently.",
  "• Transfers the captured light energy to chlorophyll a.",
  "• Increases the overall efficiency of photosynthesis.",

  "",

  "### Why are Accessory Pigments Important?",

  "Different pigments absorb different wavelengths of light. Having several pigments allows plants to capture more sunlight under different light conditions, increasing the amount of energy available for photosynthesis.",

  "",

  "### Absorption of Light",

  "Chlorophyll absorbs mainly:",

  "• Blue light.",
  "• Red light.",

  "",

  "It reflects:",

  "• Green light.",

  "",

  "This reflected green light is what gives most plants their green colour.",

  "",

  "### Where are Chlorophyll Pigments Found?",

  "Chlorophyll molecules are embedded within the thylakoid membranes of chloroplasts. Here they are organised into specialised structures called photosystems.",

  "",

  "### Photosystems",

  "Photosystems are groups of chlorophyll molecules, accessory pigments and proteins that work together to capture light energy.",

  "There are two major photosystems:",

  "• Photosystem II (PSII).",
  "• Photosystem I (PSI).",

  "Photosystem II captures light first and begins the movement of electrons. Photosystem I captures light again to produce NADPH. Together they drive the light-dependent reactions.",

  "",

  "### Summary",

  "• Chlorophyll a = Primary pigment.",
  "• Chlorophyll b = Accessory pigment.",
  "• Located in thylakoid membranes.",
  "• Absorbs mainly red and blue light.",
  "• Reflects green light.",

  "",

  "### Memory Trick",

  "Think of chlorophyll a as the 'main worker' and chlorophyll b as the 'assistant' that collects extra sunlight and passes the energy to chlorophyll a.",

  "",

  "EXAM TIP:",

  "Students often confuse chlorophyll a and chlorophyll b. Remember that chlorophyll a directly drives photosynthesis, while chlorophyll b helps collect additional light energy and transfers it to chlorophyll a.",

];

const List<String> images = [
  "assets/modules/mlb111/Chlorophyll_A_and_B.png",
];

class PigmentsAndChlorophyllScreen extends StatelessWidget {
  const PigmentsAndChlorophyllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Pigments and Chlorophyll",
      ),
    );
  }
}