import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Enzyme Structure and Mechanism of Action";

const List<String> notes = [

  "### Enzymes",

  "Cells carry out thousands of chemical reactions every second. Although many of these reactions are spontaneous, most would occur far too slowly to sustain life without enzymes.",

  "Enzymes are biological catalysts that speed up chemical reactions without being permanently changed or consumed during the reaction.",

  "Nearly every metabolic reaction inside living organisms depends on enzymes.",

  "",

  "### What is a Biological Catalyst?",

  "A catalyst is a substance that increases the rate of a chemical reaction without being used up.",

  "Enzymes are called biological catalysts because they perform this function inside living organisms.",

  "",

  "Characteristics of Enzymes",

  "• Most enzymes are proteins.",
  "• They increase the rate of chemical reactions.",
  "• They lower activation energy.",
  "• They are highly specific.",
  "• They are not consumed during reactions.",
  "• They can be reused many times.",

  "",

  "### Why are Enzymes Important?",

  "Without enzymes, many reactions required for life would take hours, days or even years instead of fractions of a second.",

  "Examples include:",

  "• Digestion of food.",
  "• DNA replication.",
  "• Cellular respiration.",
  "• Photosynthesis.",
  "• Protein synthesis.",

  "",

  "### Activation Energy",

  "Every chemical reaction requires a minimum amount of energy before it can begin. This minimum energy is called the activation energy (Ea).",

  "Activation energy is like pushing a heavy rock over a hill. Once the rock reaches the top, it rolls down easily. The push needed to reach the top represents activation energy.",

  "",

  "Characteristics of Activation Energy",

  "• Every reaction requires activation energy.",
  "• High activation energy means reactions occur slowly.",
  "• Low activation energy means reactions occur more quickly.",

  "",

  "### How Enzymes Work",

  "Enzymes do NOT provide energy to reactions.",

  "They lower the amount of activation energy required, allowing more molecules to react in the same amount of time.",

  "This greatly increases the reaction rate.",

  "",

  "### Enzyme Structure",

  "[IMAGE]",

  "Each enzyme has a unique three-dimensional (3D) shape.",

  "The shape of an enzyme determines exactly which substrate it can bind.",

  "If the shape changes, the enzyme may no longer function properly.",

  "",

  "An enzyme consists mainly of:",

  "• A protein chain folded into a specific shape.",
  "• One or more active sites.",

  "",

  "### The Active Site",

  "The active site is a small region on the enzyme where the substrate binds.",

  "It is the 'working area' of the enzyme.",

  "",

  "The active site:",

  "• Binds only specific substrates.",
  "• Forms an enzyme-substrate complex.",
  "• Catalyses the chemical reaction.",
  "• Releases the products.",
  "• Remains unchanged after the reaction.",

  "",

  "### The Substrate",

  "The substrate is the molecule upon which the enzyme acts.",

  "For example:",

  "• Amylase acts on starch.",
  "• Lactase acts on lactose.",
  "• Catalase acts on hydrogen peroxide.",

  "",

  "### Enzyme-Substrate Complex",

  "When the substrate binds to the active site, a temporary enzyme-substrate complex is formed.",

  "During this stage:",

  "1. The substrate binds.",
  "2. The reaction occurs.",
  "3. Products are formed.",
  "4. Products leave the active site.",
  "5. The enzyme is ready to catalyse another reaction.",

  "",

  "### Lock and Key Model",

  "The Lock and Key Model was proposed by Emil Fischer.",

  "It suggests that the enzyme's active site has a fixed shape.",

  "The substrate fits perfectly into the active site just as a key fits into a lock.",

  "",

  "Think of:",

  "• Enzyme = Lock.",
  "• Substrate = Key.",

  "",

  "Only the correct key can open a particular lock.",

  "Similarly, only the correct substrate can bind to an enzyme.",

  "",

  "Advantages",

  "• Explains enzyme specificity.",
  "• Easy to understand.",

  "",

  "Limitation",

  "The model assumes enzymes are rigid, but enzymes are actually flexible molecules.",

  "",

  "### Induced Fit Model",

  "The Induced Fit Model was proposed by Daniel Koshland.",

  "It explains that enzymes are flexible rather than rigid.",

  "When the substrate approaches the enzyme, the active site changes shape slightly to fit the substrate more closely.",

  "",

  "This results in:",

  "• Better substrate binding.",
  "• Lower activation energy.",
  "• Faster reactions.",
  "• Greater catalytic efficiency.",

  "",

  "Today, the induced fit model is accepted as the more accurate explanation of enzyme action.",

  "",

  "### Comparing the Two Models",

  "Lock and Key",

  "• Active site is rigid.",
  "• Substrate fits exactly.",
  "• Simple explanation.",

  "",

  "Induced Fit",

  "• Active site is flexible.",
  "• Enzyme changes shape slightly.",
  "• Better supported by experimental evidence.",

  "",

  "### Real-Life Example",

  "Imagine shaking someone's hand.",

  "A rigid glove (Lock and Key) never changes shape.",

  "A soft glove (Induced Fit) moulds around your hand for a better fit.",

  "Enzymes behave like the soft glove.",

  "",

  "### Why are Enzymes Highly Specific?",

  "The amino acid sequence determines the enzyme's 3D structure.",

  "The 3D structure determines the shape of the active site.",

  "The active site determines which substrate can bind.",

  "Therefore:",

  "One enzyme usually catalyses only one type of reaction.",

  "",

  "### Memory Tricks",

  "'Active Site = Working Site.'",

  "",

  "'Substrate Sits in the Active Site.'",

  "",

  "'Lock and Key = Rigid.'",

  "'Induced Fit = Flexible.'",

  "",

  "### Exam Tips",

  "Remember that enzymes:",

  "• Lower activation energy.",
  "• Do NOT increase the energy of reactants.",
  "• Do NOT change ΔG.",
  "• Are not consumed during reactions.",
  "• Can be reused repeatedly.",

  "",

  "Also remember:",

  "The induced fit model is currently accepted as the more accurate model of enzyme action.",

  "",

  "### Quick Summary",

  "• Enzymes are biological catalysts.",
  "• They speed up reactions by lowering activation energy.",
  "• Most enzymes are proteins.",
  "• The active site binds the substrate.",
  "• A temporary enzyme-substrate complex forms.",
  "• Products are released while the enzyme remains unchanged.",
  "• The Lock and Key model explains specificity.",
  "• The Induced Fit model explains enzyme flexibility and is the accepted model today.",

  "",

  "### Connect the Dots",

  "Now that you understand how enzymes work, an important question remains:",

  "Why do enzymes sometimes stop working or work more slowly?",

  "The next subtopic explores the factors that affect the rate of enzyme-catalysed reactions, including temperature, pH, substrate concentration and enzyme concentration.",

];

const List<String> images = [
  "assets/modules/mlb111/Enzyme_and_Active_Site.png",
];

class EnzymeStructureScreen extends StatelessWidget {
  const EnzymeStructureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Enzyme Structure",
      ),
    );
  }
}