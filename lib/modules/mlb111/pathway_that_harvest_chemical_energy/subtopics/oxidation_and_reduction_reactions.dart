import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Oxidation and Reduction (Redox) Reactions";

const List<String> notes = [

  "### Oxidation and Reduction (Redox) Reactions",

  "Before studying the individual stages of cellular respiration, it is important to understand oxidation and reduction reactions. Almost every reaction involved in cellular respiration is a redox reaction.",

  "Redox reactions allow cells to transfer energy from one molecule to another by transferring **electrons**. These electron transfers ultimately make the production of ATP possible.",

  "",

  "### What is a Redox Reaction?",

  "A redox reaction is a chemical reaction in which electrons are transferred between atoms or molecules.",

  "Every redox reaction always consists of two processes occurring at the same time:",

  "• Oxidation",
  "• Reduction",

  "Because these two processes always happen together, they are called **oxidation-reduction (redox) reactions**.",

  "",

  "### Oxidation",

  "Oxidation is the **loss of electrons** by an atom, ion or molecule.",

  "When a substance loses electrons, it becomes oxidised.",

  "",

  "Example:",

  "Fe → Fe²⁺ + 2e⁻",

  "In this reaction, iron loses two electrons and is therefore oxidised.",

  "",

  "### Reduction",

  "Reduction is the **gain of electrons** by an atom, ion or molecule.",

  "When a substance gains electrons, it becomes reduced.",

  "",

  "Example:",

  "Cu²⁺ + 2e⁻ → Cu",

  "Copper ions gain two electrons and are therefore reduced.",

  "",

  "### Easy Memory Trick",

  "OIL RIG",

  "• Oxidation Is Loss (of electrons)",
  "• Reduction Is Gain (of electrons)",

  "",

  "This memory trick is commonly tested in university biology and chemistry courses.",

  "",

  "### Why Are Redox Reactions Important?",

  "Every time electrons move from one molecule to another, energy is transferred as well.",

  "Cells use these controlled electron transfers to gradually extract the chemical energy stored in glucose instead of releasing all the energy at once.",

  "This controlled release of energy allows cells to produce ATP efficiently.",

  "",

  "### Oxidising Agents and Reducing Agents",

  "Whenever a redox reaction occurs, one substance donates electrons while another substance accepts them. These substances have special names.",

  "",

  "#### Oxidising Agent",

  "An oxidising agent is a substance that **accepts electrons** from another substance.",

  "Because it gains electrons, the oxidising agent is itself **reduced**.",

  "",

  "Think of an oxidising agent as an 'electron taker'.",

  "",

  "#### Reducing Agent",

  "A reducing agent is a substance that **donates electrons** to another substance.",

  "Because it loses electrons, the reducing agent is itself **oxidised**.",

  "",

  "Think of a reducing agent as an 'electron giver'.",

  "",

  "### Example of a Redox Reaction",

  "Imagine two students exchanging books.",

  "Student A gives away a biology textbook.",
  "Student B receives the biology textbook.",

  "",

  "In this analogy:",

  "• Electrons are like the textbook.",
  "• Student A is the reducing agent because it gives something away.",
  "• Student B is the oxidising agent because it receives something.",

  "",

  "The same thing happens during cellular respiration. Molecules continuously pass electrons from one molecule to another.",

  "",

  "### Redox Reactions in Cellular Respiration",

  "Glucose contains a large amount of stored chemical energy because its electrons are held in high-energy chemical bonds.",

  "During cellular respiration, these electrons are gradually removed from glucose through a series of redox reactions.",

  "Instead of being transferred directly to oxygen, the electrons are first carried by specialised molecules called **electron carriers**.",

  "The two most important electron carriers are:",

  "• NAD⁺ (Nicotinamide Adenine Dinucleotide)",
  "• FAD (Flavin Adenine Dinucleotide)",

  "",

  "These molecules temporarily carry high-energy electrons from one stage of cellular respiration to another.",

  "",

  "When NAD⁺ accepts electrons, it becomes **NADH**.",

  "When FAD accepts electrons, it becomes **FADH₂**.",

  "",

  "These electron carriers later deliver the electrons to the Electron Transport Chain, where most ATP is produced.",

"",

"### A Simple Way to Remember Redox",

"Imagine passing a soccer ball between two players.",

"• The soccer ball represents the electrons.",
"• The player who gives away the ball is oxidised.",
"• The player who receives the ball is reduced.",

"",

"Electrons can never disappear during a reaction. They are always transferred from one substance to another.",

"",

"### Why Oxygen is Important",

"In aerobic cellular respiration, oxygen is the **final electron acceptor**.",

"After electrons have travelled through many redox reactions, they eventually reach oxygen.",

"Oxygen accepts these electrons together with hydrogen ions (H⁺) to form water (H₂O).",

"",

"Without oxygen, electrons cannot continue moving through the Electron Transport Chain, ATP production decreases dramatically, and cells are forced to use much less efficient pathways such as fermentation.",

"",

"### Key Concepts to Remember",

"• Oxidation = loss of electrons.",
"• Reduction = gain of electrons.",
"• Oxidation and reduction always occur together.",
"• Redox reactions transfer both electrons and energy.",
"• NAD⁺ and FAD are important electron carriers.",
"• NAD⁺ becomes NADH after gaining electrons.",
"• FAD becomes FADH₂ after gaining electrons.",
"• Oxygen is the final electron acceptor during aerobic respiration.",

"",

"### Common Exam Mistakes",

"• Thinking oxidation means gaining oxygen only. In university biology, oxidation is defined primarily as the **loss of electrons**.",
"• Confusing oxidising agents with reducing agents.",
"• Forgetting that oxidation and reduction always happen at the same time.",
"• Forgetting that NADH and FADH₂ carry high-energy electrons to the Electron Transport Chain.",

"",

"### Quick Summary",

"Redox reactions are the foundation of cellular respiration because they allow energy to be transferred safely from glucose to ATP. As glucose loses electrons (is oxidised), electron carriers such as NAD⁺ and FAD capture these electrons and transport them to the Electron Transport Chain, where most ATP is produced.",

"",

"### Connect the Dots",

"Now that you understand how energy is transferred through redox reactions, we can begin the first stage of cellular respiration: **Glycolysis**, where glucose starts to be broken down and the first ATP molecules are produced.",

];

const List<String> images = [];

class OxidationAndReductionReactionScreen extends StatelessWidget {
  const OxidationAndReductionReactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Pathway that Harvest Chemical Energy",
        subtopic: "Oxidation and Reduction Reaction",
      ),
    );
  }
}