import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Laws of Thermodynamics";

const List<String> notes = [

  "### Laws of Thermodynamics",

  "Every living organism depends on a continuous flow of energy. Cells constantly obtain, transfer and use energy to perform work such as growth, movement, protein synthesis and active transport.",

  "The laws of thermodynamics explain how energy behaves during these processes. They are fundamental principles of both physics and biology and help explain why living organisms require a constant supply of energy.",

  "[IMAGE]",

  "",

  "### What is Thermodynamics?",

  "Thermodynamics is the study of energy, how energy moves, and how energy changes from one form into another.",

  "Every biological process follows the laws of thermodynamics, from photosynthesis in plants to cellular respiration in humans.",

  "",

  "### First Law of Thermodynamics",

  "The First Law of Thermodynamics states that energy cannot be created or destroyed. It can only be transferred or converted from one form into another.",

  "",

  "In other words:",

  "• Energy cannot suddenly appear.",
  "• Energy cannot disappear.",
  "• Energy simply changes form.",

  "",

  "### Biological Examples",

  "Example 1: Photosynthesis",

  "Plants absorb light energy from the Sun and convert it into chemical energy stored in glucose.",

  "Light Energy → Chemical Energy",

  "",

  "Example 2: Cellular Respiration",

  "Cells break down glucose and convert its chemical energy into ATP, which powers cellular activities.",

  "Chemical Energy → ATP → Cellular Work",

  "",

  "Example 3: Muscle Contraction",

  "During exercise, ATP is converted into mechanical energy that moves muscles. Some of the energy is also released as heat.",

  "Chemical Energy → Mechanical Energy + Heat",

  "",

  "### Why is the First Law Important?",

  "The First Law explains why organisms cannot create energy from nothing. Every joule of energy used by cells must first come from food or sunlight.",

  "",

  "### Memory Tip",

  "The First Law is often called the Law of Conservation of Energy.",

  "Energy is conserved—it only changes form.",

  "",

  "### Second Law of Thermodynamics",

  "The Second Law of Thermodynamics states that every energy transfer or transformation increases the overall disorder (entropy) of the universe.",

  "During every energy conversion, some usable energy is inevitably lost as heat.",

  "",

  "This means no biological process is 100% efficient.",

  "",

  "Characteristics of the Second Law",

  "• Every energy conversion releases heat.",
  "• Some usable energy is always lost.",
  "• Entropy (disorder) increases.",
  "• Cells must continuously obtain new energy.",

  "",

  "### Biological Examples",

  "Example 1: Running",

  "When you run, your muscles use ATP to produce movement.",

  "Not all ATP becomes movement.",

  "Some energy is released as heat, causing your body temperature to rise and making you sweat.",

  "",

  "Example 2: Cellular Respiration",

  "During respiration, glucose contains a large amount of chemical energy.",

  "Only part of this energy is captured as ATP.",

  "The remaining energy leaves the body as heat.",

  "",

  "Example 3: A Laptop",

  "A laptop converts electrical energy into useful work, but it also becomes warm.",

  "Living cells behave similarly because they also release heat during energy conversions.",

  "",

  "### Why Do Organisms Need Food Every Day?",

  "Because of the Second Law, organisms continuously lose usable energy as heat.",

  "This lost energy cannot be reused directly.",

  "Therefore, organisms must constantly obtain new energy from food (or sunlight in plants) to remain alive.",

  "",

  "### Entropy",

  "Entropy is a measure of disorder or randomness.",

  "Natural processes tend to move towards greater entropy.",

  "Living organisms maintain order inside their cells by constantly using energy obtained from food or sunlight.",

  "",

  "### Comparing the Two Laws",

  "First Law",

  "• Energy cannot be created or destroyed.",
  "• Energy only changes form.",

  "",

  "Second Law",

  "• Every energy conversion loses some usable energy.",
  "• Heat is always produced.",
  "• Entropy increases.",

  "",

  "### Exam Tip",

  "Do not confuse the two laws.",

  "The First Law explains WHAT happens to energy.",

  "The Second Law explains WHY energy conversions are never perfectly efficient.",

  "",

  "### Memory Trick",

  "First Law = Energy Changes Form.",

  "Second Law = Some Energy Becomes Heat.",

  "",

  "### Quick Summary",

  "• Thermodynamics studies energy and energy transformations.",
  "• The First Law states that energy cannot be created or destroyed.",
  "• Energy only changes from one form into another.",
  "• The Second Law states that every energy transfer releases some heat.",
  "• No biological process is 100% efficient.",
  "• Organisms must continuously obtain energy because usable energy is constantly lost as heat.",

  "",

  "### Connect the Dots",

  "The laws of thermodynamics explain how energy behaves, but they do not explain whether a reaction can occur on its own.",

  "To answer that question, we study Gibbs Free Energy, which predicts whether reactions occur spontaneously.",

];

const List<String> images = [
  "assets/modules/mlb111/Laws_of_Thermodynamics.png",
];

class LawsOfThermodynamicsScreen extends StatelessWidget {
  const LawsOfThermodynamicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Laws of Thermodynamics",
      ),
    );
  }
}