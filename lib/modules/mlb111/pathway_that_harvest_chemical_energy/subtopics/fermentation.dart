import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Fermentation";

const List<String> notes = [

  "### Fermentation",

  "By this point you have learned that aerobic cellular respiration produces most of the ATP needed by cells. However, aerobic respiration depends on one very important molecule: **oxygen**.",

  "So what happens when oxygen suddenly becomes unavailable?",

  "Do cells simply stop producing ATP and die immediately?",

  "Fortunately, the answer is **no**.",

  "Cells have a backup system called **fermentation**.",

  "",

  "### Connecting to the Previous Topic",

  "In the Electron Transport Chain you learned that oxygen acts as the **final electron acceptor**.",

  "When oxygen is present:",

  "• NADH donates electrons to the Electron Transport Chain.",
  "• FADH₂ also donates electrons.",
  "• ATP Synthase produces large amounts of ATP.",
  "• NAD⁺ is regenerated.",
  "• FAD is regenerated.",

  "",

  "When oxygen is absent:",

  "• The Electron Transport Chain stops.",
  "• NADH cannot unload its electrons.",
  "• NAD⁺ is no longer regenerated.",
  "• Glycolysis eventually stops.",

  "",

  "Since glycolysis requires NAD⁺, the cell has a serious problem.",

  "Fermentation solves this problem.",

  "",

  "### Aerobic vs Anaerobic Respiration",

  "[IMAGE]",

  "The image above summarizes the major difference between aerobic and anaerobic respiration before we study fermentation in detail.",

  "",

  "#### Aerobic Respiration",

  "• Requires oxygen.",
  "• Uses glycolysis, pyruvate oxidation, the Citric Acid Cycle and the Electron Transport Chain.",
  "• Produces approximately **30–32 ATP** per glucose molecule.",
  "• Produces carbon dioxide and water.",

  "",

  "Think of aerobic respiration as driving a car on a full tank of fuel. Every stage operates efficiently and maximum energy is obtained.",

  "",

  "#### Anaerobic Conditions",

  "When oxygen is absent, the Electron Transport Chain cannot function.",

  "Only glycolysis can continue, provided the cell finds a way to regenerate NAD⁺.",

  "That regeneration process is called **fermentation**.",

  "",

  "### What is Fermentation?",

  "Fermentation is an **anaerobic metabolic pathway** that regenerates NAD⁺ from NADH so that glycolysis can continue producing ATP when oxygen is unavailable.",

  "",

  "This definition is extremely important.",

  "Many students incorrectly think fermentation exists mainly to produce ATP.",

  "This is **not true**.",

  "Its primary purpose is:",

  "• Regenerate NAD⁺.",
  "• Allow glycolysis to continue.",
  "• Keep producing small amounts of ATP.",

  "",

  "### Very Important Exam Idea",

  "Fermentation itself produces **NO additional ATP**.",

  "The ATP obtained under anaerobic conditions comes ONLY from glycolysis.",

  "Therefore:",

  "• Glycolysis = 2 ATP.",
  "• Fermentation = 0 ATP.",

  "",

  "Students often lose marks by saying fermentation produces ATP.",

  "",

  "### How Does Fermentation Work?",

  "Remember what happened when oxygen was absent:",

  "• The Electron Transport Chain stopped.",
  "• NADH accumulated.",
  "• NAD⁺ became unavailable.",
  "• Glycolysis was about to stop.",

  "",

  "Fermentation fixes this problem by transferring the electrons carried by NADH to another molecule.",

  "When NADH gives away its electrons:",

  "• NADH becomes NAD⁺.",
  "• NAD⁺ returns to glycolysis.",
  "• Glycolysis can continue producing ATP.",

  "",

  "Think of NAD⁺ as an empty delivery truck.",

  "During glycolysis the truck becomes full (NADH).",

  "If the truck never empties, no more deliveries can be made.",

  "Fermentation empties the truck so it can keep collecting more electrons.",

  "",

  "### Types of Fermentation",

  "There are two major types of fermentation commonly studied in biology:",

  "• Lactic Acid Fermentation.",
  "• Alcoholic Fermentation.",

  "",
"[IMAGE]",
  "### 1. Lactic Acid Fermentation",

  "Lactic acid fermentation occurs mainly in:",

  "• Human muscle cells.",
  "• Some bacteria.",

  "",

  "When oxygen becomes limited, pyruvate accepts electrons from NADH and is converted into **lactate (lactic acid)**.",

  "",

  "Reaction:",

  "Pyruvate + NADH → Lactate + NAD⁺",

  "",

  "Notice what happened.",

  "The important product is actually **NAD⁺**, not lactate.",

  "Lactate is simply the molecule that accepts the electrons.",

  "",

  "### Real-Life Example",

  "Imagine sprinting as fast as you can for 200 metres.",

  "Your muscles suddenly require ATP faster than oxygen can be delivered by your blood.",

  "To prevent glycolysis from stopping, your muscle cells temporarily switch to lactic acid fermentation.",

  "This allows ATP production to continue for a short period.",

  "",

  "After exercise, oxygen becomes available again and much of the lactate is transported to the liver where it can be converted back into glucose.",

  "",

  "### Why Do Muscles Become Tired?",

  "Many students believe lactic acid directly causes muscle soreness the next day.",

  "Current research shows that delayed muscle soreness is mainly caused by microscopic muscle damage rather than lactate accumulation.",

  "",

  "However, lactate accumulation does contribute to temporary fatigue during intense exercise.",

  "",

  "### 2. Alcoholic Fermentation",

  "Alcoholic fermentation occurs mainly in:",

  "• Yeast.",
  "• Some fungi.",
  "• Certain microorganisms.",

  "",

  "Here, pyruvate is converted into ethanol and carbon dioxide while NAD⁺ is regenerated.",

  "",

  "Overall reaction:",

  "Pyruvate → Ethanol + CO₂",

  "",

  "During this process NADH is converted back into NAD⁺.",

  "",

  "### Real-Life Example",

  "Bread making.",

  "Yeast performs alcoholic fermentation inside dough.",

  "The carbon dioxide gas becomes trapped inside the dough, causing it to rise.",

  "",

  "Another example is beer and wine production.",

  "In these industries, the ethanol produced during fermentation is the desired product.",


"",

"### Comparing the Two Types of Fermentation",

"Although both types of fermentation regenerate NAD⁺, they produce different end products.",

"",

"Lactic Acid Fermentation:",

"• End product = Lactate.",
"• Occurs in animal muscle cells and some bacteria.",
"• No carbon dioxide is produced.",

"",

"Alcoholic Fermentation:",

"• End products = Ethanol and carbon dioxide.",
"• Occurs in yeast and certain microorganisms.",
"• Carbon dioxide is released.",

"",

"### ATP Comparison",

"One of the most common university exam questions asks students to compare ATP production during aerobic respiration and fermentation.",

"",

"Aerobic Respiration:",

"• Glycolysis = 2 ATP.",
"• Citric Acid Cycle = 2 ATP.",
"• Electron Transport Chain = about 26–28 ATP.",
"• Total = approximately **30–32 ATP** per glucose molecule.",

"",

"Fermentation:",

"• Glycolysis = 2 ATP.",
"• Fermentation = 0 ATP.",
"• Total = **2 ATP** per glucose molecule.",

"",

"This means aerobic respiration produces **about 15 times more ATP** than fermentation.",

"",

"### Why Doesn't Every Cell Always Ferment?",

"If fermentation allows ATP production without oxygen, why don't cells always use it?",

"",

"Because fermentation is extremely inefficient.",

"Imagine two businesses.",

"Business A earns R32 from every product sold.",

"Business B earns only R2 from every product sold.",

"Both businesses survive, but Business A is far more efficient.",

"Similarly, cells prefer aerobic respiration because it extracts almost all the energy stored in glucose.",

"",

"Fermentation is simply an emergency backup system used when oxygen is unavailable.",

"",

"### Big Picture",

"Let's connect everything you have learned about cellular respiration:",

"",

"1. Glycolysis breaks glucose into pyruvate and produces 2 ATP.",
"2. Pyruvate Oxidation converts pyruvate into Acetyl-CoA.",
"3. The Citric Acid Cycle removes the remaining energy and produces NADH and FADH₂.",
"4. The Electron Transport Chain uses NADH and FADH₂ to produce most ATP.",
"5. Oxygen acts as the final electron acceptor.",
"6. If oxygen is unavailable, fermentation regenerates NAD⁺ so glycolysis can continue.",

"",

"### Exam Essentials",

"Make sure you can answer these questions without hesitation:",

"• Where does glycolysis occur?",
"• Why is pyruvate converted into Acetyl-CoA?",
"• Why does the Citric Acid Cycle produce little ATP directly?",
"• What is the function of NADH?",
"• What is the function of FADH₂?",
"• Why is oxygen called the final electron acceptor?",
"• What is oxidative phosphorylation?",
"• What is the main purpose of fermentation?",
"• Why does fermentation regenerate NAD⁺?",
"• Compare ATP production in aerobic respiration and fermentation.",

"",

"### ATP Numbers You MUST Know",

"These values are commonly tested:",

"• Glycolysis = 2 ATP.",
"• Pyruvate Oxidation = 0 ATP.",
"• Citric Acid Cycle = 2 ATP.",
"• Electron Transport Chain = approximately 26–28 ATP.",
"• Total Aerobic Respiration = approximately 30–32 ATP.",
"• Total Fermentation = 2 ATP.",

"",

"### Memory Trick",

"Remember the order using:",

"**Good People Can Eat Fries**",

"• G = Glycolysis.",
"• P = Pyruvate Oxidation.",
"• C = Citric Acid Cycle.",
"• E = Electron Transport Chain.",
"• F = Fermentation (only when oxygen is absent).",

"",

"### Connect the Dots",

"Congratulations! You have now completed the complete pathway of **cellular respiration**, from glucose entering glycolysis to ATP being produced through oxidative phosphorylation and the backup process of fermentation.",

"Understanding how these stages connect is one of the most important foundations in cell biology because almost every process in living organisms depends on ATP.",

];

const List<String> images = [
  "assets/modules/mlb111/Aerobic_vs_Anaerobic.png",
  "assets/modules/mlb111/fermentation.png",
];

class FermentationScreen extends StatelessWidget {
  const FermentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Fermentation",
      ),
    );
  }
}