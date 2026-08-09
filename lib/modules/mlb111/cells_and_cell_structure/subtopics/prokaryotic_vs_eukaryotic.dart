import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Prokaryotic vs Eukaryotic Cells";

const List<String> notes = [

  "All living organisms are made up of either prokaryotic or eukaryotic cells. Although both perform the same basic life processes, they differ greatly in their structure and complexity.",

  "",

  "[IMAGE]",

  "",

  "### Prokaryotic Cells",

  "Prokaryotic cells are simple cells that do not possess a true nucleus or membrane-bound organelles. Their DNA is found in the cytoplasm within a region called the nucleoid.",

  "",

  "Characteristics:",

  "• Found in Bacteria and Archaea.",
  "• No true nucleus.",
  "• DNA located in the nucleoid region.",
  "• No membrane-bound organelles.",
  "• Smaller than eukaryotic cells (1–10 μm).",
  "• Usually contain a single circular chromosome.",
  "• Contain 70S ribosomes.",
  "• Reproduce by binary fission.",

  "",

  "### Eukaryotic Cells",

  "Eukaryotic cells are larger and more complex. They contain a true nucleus enclosed by a nuclear membrane as well as specialised membrane-bound organelles.",

  "",

  "Characteristics:",

  "• Found in Animals.",
  "• Plants.",
  "• Fungi.",
  "• Protists.",
  "• Have a true nucleus.",
  "• DNA enclosed inside the nucleus.",
  "• Have membrane-bound organelles.",
  "• Larger than prokaryotic cells (10–100 μm).",
  "• DNA organised into multiple linear chromosomes.",
  "• Contain 80S ribosomes.",
  "• Divide by mitosis and meiosis.",

  "",

  "### Similarities",

  "Although they differ, both cell types share several important features:",

  "• Plasma membrane.",
  "• Cytoplasm.",
  "• DNA.",
  "• Ribosomes.",
  "• Carry out metabolism.",
  "• Grow and reproduce.",

  "",

  "### Comparison",

  "Prokaryotic Cells",

  "• Simple.",
  "• No nucleus.",
  "• No membrane-bound organelles.",
  "• Circular DNA.",
  "• Smaller.",
  "• Binary fission.",

  "",

  "Eukaryotic Cells",

  "• More complex.",
  "• True nucleus.",
  "• Membrane-bound organelles.",
  "• Linear chromosomes.",
  "• Larger.",
  "• Mitosis and meiosis.",

  "",

  "### Memory Trick",

  "Pro = Primitive (Simple).",

  "Eu = True (True Nucleus).",

  "",

  "EXAM TIP:",

  "The biggest difference between prokaryotic and eukaryotic cells is the presence of a membrane-bound nucleus and membrane-bound organelles.",

];
const List<String> images = [
  "assets/modules/mlb111/Eukaryote_Prokaryote.png",
];

class ProkaryoticVsEukaryoticScreen extends StatelessWidget {
  const ProkaryoticVsEukaryoticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Prokaryotic vs Eukaryotic",
      ),
    );
  }
}