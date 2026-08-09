import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Pyruvate Oxidation";

const List<String> notes = [

  "### Pyruvate Oxidation (Link Reaction)",

  "After glycolysis, the cell has produced two pyruvate molecules. However, pyruvate cannot enter the Citric Acid Cycle immediately. It must first undergo an important process called **Pyruvate Oxidation**, also known as the **Link Reaction**, because it links glycolysis to the Citric Acid Cycle.",

  "",

  "### Where Does Pyruvate Oxidation Occur?",

  "In eukaryotic cells, pyruvate oxidation takes place inside the **mitochondrial matrix**.",

  "Before this reaction can begin, the two pyruvate molecules produced during glycolysis must be transported from the cytoplasm into the mitochondrion.",

  "",

  "### Inputs",

  "For every ONE glucose molecule, glycolysis produces:",

  "• 2 Pyruvate",
  "• 2 NAD⁺",
  "• 2 Coenzyme A (CoA)",

  "",

  "These molecules are required for the Link Reaction to occur.",

  "",

  "### What Happens During Pyruvate Oxidation?",

  "Each pyruvate molecule contains **3 carbon atoms**.",

  "During pyruvate oxidation, each pyruvate undergoes three important changes:",

  "1. One carbon atom is removed and released as carbon dioxide (CO₂).",
  "2. The remaining two-carbon molecule is oxidised, transferring high-energy electrons to NAD⁺ to form NADH.",
  "3. Coenzyme A attaches to the two-carbon molecule to form Acetyl-CoA.",

  "",

  "The final product of this reaction is **Acetyl-CoA**, the molecule that enters the Citric Acid Cycle.",

  "",

  "### Overall Reaction",

  "Pyruvate + NAD⁺ + CoA → Acetyl-CoA + CO₂ + NADH",

  "",

  "Since one glucose produces **2 pyruvate molecules**, the Link Reaction happens **twice** for every glucose molecule.",

  "",

  "### Carbon Balance",

  "One glucose molecule contains **6 carbon atoms**.",

  "Let's follow those carbons:",

  "• Glucose (6C)",
  "• Glycolysis → 2 Pyruvate (3C each)",
  "• Each pyruvate loses one carbon as CO₂",
  "• Remaining 2-carbon molecule becomes Acetyl-CoA",

  "",

  "Therefore, after the Link Reaction:",

  "• 2 Acetyl-CoA (2 carbons each)",
  "• 2 Carbon dioxide (CO₂)",
  "• 2 NADH",

  "",

  "Notice that the total number of carbon atoms is still conserved:",

  "4 carbons in 2 Acetyl-CoA",
  "+",
  "2 carbons in 2 CO₂",
  "=",
  "6 carbons from the original glucose",

  "",

  "### Why is Acetyl-CoA Important?",

  "Acetyl-CoA is one of the most important molecules in metabolism because it carries the two-carbon acetyl group into the Citric Acid Cycle.",

  "Without Acetyl-CoA, the Citric Acid Cycle cannot begin.",

  "",

  "Think of Acetyl-CoA as a 'ticket' that allows carbon from glucose to enter the Krebs (Citric Acid) Cycle.",

  "",

  "### ATP Production",

  "Unlike glycolysis, **no ATP is produced directly during pyruvate oxidation**.",

  "Instead, this stage prepares molecules for the Citric Acid Cycle while producing NADH.",

  "The NADH produced here will later donate its high-energy electrons to the Electron Transport Chain, where ATP will be generated.",

  "",

  "### Products Per Glucose Molecule",

  "Because the Link Reaction occurs twice for every glucose molecule, the final products are:",

  "• 2 Acetyl-CoA",
  "• 2 NADH",
  "• 2 CO₂",
  "• 0 ATP",

  "",

  "### Why is it Called the Link Reaction?",

  "It is called the Link Reaction because it connects the first stage of cellular respiration (glycolysis) with the second major stage (the Citric Acid Cycle).",

  "Without this reaction, pyruvate cannot enter the Citric Acid Cycle.",

  "",

  "### Common Exam Mistakes",

  "• Thinking pyruvate oxidation produces ATP (it does not).",
  "• Forgetting that one carbon atom is removed from each pyruvate.",
  "• Forgetting that Acetyl-CoA contains only 2 carbon atoms.",
  "• Forgetting that the Link Reaction happens **twice** for every glucose molecule.",


"",

"### Memory Trick",

"Remember the numbers for the Link Reaction:",

"2 → 2 → 2 → 2",

"• 2 Pyruvate enter.",
"• 2 Acetyl-CoA leave.",
"• 2 NADH are produced.",
"• 2 CO₂ are released.",

"",

"If you remember **2-2-2-2**, you can answer almost every basic exam question on the Link Reaction.",

"",

"### Quick Summary",

"Pyruvate oxidation is the stage that prepares pyruvate for the Citric Acid Cycle. It occurs inside the mitochondrial matrix, where each pyruvate molecule loses one carbon atom as carbon dioxide, transfers high-energy electrons to NAD⁺ to form NADH, and combines with Coenzyme A to form Acetyl-CoA. Although no ATP is produced directly, this stage is essential because it produces the Acetyl-CoA and NADH needed for the next stages of cellular respiration.",

"",

"### Connect the Dots",

"At this point, glucose has been broken down into two molecules of Acetyl-CoA. The energy-rich electrons have begun to be captured as NADH, but only a small amount of the available energy has been harvested. The next stage, the **Citric Acid Cycle (Krebs Cycle)**, continues extracting energy from Acetyl-CoA while producing even more NADH and FADH₂ for the Electron Transport Chain.",

];

const List<String> images = [];

class PyruvateOxidationScreen extends StatelessWidget {
  const PyruvateOxidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Pyruvate Oxidation",
      ),
    );
  }
}