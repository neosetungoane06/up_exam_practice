import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Catabolism vs Anabolism";

const List<String> notes = [

  "### Catabolism vs Anabolism",

  "Metabolism includes every chemical reaction that occurs inside a living organism. However, not all metabolic reactions perform the same function.",

  "Some reactions break molecules apart to release energy, while others build new molecules needed for growth and repair.",

  "These two groups of reactions are called catabolism and anabolism.",

  "[IMAGE]",

  "",

  "### The Two Components of Metabolism",

  "Metabolism can be divided into two major types:",

  "• Catabolism.",
  "• Anabolism.",

  "Both processes occur continuously inside living cells and depend on one another to keep organisms alive.",

  "",

  "### Catabolism",

  "Catabolism consists of chemical reactions that break large, complex molecules into smaller, simpler molecules.",

  "As these molecules are broken down, chemical energy stored within their bonds is released.",

  "This released energy is captured mainly as ATP, which cells use to perform work.",

  "",

  "Characteristics of Catabolism",

  "• Breakdown reactions.",
  "• Releases energy.",
  "• Produces ATP.",
  "• Usually involves digestion or degradation of molecules.",

  "",

  "Examples of Catabolism",

  "• Cellular respiration breaks down glucose to produce ATP.",
  "• Digestion breaks proteins into amino acids.",
  "• Digestion breaks starch into glucose.",
  "• Breakdown of stored fat to release energy during exercise.",

  "",

  "### Why is Catabolism Important?",

  "Without catabolism, cells would have no usable source of energy. Every heartbeat, muscle contraction and nerve impulse depends on ATP produced through catabolic reactions.",

  "",

  "### Anabolism",

  "Anabolism consists of chemical reactions that build large, complex molecules from smaller molecules.",

  "Because building molecules requires work, anabolic reactions consume energy, usually supplied by ATP.",

  "",

  "Characteristics of Anabolism",

  "• Building reactions.",
  "• Requires energy.",
  "• Uses ATP.",
  "• Produces larger, more complex molecules.",

  "",

  "Examples of Anabolism",

  "• Protein synthesis joins amino acids together to form proteins.",
  "• DNA synthesis builds new DNA molecules before cell division.",
  "• Photosynthesis produces glucose from carbon dioxide and water.",
  "• Formation of glycogen for energy storage.",

  "",

  "### Why is Anabolism Important?",

  "Without anabolism, organisms could not grow, replace damaged cells or produce the molecules needed for life.",

  "",

  "### Catabolism and Anabolism Work Together",

  "Catabolism releases energy by breaking molecules apart.",

  "Anabolism uses that released energy to build new molecules.",

  "These two processes are interdependent. One cannot function efficiently without the other.",

  "",

  "Think of building a house:",

  "• Catabolism is like demolishing an old building and collecting reusable bricks.",

  "• Anabolism is like using those bricks and energy to build a new house.",

  "",

  "### Memory Trick",

  "Catabolism = CUT molecules apart.",

  "Anabolism = ADD molecules together.",

  "",

  "### Exam Tip",

  "Students often confuse the two.",

  "Remember:",

  "Catabolism ALWAYS releases energy.",

  "Anabolism ALWAYS requires energy.",

  "",

  "### Quick Summary",

  "• Catabolism breaks large molecules into smaller molecules.",
  "• Catabolism releases energy and produces ATP.",
  "• Anabolism builds large molecules from smaller molecules.",
  "• Anabolism requires ATP.",
  "• Both processes together make up metabolism.",

  "",

  "### Connect the Dots",

  "Catabolism releases energy, but how is this energy stored in a form that cells can immediately use?",

  "The answer is ATP, the energy currency of the cell.",

  "This leads us to the next subtopic: ATP.",

];

const List<String> images = [
  "assets/modules/mlb111/Catabolism_vs_Anabolism.png",
];

class CatabolismVsAnabolismScreen extends StatelessWidget {
  const CatabolismVsAnabolismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Catabolism vs Anabolism",
      ),
    );
  }
}