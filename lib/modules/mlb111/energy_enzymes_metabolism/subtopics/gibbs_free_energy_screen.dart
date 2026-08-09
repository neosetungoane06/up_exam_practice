import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Gibbs Free Energy (G), Enthalpy and Temperature";

const List<String> notes = [

  "### Gibbs Free Energy (G), Enthalpy and Temperature",

  "The laws of thermodynamics explain how energy behaves, but biologists also need to know whether a chemical reaction will occur naturally or whether it requires additional energy.",

  "To answer this question, scientists use Gibbs Free Energy.",

  "",

  "### Gibbs Free Energy (G)",

  "Gibbs Free Energy (G) is the amount of energy available in a system to perform useful work at constant temperature and pressure.",

  "It predicts whether a chemical reaction is spontaneous (can occur naturally) or non-spontaneous (requires energy input).",

  "",

  "In living organisms, Gibbs Free Energy helps us determine whether biochemical reactions such as cellular respiration, photosynthesis and protein synthesis can occur.",

  "",

  "### The Gibbs Free Energy Equation",

  "ΔG = ΔH − TΔS",

  "",

  "Where:",

  "• ΔG = Change in Gibbs Free Energy (kJ/mol)",
  "• ΔH = Change in Enthalpy (heat energy)",
  "• T = Absolute temperature (Kelvin)",
  "• ΔS = Change in Entropy",

  "",

  "Every variable in this equation influences whether a reaction can proceed naturally.",

  "",

  "### What is Enthalpy (ΔH)?",

  "Enthalpy is the total heat energy contained in a system.",

  "During chemical reactions, heat may be released or absorbed.",

  "",

  "If heat is released:",

  "• ΔH is negative.",
  "• The reaction is called exothermic.",

  "",

  "Example:",

  "Cellular respiration releases heat while breaking down glucose.",

  "",

  "If heat is absorbed:",

  "• ΔH is positive.",
  "• The reaction is called endothermic.",

  "",

  "Example:",

  "Photosynthesis absorbs light energy to produce glucose.",

  "",

  "### What is Entropy (ΔS)?",

  "Entropy measures the amount of disorder or randomness in a system.",

  "",

  "High entropy means:",

  "• Molecules are more disordered.",
  "• Greater randomness.",

  "",

  "Low entropy means:",

  "• Molecules are highly organised.",
  "• Less randomness.",

  "",

  "Living organisms constantly use energy to maintain low entropy (high order).",

  "",

  "### Absolute Temperature (T)",

  "The Gibbs equation uses absolute temperature, measured in Kelvin (K), NOT degrees Celsius (°C).",

  "",

  "Kelvin is used because it begins at absolute zero, the lowest possible temperature where molecular movement theoretically stops.",

  "",

  "### Converting Celsius to Kelvin",

  "Kelvin = Celsius + 273",

  "",

  "Examples:",

  "• 0°C = 273 K",
  "• 25°C = 298 K",
  "• 37°C (human body temperature) = 310 K",
  "• 100°C = 373 K",

  "",

  "### Why Kelvin?",

  "Using Kelvin ensures temperature values are never negative, making thermodynamic calculations mathematically valid.",

  "",

  "### Understanding ΔG",

  "After calculating ΔG, the result tells us whether the reaction is spontaneous.",

  "",

  "If ΔG is negative (ΔG < 0):",

  "• The reaction is spontaneous.",
  "• Energy is released.",
  "• The reaction can occur naturally.",

  "",

  "Example:",

  "Cellular respiration has a negative ΔG because glucose breaks down naturally and releases energy.",

  "",

  "If ΔG is positive (ΔG > 0):",

  "• The reaction is non-spontaneous.",
  "• Energy must be supplied.",
  "• The reaction cannot proceed by itself.",

  "",

  "Example:",

  "Photosynthesis requires sunlight because its ΔG is positive.",

  "",

  "If ΔG = 0:",

  "• The reaction is at equilibrium.",
  "• Forward and reverse reactions occur at the same rate.",

  "",

  "### Biological Examples",

  "Cellular Respiration",

  "• ΔH is negative because heat is released.",
  "• ΔG is negative.",
  "• Therefore respiration occurs spontaneously.",

  "",

  "Photosynthesis",

  "• Requires sunlight.",
  "• ΔH is positive because energy is absorbed.",
  "• ΔG is positive.",
  "• Therefore it is non-spontaneous without light.",

  "",

  "### Worked Example",

  "Suppose:",

  "ΔH = −120 kJ/mol",
  "T = 300 K",
  "ΔS = −0.20 kJ/mol·K",

  "",

  "Step 1:",

  "ΔG = ΔH − TΔS",

  "",

  "Step 2:",

  "ΔG = −120 − [300 × (−0.20)]",

  "",

  "Step 3:",

  "ΔG = −120 + 60",

  "",

  "Answer:",

  "ΔG = −60 kJ/mol",

  "",

  "Since ΔG is negative, the reaction is spontaneous.",

  "",

  "### Practice Question 1",

  "Calculate ΔG if:",

  "ΔH = 90 kJ/mol",
  "T = 310 K",
  "ΔS = 0.15 kJ/mol·K",

  "",

  "Answer:",

  "ΔG = 90 − (310 × 0.15)",

  "ΔG = 90 − 46.5",

  "ΔG = 43.5 kJ/mol",

  "Positive ΔG → Non-spontaneous.",

  "",

  "### Practice Question 2",

  "Convert the following temperatures into Kelvin:",

  "• 18°C",
  "• 30°C",
  "• 45°C",

  "",

  "Answers:",

  "• 291 K",
  "• 303 K",
  "• 318 K",

  "",

  "### Memory Trick",

  "Negative ΔG = Goes by itself.",

  "Positive ΔG = Push required.",

  "",

  "### Exam Tip",

  "Never substitute Celsius directly into the Gibbs equation.",

  "Always convert Celsius to Kelvin first.",

  "",

  "Also remember:",

  "• ΔH tells you about heat.",
  "• ΔS tells you about disorder.",
  "• T is always Kelvin.",
  "• ΔG tells you whether the reaction is spontaneous.",

  "",

  "### Quick Summary",

  "• Gibbs Free Energy predicts whether reactions occur naturally.",
  "• ΔG = ΔH − TΔS.",
  "• Enthalpy represents heat energy.",
  "• Entropy measures disorder.",
  "• Temperature must always be in Kelvin.",
  "• Negative ΔG = spontaneous.",
  "• Positive ΔG = non-spontaneous.",
  "• ΔG = 0 means equilibrium.",

];
const List<String> images = [];

class GibbsFreeEnergyScreen extends StatelessWidget {
  const GibbsFreeEnergyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Gibbs Free Energy",
      ),
    );
  }
}