import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "ATP and ATP Hydrolysis";

const List<String> notes = [

  "### ATP and ATP Hydrolysis",

  "Every living cell requires energy every second of its life. Cells need energy to divide, transport substances, contract muscles, send nerve impulses, repair tissues and build new molecules.",

  "However, cells cannot use the energy stored directly in glucose or fats. Instead, they first convert that energy into a special molecule called ATP.",

  "ATP is often called the **energy currency of the cell** because almost every biological process uses ATP as its immediate source of energy.",

  "[IMAGE]",

  "",

  "### What is ATP?",

  "ATP stands for Adenosine Triphosphate.",

  "It is a nucleotide that temporarily stores chemical energy inside its phosphate bonds.",

  "ATP is found in every living cell, from bacteria to humans.",

  "",

  "### Structure of ATP",

  "ATP consists of three main parts:",

  "• Adenine (a nitrogenous base).",
  "• Ribose (a five-carbon sugar).",
  "• Three phosphate groups.",

  "",

  "The phosphate groups are labelled:",

  "• Alpha (α)",
  "• Beta (β)"
      "• Gamma (γ)",

  "",

  "The bond between the second and third phosphate (β and γ phosphate) stores a large amount of usable chemical energy.",

  "",

  "### Why is ATP Called the Energy Currency?",

  "Just as money is exchanged to buy goods, ATP is exchanged to provide energy for cellular work.",

  "Cells 'spend' ATP whenever energy is needed.",

  "Because ATP can be made and broken down rapidly, it provides energy exactly when the cell needs it.",

  "",

  "### ATP Hydrolysis",

  "Hydrolysis means breaking a molecule using water.",

  "When ATP reacts with water, the last phosphate group is removed.",

  "",

  "ATP + H₂O → ADP + Pi + Energy",

  "",

  "Where:",

  "• ATP = Adenosine Triphosphate",
  "• ADP = Adenosine Diphosphate",
  "• Pi = Inorganic phosphate",
  "• H₂O = Water",

  "",

  "During this reaction, energy stored in ATP is released for cellular work.",

  "",

  "### Why Does Breaking ATP Release Energy?",

  "The phosphate groups are negatively charged and repel one another.",

  "When the last phosphate is removed, the molecule becomes more stable and energy is released.",

  "This released energy is immediately used by the cell.",

  "",

  "### Uses of ATP",

  "ATP provides energy for almost every activity inside a cell.",

  "Examples include:",

  "• Active transport across cell membranes.",
  "• Protein synthesis.",
  "• DNA replication.",
  "• Muscle contraction.",
  "• Cell division.",
  "• Movement of cilia and flagella.",
  "• Nerve impulse transmission.",
  "• Biosynthesis of carbohydrates, lipids and nucleic acids.",

  "",

  "### ATP Cycle",

  "ATP is continuously recycled inside cells.",

  "Step 1",

  "ATP is broken down into ADP and phosphate, releasing energy.",

  "",

  "Step 2",

  "Energy from cellular respiration is used to attach the phosphate back to ADP.",

  "",

  "ADP + Pi + Energy → ATP",

  "",

  "This cycle occurs millions of times every second inside your body.",

  "",

  "### Where is ATP Produced?",

  "Most ATP is produced inside mitochondria during cellular respiration.",

  "Plant cells also produce ATP inside chloroplasts during photosynthesis.",

  "",

  "### ATP is NOT Long-Term Energy Storage",

  "ATP stores energy only temporarily.",

  "The body stores energy long-term as:",

  "• Glycogen",
  "• Fats",
  "• Oils",

  "",

  "When energy is needed, these molecules are broken down to make ATP.",

  "",

  "### Biological Example",

  "Imagine you are running.",

  "Muscle cells rapidly hydrolyse ATP to power muscle contraction.",

  "As ATP levels decrease, mitochondria immediately produce more ATP from glucose through cellular respiration.",

  "Without ATP, muscles would stop contracting within seconds.",

  "",

  "### Common Misconception",

  "Students often think ATP contains a 'high-energy bond.'",

  "The bond itself is not special because it is unusually strong.",

  "Energy is released because the PRODUCTS formed after hydrolysis are more stable than ATP.",

  "",

  "### Memory Trick",

  "ATP = Available To Perform.",

  "Whenever a cell needs energy, think ATP.",

  "",

  "### Exam Tip",

  "Remember the ATP hydrolysis equation exactly:",

  "ATP + H₂O → ADP + Pi + Energy",

  "",

  "Also remember:",

  "Hydrolysis ALWAYS uses water.",

  "",

  "### Quick Summary",

  "• ATP stands for Adenosine Triphosphate.",
  "• ATP is the immediate energy currency of the cell.",
  "• ATP consists of adenine, ribose and three phosphate groups.",
  "• ATP hydrolysis releases usable energy.",
  "• ATP becomes ADP after losing one phosphate.",
  "• ATP powers almost every cellular process.",
  "• ATP is constantly recycled inside cells.",

  "",

  "### Connect the Dots",

  "ATP provides the energy required for many biochemical reactions, but enzymes control HOW FAST these reactions occur.",

  "The next topic explains how enzymes speed up reactions without being used up themselves.",

];

const List<String> images = [
  "assets/modules/mlb111/ATP_Hydrolysis_Diagram.png",
];

class AtpScreen extends StatelessWidget {
  const AtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "ATP",
      ),
    );
  }
}