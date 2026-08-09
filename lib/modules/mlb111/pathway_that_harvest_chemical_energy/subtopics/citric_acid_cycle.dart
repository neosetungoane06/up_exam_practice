import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Citric Acid Cycle (Krebs Cycle)";

const List<String> notes = [

  "### Stage 2: Citric Acid Cycle (Krebs Cycle)",

  "After pyruvate oxidation, two molecules of Acetyl-CoA have been produced. These molecules now enter the **Citric Acid Cycle**, also called the **Krebs Cycle** or **Tricarboxylic Acid (TCA) Cycle**.",

  "The Citric Acid Cycle is the second major stage of aerobic cellular respiration. Its main purpose is **not** to produce large amounts of ATP directly, but to remove the remaining energy from Acetyl-CoA and transfer that energy into the electron carriers **NADH** and **FADH₂**.",

  "",

  "### Where Does the Citric Acid Cycle Occur?",

  "The Citric Acid Cycle takes place in the **mitochondrial matrix**, the innermost compartment of the mitochondrion.",

  "This location allows the NADH and FADH₂ produced to quickly deliver their high-energy electrons to the Electron Transport Chain, which is located in the inner mitochondrial membrane.",

  "",

  "[IMAGE]",

  "### What Enters the Cycle?",

  "Each turn of the Citric Acid Cycle begins with:",

  "• 1 Acetyl-CoA (2 carbons)",

  "",

  "Acetyl-CoA combines with a four-carbon molecule called **oxaloacetate**.",

  "This forms a six-carbon molecule called **citrate (citric acid)**.",

  "This is why the pathway is called the **Citric Acid Cycle**.",

  "",

  "### Why is it Called a Cycle?",

  "It is called a cycle because the starting molecule, **oxaloacetate**, is regenerated at the end of every turn.",

  "This means the pathway can continue repeatedly as long as Acetyl-CoA is available.",

  "",

  "Think of it like a Ferris wheel.",

  "People (Acetyl-CoA) get on the Ferris wheel, travel around once, then get off, while the Ferris wheel (oxaloacetate) stays behind ready for the next passenger.",

  "",

  "### What Happens During One Turn?",

  "During one complete turn of the cycle:",

  "• The two-carbon Acetyl-CoA is completely broken down.",
  "• High-energy electrons are removed.",
  "• Carbon dioxide is released as waste.",
  "• Small amounts of ATP are produced.",
  "• Oxaloacetate is regenerated to begin another cycle.",

  "",

  "### Products of One Turn of the Citric Acid Cycle",

  "Each **single turn** of the Citric Acid Cycle (using one Acetyl-CoA) produces:",

  "• 3 NADH",
  "• 1 FADH₂",
  "• 1 ATP (actually GTP, which is quickly converted to ATP)",
  "• 2 Carbon dioxide (CO₂)",

  "",

  "However, remember that **one glucose molecule produces TWO Acetyl-CoA molecules** during pyruvate oxidation.",

  "This means the Citric Acid Cycle turns **twice** for every glucose molecule.",

  "",

  "### Products Per Glucose Molecule",

  "After BOTH turns of the cycle, one glucose molecule produces:",

  "• 6 NADH",
  "• 2 FADH₂",
  "• 2 ATP",
  "• 4 CO₂",

  "",

  "These products are extremely important because they contain most of the remaining energy that was originally stored in glucose.",

  "",

  "### Why Are NADH and FADH₂ So Important?",

  "Imagine a power station that cannot generate electricity until fuel trucks arrive.",

  "The **Electron Transport Chain** is like the power station.",

  "NADH and FADH₂ are the fuel trucks.",

  "Their job is to transport high-energy electrons from the Citric Acid Cycle to the Electron Transport Chain.",

  "",

  "Without NADH and FADH₂:",

  "• The Electron Transport Chain would stop.",
  "• ATP production would decrease dramatically.",
  "• Cells would not have enough energy to survive.",

  "",

  "### Why is Only 1 ATP Produced Per Turn?",

  "Many students wonder why the Citric Acid Cycle produces only **1 ATP per turn**, even though so much energy is released.",

  "The reason is that the cycle is designed to capture **most of the energy inside NADH and FADH₂ instead of ATP**.",

  "Producing ATP directly at this stage would be inefficient because the Electron Transport Chain can convert the energy carried by NADH and FADH₂ into **far more ATP**.",

  "",

  "Think of it this way:",

  "Instead of receiving your salary in coins every day, your employer deposits it into your bank account. The money is still yours—you simply collect it later.",

  "Similarly, the Citric Acid Cycle 'stores' energy inside NADH and FADH₂ so that much larger amounts of ATP can be produced later.",

  "",

  "This is why the Electron Transport Chain produces the vast majority of ATP during cellular respiration.",

"",

"### Following the Carbon Atoms",

"The Citric Acid Cycle also explains where the carbon atoms from glucose go.",

"Each Acetyl-CoA contains **2 carbon atoms**.",

"During one turn of the cycle:",

"• Both carbon atoms are eventually released as carbon dioxide (CO₂).",
"• The oxaloacetate molecule is regenerated.",
"• No carbon atoms are lost from oxaloacetate.",

"",

"Since one glucose molecule produces **2 Acetyl-CoA molecules**, the cycle releases:",

"• 4 CO₂ molecules in total.",

"",

"This means all six carbon atoms from the original glucose molecule have now been accounted for:",

"• 2 CO₂ released during Pyruvate Oxidation.",
"• 4 CO₂ released during the Citric Acid Cycle.",
"• Total = 6 CO₂.",

"",

"### ATP Accounting So Far",

"After completing Glycolysis, Pyruvate Oxidation and the Citric Acid Cycle, the cell has produced:",

"• Glycolysis = 2 ATP",
"• Pyruvate Oxidation = 0 ATP",
"• Citric Acid Cycle = 2 ATP",

"",

"Total ATP produced directly so far = **4 ATP**.",

"",

"However, much more energy is still stored inside:",

"• 10 NADH",
"• 2 FADH₂",

"",

"These molecules will now enter the Electron Transport Chain, where the majority of ATP will be produced.",

"",

"### Common Exam Mistakes",

"• Thinking the Citric Acid Cycle produces large amounts of ATP directly.",
"• Forgetting that the cycle turns **twice** per glucose molecule.",
"• Forgetting that oxaloacetate is regenerated at the end of each cycle.",
"• Confusing products per turn with products per glucose molecule.",
"• Forgetting that NADH and FADH₂ are the main products of the cycle.",

"",

"### Memory Trick",

"Remember the numbers for **ONE turn**:",

"3 NADH",
"1 FADH₂",
"1 ATP",
"2 CO₂",

"",

"Remember the numbers for **ONE glucose (TWO turns)**:",

"6 NADH",
"2 FADH₂",
"2 ATP",
"4 CO₂",

"",

"A simple memory phrase is:",

"**3-1-1-2 becomes 6-2-2-4.**",

"",

"### Quick Summary",

"The Citric Acid Cycle occurs in the mitochondrial matrix and begins when Acetyl-CoA combines with oxaloacetate to form citrate. Through a series of enzyme-controlled reactions, Acetyl-CoA is completely oxidised, releasing carbon dioxide while transferring high-energy electrons to NAD⁺ and FAD. Although only a small amount of ATP is produced directly, the cycle generates large amounts of NADH and FADH₂, which will be used to produce most of the cell's ATP in the Electron Transport Chain.",

"",

"### Connect the Dots",

"The Citric Acid Cycle has now extracted almost all of the energy from glucose. The high-energy electron carriers, **NADH and FADH₂**, now move to the **Electron Transport Chain**, where their stored energy is used to generate the vast majority of ATP required by the cell.",

];

const List<String> images = [
  "assets/modules/mlb111/Citric_acid_cycle.png",
];

class CitricAcidCycleScreen extends StatelessWidget {
  const CitricAcidCycleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Citric Acid Cycle",
      ),
    );
  }
}