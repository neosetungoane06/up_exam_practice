import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Introduction to Cellular Respiration";

const List<String> notes = [

  "### Pathways that Harvest Chemical Energy",

  "Every living cell requires a continuous supply of energy to survive. Cells need energy to grow, divide, transport substances across membranes, repair damaged structures, build new molecules and carry out thousands of chemical reactions every second.",

  "Although the food we eat contains a large amount of chemical energy, cells cannot use this energy directly. Instead, the energy stored in food—especially glucose—must first be converted into ATP (adenosine triphosphate), the molecule that cells use as their immediate source of energy.",

  "The process that converts the chemical energy stored in glucose into ATP is called **cellular respiration**.",

  "[IMAGE]",

  "",

  "### Why Do Cells Need ATP?",

  "ATP is often called the **energy currency of the cell** because it stores energy in a form that cells can use immediately whenever energy is required.",

  "Cells use ATP for many important processes, including:",

  "• Active transport across cell membranes.",
  "• Muscle contraction.",
  "• Protein synthesis.",
  "• DNA replication.",
  "• Cell division.",
  "• Movement of cilia and flagella.",

  "",

  "### Cellular Respiration",

  "Cellular respiration is a metabolic pathway in which glucose is broken down in a series of enzyme-controlled reactions. During these reactions, the energy stored in glucose is gradually released and captured in ATP.",

  "Releasing energy gradually is important because it allows cells to capture most of the energy efficiently. If all the energy were released in one step, most of it would be lost as heat.",

  "",

  "### The Four Stages of Cellular Respiration",

  "Aerobic cellular respiration occurs in four connected stages:",

  "1. Glycolysis",
  "2. Pyruvate Oxidation (Link Reaction)",
  "3. Citric Acid Cycle (Krebs Cycle)",
  "4. Electron Transport Chain and Oxidative Phosphorylation",

  "Each stage produces molecules that are needed for the next stage, allowing glucose to be broken down step by step.",

  "",

  "### Overall Cellular Respiration Equation",

  "The overall equation for aerobic cellular respiration is:",

  "Glucose + Oxygen → Carbon Dioxide + Water + ATP",

  "",

  "This equation tells us that:",

  "• Glucose is the fuel molecule.",
  "• Oxygen is required for efficient ATP production.",
  "• Carbon dioxide is released as a waste product.",
  "• Water is produced during respiration.",
  "• ATP stores the usable energy released from glucose.",

  "",

  "### Exam Tip",

  "Cellular respiration does **NOT** create energy. It converts the chemical energy already stored in glucose into ATP that cells can use.",

  "",

  "### Quick Summary",

  "• Cells need energy for all life processes.",
  "• Glucose is the main fuel molecule.",
  "• ATP is the immediate energy source used by cells.",
  "• Cellular respiration converts glucose into ATP.",
  "• Aerobic cellular respiration occurs in four major stages.",

  "",

  "### Connect the Dots",

  "Before we study each stage of cellular respiration, we must first understand how electrons are transferred between molecules. This brings us to the next subtopic: **Oxidation and Reduction (Redox) Reactions.**",

];

const List<String> images = [
  "assets/modules/mlb111/Harvesting_energy_from_glucose.png",
];

class IntroductionToCellularRespirationScreen extends StatelessWidget {
  const IntroductionToCellularRespirationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Introduction to Cellular Respiration",
      ),
    );
  }
}