import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Factors Affecting Photosynthesis";

const List<String> notes = [

  "### What are Limiting Factors?",

  "Photosynthesis depends on several environmental conditions. If one condition is in short supply, it slows down the entire process, even if all the other conditions are ideal.",

  "The factor that slows the rate of photosynthesis is called the limiting factor.",

  "",

  "[IMAGE]",

  "",

  "### Main Factors Affecting Photosynthesis",

  "• Light intensity.",
  "• Carbon dioxide concentration.",
  "• Temperature.",
  "• Water availability.",
  "• Chlorophyll concentration.",

  "",

  "### 1. Light Intensity",

  "Light provides the energy needed for the light-dependent reactions.",

  "When light intensity increases, the rate of photosynthesis also increases because more light energy can be absorbed by chlorophyll.",

  "However, after a certain point, increasing light intensity no longer increases photosynthesis because another factor becomes limiting.",

  "",

  "### 2. Carbon Dioxide Concentration",

  "Carbon dioxide is the source of carbon used to manufacture glucose during the Calvin Cycle.",

  "Low carbon dioxide means the Calvin Cycle cannot make glucose efficiently.",

  "Increasing carbon dioxide concentration increases photosynthesis until another factor becomes limiting.",

  "",

  "### 3. Temperature",

  "Photosynthesis is controlled by enzymes. Like all enzymes, they work best within an optimum temperature range.",

  "• Low temperatures slow enzyme activity.",
  "• Optimum temperatures produce the highest photosynthetic rate.",
  "• Very high temperatures denature enzymes and photosynthesis decreases rapidly.",

  "",

  "### 4. Water Availability",

  "Water is a raw material for photosynthesis.",

  "Water is split during photolysis to provide electrons, hydrogen ions and oxygen.",

  "When water becomes scarce, plants close their stomata to reduce water loss. This also reduces carbon dioxide entry, slowing photosynthesis.",

  "",

  "### 5. Chlorophyll Concentration",

  "Chlorophyll absorbs light energy.",

  "Plants with more chlorophyll absorb more light, allowing greater photosynthetic activity.",

  "Plants that are unhealthy or nutrient deficient may produce less chlorophyll, reducing photosynthesis.",

  "",

  "### The Limiting Factor Principle",

  "At any given time, only one factor usually limits photosynthesis.",

  "For example:",

  "• Plenty of sunlight but very little carbon dioxide → carbon dioxide becomes the limiting factor.",
  "• Plenty of CO₂ but very little light → light becomes the limiting factor.",

  "",

  "### Simple Example",

  "Think of photosynthesis like baking a cake.",

  "Even if you have enough flour, eggs and sugar, you cannot bake the cake without an oven.",

  "The missing oven is the limiting factor.",

  "",

  "### Quick Summary",

  "Light supplies energy.",
  "Carbon dioxide supplies carbon.",
  "Water supplies electrons and hydrogen.",
  "Temperature controls enzyme activity.",
  "Chlorophyll captures light.",

  "",

  "EXAM TIP:",

  "Whenever the rate of photosynthesis stops increasing after one factor is increased, another factor has become the limiting factor."
];

const List<String> images = [
  "assets/modules/mlb111/Factors_Affecting_Photosynthesis.png",
];

class FactorsAffectingPhotosynthesisScreen extends StatelessWidget {
  const FactorsAffectingPhotosynthesisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Factors Affecting Photosynthesis",
      ),
    );
  }
}