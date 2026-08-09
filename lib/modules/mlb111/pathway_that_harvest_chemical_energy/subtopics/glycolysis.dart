import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Glycolysis";

const List<String> notes = [

  "### Stage 1: Glycolysis",

  "Glycolysis is the **first stage of cellular respiration**. The word glycolysis comes from two Greek words: 'glyco' meaning sugar and 'lysis' meaning splitting. Therefore, glycolysis literally means **splitting glucose (sugar)**.",

  "Its purpose is to begin breaking down one glucose molecule (6 carbon atoms) into two smaller molecules while capturing some of the released energy as ATP and NADH.",

  "",

  "### Where Does Glycolysis Occur?",

  "Glycolysis occurs in the **cytoplasm (cytosol)** of every living cell.",

  "Unlike the later stages of cellular respiration, glycolysis does **not require oxygen**. Because of this, glycolysis can occur under both aerobic (with oxygen) and anaerobic (without oxygen) conditions.",

  "",

  "### Inputs and Outputs of Glycolysis",

  "One molecule of glucose enters glycolysis.",

  "By the end of glycolysis, the cell produces:",

  "• 2 Pyruvate molecules (3 carbons each).",
  "• 2 NADH molecules.",
  "• Net gain of 2 ATP molecules.",
  "• Water (H₂O).",

  "",

  "The overall reaction can be simplified as:",

  "Glucose + 2 NAD⁺ + 2 ADP + 2 Pi → 2 Pyruvate + 2 NADH + 2 ATP + 2 H₂O + 2 H⁺",

  "",

  "### Why is Glycolysis Important?",

  "Glycolysis is essential because it is the only stage of cellular respiration that can produce ATP without oxygen.",

  "It also produces pyruvate and NADH, which are required for the remaining stages of aerobic cellular respiration.",

  "",

  "### The Three Phases of Glycolysis",

  "Although glycolysis is often described as one pathway, it can be divided into **three functional phases**:",

  "1. Preparatory Phase",
  "2. Cleavage Phase",
  "3. Oxidation and Payoff Phase",

  "",
"[IMAGE]",

  "### Phase 1: Preparatory Phase (Energy Investment Phase)",

  "The preparatory phase is called the **energy investment phase** because the cell must spend ATP before it can produce ATP.",

  "At this stage, one glucose molecule (6 carbons) is activated by adding phosphate groups. These phosphate groups make glucose less stable and prepare it to be split later in the pathway.",

  "During this phase:",

  "• 2 ATP molecules are used.",
  "• Glucose becomes phosphorylated twice.",
  "• The six-carbon glucose molecule is converted into fructose-1,6-bisphosphate.",
  "• No ATP is produced yet.",

  "",

  "Think of it like starting a business. Before making a profit, you first have to invest some money. Similarly, the cell first invests ATP before earning more ATP later.",

  "",

  "### Phase 2: Cleavage Phase",

  "The word **cleavage** means 'to split'.",

  "During this phase, the unstable six-carbon sugar is split into **two three-carbon molecules**.",

  "Each three-carbon molecule will continue through exactly the same reactions for the remainder of glycolysis.",

  "Important points:",

  "• One 6-carbon molecule becomes two 3-carbon molecules.",
  "• From this point onward, every reaction happens **twice** because there are now two molecules.",
  "• No ATP is produced during the cleavage phase.",

  "",

  "This explains why many products of glycolysis are produced in twos, such as 2 NADH and 4 ATP.",

  "",

  "### Phase 3: Oxidation and Payoff Phase",

  "This is the stage where the cell finally begins earning energy.",

  "Each of the two three-carbon molecules is oxidised. During oxidation, high-energy electrons are removed and transferred to NAD⁺, forming NADH.",

  "As these molecules continue through several enzyme-controlled reactions, ATP is produced by **substrate-level phosphorylation**.",

  "During this phase:",

  "• 2 NAD⁺ are reduced to 2 NADH.",
  "• 4 ATP molecules are produced.",
  "• Two pyruvate molecules are formed.",
  "• Water molecules are also produced.",

  "",

  "The oxidation and payoff phase is responsible for all of the ATP produced during glycolysis.",

"",

"### Why Do We Say Glycolysis Produces Only 2 ATP?",

"Students often become confused because they read that glycolysis produces **4 ATP**, yet textbooks say the net yield is **2 ATP**.",

"The explanation is simple:",

"• 2 ATP are USED during the Preparatory Phase.",
"• 4 ATP are PRODUCED during the Oxidation and Payoff Phase.",

"",

"Therefore:",

"Net ATP = ATP Produced − ATP Used",

"Net ATP = 4 − 2 = 2 ATP",

"",

"This is why glycolysis has a **net gain of only 2 ATP per glucose molecule**.",

"",

"### ATP Balance During Glycolysis",

"ATP used: 2",
"ATP produced: 4",
"Net ATP gained: 2",

"",

"### Remember the Products of Glycolysis",

"For every ONE glucose molecule:",

"• 2 Pyruvate",
"• 2 NADH",
"• 2 Net ATP",
"• Water",

"",

"### Exam Tips",

"• Glycolysis occurs in the cytoplasm, NOT the mitochondrion.",
"• Glycolysis does not require oxygen.",
"• The first phase INVESTS ATP.",
"• The final phase PRODUCES ATP.",
"• The net ATP yield is always 2 ATP per glucose molecule.",
"• Glycolysis is the only stage of cellular respiration that occurs in both aerobic and anaerobic respiration.",

"",

"### Memory Trick",

"Remember the numbers:",

"1 Glucose",
"↓",
"2 Pyruvate",
"2 NADH",
"2 Net ATP",

"",

"If you remember **2-2-2**, you'll remember the main products of glycolysis.",

"",

"### Quick Summary",

"Glycolysis is the first stage of cellular respiration. It takes place in the cytoplasm, requires no oxygen, and splits one glucose molecule into two pyruvate molecules. The pathway has three phases: the Preparatory Phase (uses ATP), the Cleavage Phase (splits glucose), and the Oxidation and Payoff Phase (produces ATP and NADH). Although 4 ATP are produced, 2 ATP were invested earlier, giving a net gain of only 2 ATP.",

"",

"### Connect the Dots",

"The two pyruvate molecules produced during glycolysis now enter the mitochondrion, where they undergo **Pyruvate Oxidation (the Link Reaction)** before entering the Citric Acid Cycle.",

];

const List<String> images = [
  "assets/modules/mlb111/Glycolysis_phases.png",
];

class GlycolysisScreen extends StatelessWidget {
  const GlycolysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Glycolysis",
      ),
    );
  }
}