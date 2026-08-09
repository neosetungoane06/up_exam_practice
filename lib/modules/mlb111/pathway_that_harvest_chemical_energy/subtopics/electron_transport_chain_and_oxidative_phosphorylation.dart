import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle =
    "Electron Transport Chain and Oxidative Phosphorylation";

const List<String> notes = [

  "### Electron Transport Chain (ETC) and Oxidative Phosphorylation",

  "The Electron Transport Chain (ETC) is the **final stage of aerobic cellular respiration**. This is the stage where the cell produces **the largest amount of ATP**.",

  "During glycolysis, pyruvate oxidation and the Citric Acid Cycle, only a small amount of ATP was produced directly. Most of the energy from glucose was stored inside **NADH** and **FADH₂**.",

  "The Electron Transport Chain now extracts that stored energy and converts it into ATP.",

  "",
  "[IMAGE]",

  "### Connecting the Previous Stage",

  "In the previous stage (Citric Acid Cycle), the cell produced:",

  "• 6 NADH",
  "• 2 FADH₂",
  "• 2 ATP",

  "",

  "Notice something important:",

  "Only **2 ATP** were produced directly during the Citric Acid Cycle.",

  "So where is the rest of the energy from glucose?",

  "The answer is:",

  "It is stored inside **NADH** and **FADH₂**.",

  "",

  "Think of NADH and FADH₂ as rechargeable batteries.",

  "The previous stages charged these batteries with energy.",

  "The Electron Transport Chain now 'uses' those batteries to power ATP production.",

  "",

  "### Where Does the ETC Occur?",

  "The Electron Transport Chain is located in the **inner mitochondrial membrane**.",

  "This membrane contains many proteins arranged in order. These proteins form the Electron Transport Chain.",

  "The folded structure of the inner membrane (called **cristae**) provides a very large surface area so that many Electron Transport Chains can operate at the same time.",

  "",

  "### What Enters the Electron Transport Chain?",

  "The Electron Transport Chain receives:",

  "• NADH",
  "• FADH₂",
  "• Oxygen",

  "",

  "Notice that **glucose never enters the Electron Transport Chain.**",

  "Glucose has already been completely broken down during the previous stages.",

  "Only the **high-energy electrons** that were removed from glucose continue into the ETC.",

  "",

  "### The Main Purpose of the Electron Transport Chain",

  "The purpose of the ETC is to use the energy carried by electrons to produce ATP.",

  "Instead of producing ATP directly in one reaction, the Electron Transport Chain releases energy little by little, making ATP production much more efficient.",

  "",

  "### Step-by-Step: How the Electron Transport Chain Works",

  "The Electron Transport Chain can be understood as a relay race. Instead of athletes passing a baton, proteins pass high-energy electrons from one protein complex to the next.",

  "",

  "#### Step 1: NADH and FADH₂ Donate Electrons",

  "NADH and FADH₂ arrive carrying high-energy electrons collected from glycolysis, pyruvate oxidation and the Citric Acid Cycle.",

  "These electron carriers donate their electrons to the first protein complexes of the Electron Transport Chain.",

  "Once they donate their electrons:",

  "• NADH becomes NAD⁺.",
  "• FADH₂ becomes FAD.",

  "These molecules are then recycled back to earlier stages of cellular respiration where they can collect more high-energy electrons.",

  "",

  "### Step 2: Electrons Move Through Protein Complexes",

  "The donated electrons move from one protein complex to another.",

  "Each time electrons move to the next complex, they lose a little of their energy.",

  "Instead of wasting this energy as heat, the cell captures it for useful work.",

  "",

  "Think of a ball rolling down a staircase.",

  "The ball loses energy step by step rather than all at once.",

  "Similarly, electrons release their energy gradually as they move through the ETC.",

  "",

  "### Step 3: Hydrogen Ions Are Pumped",

  "The released energy is used to pump hydrogen ions (H⁺) from the mitochondrial matrix into the intermembrane space.",

  "As more hydrogen ions are pumped:",

  "• The intermembrane space becomes crowded with H⁺ ions.",
  "• The mitochondrial matrix has fewer H⁺ ions.",

  "",

  "This creates a **hydrogen ion concentration gradient**.",

  "Just like water builds up behind a dam, hydrogen ions build up on one side of the membrane, storing potential energy.",

  "",

  "### Step 4: ATP Synthase Produces ATP",

  "Hydrogen ions naturally want to move back into the mitochondrial matrix because of the concentration gradient.",

  "However, they cannot simply pass through the membrane.",

  "The only way back is through a special protein called **ATP Synthase**.",

  "",

  "As hydrogen ions flow through ATP Synthase:",

  "• ATP Synthase rotates like a turbine.",
  "• The energy of the moving hydrogen ions is captured.",
  "• ADP combines with inorganic phosphate (Pi).",
  "• ATP is produced.",

  "",

  "This process is called **chemiosmosis**.",

  "",

  "### Why is ATP Synthase Compared to a Turbine?",

  "Imagine water flowing through a hydroelectric dam.",

  "The moving water spins a turbine which generates electricity.",

  "Inside the mitochondrion:",

  "• Hydrogen ions = flowing water.",
  "• ATP Synthase = turbine.",
  "• ATP = electricity produced.",

  "",

  "This analogy is frequently used because it perfectly explains how ATP Synthase works.",

  "",

  "### Oxidative Phosphorylation",

  "The entire process of producing ATP using the Electron Transport Chain and ATP Synthase is called **oxidative phosphorylation**.",

  "",

  "Let's break down the name:",

  "• Oxidative = electrons are removed from molecules (oxidation reactions occur).",
  "• Phosphorylation = adding a phosphate (Pi) to ADP to form ATP.",

  "",

  "Therefore:",

  "**Oxidative Phosphorylation = ATP production that occurs because electrons move through the Electron Transport Chain.**",

  "",

  "### What is Phosphorylation?",

  "Phosphorylation simply means **adding a phosphate group (Pi)** to another molecule.",

  "",

  "For ATP production:",

  "ADP + Pi → ATP",

  "",

  "Think of ADP as a rechargeable battery that has lost most of its charge.",

  "Adding the phosphate group 'recharges' the battery, producing ATP.",

  "",

  "### Different Types of Phosphorylation",

  "Cells produce ATP using two major types of phosphorylation.",

  "",

  "#### 1. Substrate-Level Phosphorylation",

  "A phosphate group is transferred **directly** from another molecule to ADP.",

  "Occurs during:",

  "• Glycolysis.",
  "• Citric Acid Cycle.",

  "",

  "Only a small amount of ATP is produced this way.",

  "",

  "#### 2. Oxidative Phosphorylation",

  "ATP is produced **indirectly** using energy released by electrons moving through the Electron Transport Chain.",

  "",

  "Occurs during:",

  "• Electron Transport Chain.",

  "",

  "This stage produces **the vast majority of ATP** during cellular respiration.",

  "",

  "### Why Does NADH Produce More ATP Than FADH₂?",

  "This is a favourite university exam question.",

  "",

  "NADH donates its electrons to **Complex I**, which is the very beginning of the Electron Transport Chain.",

  "Since NADH enters earlier, its electrons travel through **more protein complexes**, releasing more energy.",

  "",

  "FADH₂ enters later at **Complex II**.",

  "Its electrons skip Complex I, so fewer hydrogen ions are pumped.",

  "Less hydrogen pumping means less ATP is produced.",

  "",

  "Approximate ATP yield:",

  "• 1 NADH → about 2.5 ATP.",
  "• 1 FADH₂ → about 1.5 ATP.",

  "",

  "Think of two runners.",

  "NADH starts at the beginning of the race, so it covers the full distance.",

  "FADH₂ starts halfway through, so it has less distance over which to release energy.",

  "",

"",

"### Why is Oxygen Essential?",

"Many students simply memorise that oxygen is required for aerobic respiration, but understanding **why** oxygen is required is far more important.",

"",

"Electrons continuously move through the Electron Transport Chain.",

"However, they **cannot remain inside the chain forever**.",

"Just like cars cannot keep driving around a roundabout forever without an exit, electrons also need somewhere to leave the Electron Transport Chain.",

"",

"That exit is **oxygen**.",

"",

"Oxygen acts as the **final electron acceptor**.",

"At the end of the ETC:",

"• Oxygen accepts the low-energy electrons.",
"• Oxygen also combines with hydrogen ions (H⁺).",
"• Water (H₂O) is formed.",

"",

"Chemical reaction:",

"½O₂ + 2H⁺ + 2e⁻ → H₂O",

"",

"This is why water is one of the final products of aerobic cellular respiration.",

"",

"### What Happens if Oxygen is NOT Present?",

"If oxygen is absent, there is **no final electron acceptor**.",

"This causes a chain reaction of problems inside the cell.",

"",

"1. Electrons cannot leave the Electron Transport Chain.",

"2. The Electron Transport Chain becomes blocked.",

"3. Hydrogen ions are no longer pumped across the membrane.",

"4. The hydrogen ion gradient disappears.",

"5. ATP Synthase stops producing ATP.",

"6. Oxidative phosphorylation stops completely.",

"",

"Think of a traffic jam.",

"If the last car cannot move, every car behind it also stops.",

"The same thing happens with electrons inside the Electron Transport Chain.",

"",

"### What Happens if NADH is NOT Available?",

"NADH is the main supplier of high-energy electrons to the Electron Transport Chain.",

"Without NADH:",

"• Very few electrons enter the ETC.",
"• Hydrogen ion pumping decreases dramatically.",
"• ATP production falls sharply.",
"• Cells produce far less energy.",

"",

"### What Happens if FADH₂ is NOT Available?",

"FADH₂ also transports high-energy electrons.",

"Without FADH₂:",

"• Fewer electrons enter Complex II.",
"• ATP production decreases.",
"• However, NADH can still continue supplying electrons.",

"",

"Therefore the ETC still works, but it becomes less efficient.",

"",

"### What Happens if BOTH NADH and FADH₂ are Missing?",

"This is the worst-case scenario.",

"Without both electron carriers:",

"• No electrons enter the Electron Transport Chain.",
"• No hydrogen ions are pumped.",
"• ATP Synthase cannot function.",
"• Oxidative phosphorylation completely stops.",
"• The cell produces almost no ATP from aerobic respiration.",

"",

"Without ATP, active transport, protein synthesis, muscle contraction and many other life processes eventually stop.",

"",

"### Why is Water Produced?",

"Some students think water is simply a waste product.",

"It is actually produced because oxygen combines with the electrons and hydrogen ions at the end of the Electron Transport Chain.",

"This removes electrons from the chain and allows the Electron Transport Chain to continue operating continuously.",

"",

"Without water formation:",

"• Oxygen could not remove electrons.",
"• Electrons would accumulate.",
"• ATP production would stop.",

"",

"### ATP Yield from Oxidative Phosphorylation",

"Approximately:",

"• 10 NADH × 2.5 ATP ≈ 25 ATP.",
"• 2 FADH₂ × 1.5 ATP ≈ 3 ATP.",

"",

"Total ATP produced during oxidative phosphorylation ≈ **28 ATP**.",

"",

"Adding the ATP produced directly earlier:",

"• Glycolysis = 2 ATP.",
"• Citric Acid Cycle = 2 ATP.",

"",

"Grand Total ≈ **30–32 ATP per glucose molecule** (depending on cell type and shuttle systems).",

"",
  "Review o the whole process from the beginning:",
  "[IMAGE]",

"### Exam Tip",

"Remember:",

"• NADH and FADH₂ do **NOT** produce ATP directly.",
"• They transport high-energy electrons.",
"• ATP is produced only when hydrogen ions flow through ATP Synthase.",

"",

"### Connect the Dots",

"We have now completed **aerobic cellular respiration**, where oxygen is available and ATP production is maximised.",

"But what happens if oxygen is unavailable?",

"Cells still need ATP to survive.",

"The next subtopic explains **Fermentation**, a process that regenerates NAD⁺ so glycolysis can continue producing small amounts of ATP even in the absence of oxygen.",

];

const List<String> images = [
  "assets/modules/mlb111/Electron_Transport_Chain .png",
  "assets/modules/mlb111/Harvesting_energy_from_glucose.png",

];

class ElectronTransportChainAndOxidativePhosphorylationScreen
    extends StatelessWidget {
  const ElectronTransportChainAndOxidativePhosphorylationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Electron Transport Chain and Oxidative Phosphorylation",
      ),
    );
  }
}