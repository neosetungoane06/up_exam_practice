import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Photosynthesis vs Cellular Respiration";

const List<String> notes = [

  "### Photosynthesis vs Cellular Respiration",

  "Photosynthesis and cellular respiration are two complementary biological processes. Photosynthesis stores energy by producing glucose, while cellular respiration releases the energy stored in glucose to make ATP for cellular activities.",

  "",

  "[IMAGE]",

  "",

  "### Photosynthesis",

  "Photosynthesis stores energy from sunlight inside glucose molecules.",

  "Occurs in chloroplasts.",

  "Uses:",
  "• Carbon dioxide (CO₂)",
  "• Water (H₂O)",
  "• Light energy",

  "",

  "Produces:",
  "• Glucose (C₆H₁₂O₆)",
  "• Oxygen (O₂)",

  "",

  "### Cellular Respiration",

  "Cellular respiration breaks down glucose to release its stored energy as ATP.",

  "Occurs mainly in mitochondria.",

  "Uses:",
  "• Glucose",
  "• Oxygen",

  "",

  "Produces:",
  "• Carbon dioxide",
  "• Water",
  "• ATP",

  "",

  "### Comparison",

  "Photosynthesis:",
  "• Stores energy.",
  "• Builds glucose.",
  "• Requires sunlight.",

  "",

  "Cellular Respiration:",
  "• Releases energy.",
  "• Breaks down glucose.",
  "• Occurs continuously in living cells.",

  "",

  "### How They Depend on Each Other",

  "The products of photosynthesis become the reactants for cellular respiration.",

  "Similarly, the products of cellular respiration become the reactants for photosynthesis.",

  "This forms a continuous cycle in nature.",

  "",

  "### Rubisco",

  "Rubisco (Ribulose-1,5-bisphosphate Carboxylase/Oxygenase) is the enzyme that begins the Calvin Cycle.",

  "Its main job is to attach carbon dioxide (CO₂) to a molecule called RuBP. This first step is called carbon fixation.",

  "Rubisco is considered the most abundant enzyme on Earth because every photosynthetic plant needs it.",

  "",

  "Simple idea:",

  "• Rubisco grabs CO₂.",
  "• It attaches CO₂ to RuBP.",
  "• This starts the process of making glucose.",

  "",

  "### RuBP",

  "RuBP (Ribulose-1,5-bisphosphate) is a five-carbon sugar found in the Calvin Cycle.",

  "Think of RuBP as the molecule waiting to capture carbon dioxide.",

  "After Rubisco attaches CO₂ to RuBP, the unstable molecule immediately splits into smaller molecules that continue through the Calvin Cycle.",

  "",

  "Simple idea:",

  "RuBP is the 'CO₂ catcher' that starts sugar production.",

  "",

  "### G3P",

  "G3P (Glyceraldehyde-3-phosphate) is the first stable sugar produced during the Calvin Cycle.",

  "ATP and NADPH made during the light-dependent reactions provide the energy needed to produce G3P.",

  "Most G3P molecules stay in the Calvin Cycle to regenerate RuBP, allowing the cycle to continue.",

  "A small portion leaves the cycle and is used to manufacture glucose, starch, cellulose and many other carbohydrates.",

  "",

  "Simple idea:",

  "• G3P is the first sugar produced.",
  "• Some G3P becomes glucose.",
  "• Most G3P is recycled to make more RuBP.",

  "",

  "### Connecting the Calvin Cycle",

  "1. Rubisco joins CO₂ with RuBP.",
  "2. ATP and NADPH provide energy.",
  "3. G3P is produced.",
  "4. Some G3P becomes glucose.",
  "5. The remaining G3P regenerates RuBP so the cycle can repeat.",

  "",

  "### Memory Tricks",

  "Rubisco = CO₂ Catcher",

  "RuBP = Starting Molecule",

  "G3P = First Sugar Produced",

  "",

  "EXAM TIP:",

  "Do not confuse RuBP with G3P.",

  "RuBP starts the Calvin Cycle.",

  "G3P is the first sugar produced and is eventually used to make glucose.",

];

const List<String> images = [
  "assets/modules/mlb111/Photosynthesis_vs_Cellular_Respiration.png",
];

class PhotosynthesisVsCellularRespirationScreen extends StatelessWidget {
  const PhotosynthesisVsCellularRespirationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Photosynthesis vs Cellular Respiration ",
      ),
    );
  }
}