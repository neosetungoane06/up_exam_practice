import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Enzymes";

const List<String> images = [];

const List<String> notes = [

  "### What are Enzymes?",

  "Enzymes are specialised proteins that speed up chemical reactions inside living cells. They are known as biological catalysts because they increase the rate of reactions without being permanently changed or used up during the reaction.",

  "Almost every chemical reaction in your body depends on enzymes. Without them, many reactions would happen so slowly that life would not be possible.",

  "",

  "### Why are Enzymes Important?",

  "Cells constantly carry out thousands of chemical reactions. These reactions are needed for growth, energy production, repair, communication and reproduction.",

  "Enzymes make these reactions happen fast enough to keep cells alive.",

  "",

  "Enzymes are involved in:",

  "• Digestion of food.",
  "• Cellular respiration.",
  "• Photosynthesis.",
  "• DNA replication.",
  "• Protein synthesis.",
  "• Muscle contraction.",

  "",

  "### Why are Enzymes Called Catalysts?",

  "A catalyst is a substance that speeds up a chemical reaction without being consumed during the reaction.",

  "After an enzyme finishes one reaction, it can immediately be used again to catalyse another reaction.",

  "",

  "### Activation Energy",

  "Every chemical reaction requires a minimum amount of energy before it can begin. This starting energy is called the activation energy.",

  "Enzymes lower the activation energy required for a reaction, allowing the reaction to occur much more quickly.",

  "",

  "Think of activation energy as a hill that molecules must climb before a reaction can occur. Enzymes make that hill much smaller, so the reaction happens more easily.",

  "",

  "### Enzyme Specificity",

  "Each enzyme performs only one specific job or works on a very small group of similar molecules.",

  "This is because every enzyme has a unique three-dimensional shape that matches only certain molecules.",

  "",

  "### The Active Site",

  "The active site is the small region of an enzyme where the chemical reaction takes place.",

  "The molecule that binds to the enzyme is called the substrate.",

  "",

  "The process occurs in four basic steps:",

  "• The substrate approaches the enzyme.",
  "• The substrate fits into the active site.",
  "• The enzyme converts the substrate into product(s).",
  "• The products leave and the enzyme is ready to work again.",

  "",

  "### Lock-and-Key Model",

  "The Lock-and-Key Model explains enzyme specificity.",

  "The enzyme is like a lock and the substrate is like a key.",

  "Only the correct substrate has the correct shape to fit into the enzyme's active site.",

  "",

  "Memory Trick:",

  "Wrong key = No reaction.",
  "Correct key = Reaction occurs.",

  "",

  "### Induced-Fit Model",

  "Scientists later discovered that enzymes are flexible rather than completely rigid.",

  "When the correct substrate approaches, the enzyme changes its shape slightly to fit the substrate even better.",

  "This explanation is called the Induced-Fit Model.",

  "",

  "### Factors Affecting Enzyme Activity",

  "Several factors influence how quickly enzymes work.",

  "",

  "#### 1. Temperature",

  "As temperature increases, enzyme activity increases because molecules move faster and collide more often.",

  "However, every enzyme has an optimum temperature where it works best.",

  "Above the optimum temperature, the enzyme begins to lose its shape and stops functioning properly.",

  "",

  "#### 2. pH",

  "Every enzyme also has an optimum pH.",

  "If the surrounding solution becomes too acidic or too alkaline, the enzyme's shape changes and its activity decreases.",

  "",

  "#### 3. Substrate Concentration",

  "When more substrate molecules are available, enzyme activity increases because more active sites become occupied.",

  "Eventually all active sites become occupied. At this point the enzyme is saturated and the reaction rate can no longer increase.",

  "",

  "#### 4. Enzyme Concentration",

  "If more enzyme molecules are present, more active sites become available and the reaction rate increases, provided enough substrate is available.",

  "",

  "### Denaturation",

  "Denaturation occurs when an enzyme permanently loses its three-dimensional shape.",

  "This usually happens because of:",

  "• Extremely high temperatures.",
  "• Extremely low or high pH.",

  "",

  "When the enzyme changes shape, the active site no longer fits the substrate.",

  "As a result, the enzyme can no longer catalyse the reaction.",

  "",

  "### Enzymes and ATP",

  "Many enzyme-controlled reactions require energy.",

  "ATP provides this energy by releasing one of its phosphate groups.",

  "This links enzymes directly to ATP, which you will study next.",

  "",

  "### Enzymes Throughout Cell Biology",

  "You have already encountered enzymes in earlier topics.",

  "For example:",

  "• Photosynthesis uses enzymes during the Calvin Cycle.",
  "• Cellular respiration depends on many different enzymes.",
  "• DNA replication requires specialised enzymes to copy DNA.",

  "",

  "As you continue studying Cell Biology, you will repeatedly encounter enzymes because almost every biological process depends on them.",

  "",

  "### Summary",

  "• Enzymes are biological catalysts.",
  "• They speed up chemical reactions.",
  "• They lower activation energy.",
  "• They are highly specific.",
  "• The substrate binds to the active site.",
  "• Temperature, pH, substrate concentration and enzyme concentration affect enzyme activity.",
  "• Extreme conditions cause denaturation.",
  "• Enzymes are not used up during reactions.",

  "",

  "### Memory Trick",

  "Enzyme = Worker",
  "Substrate = Material",
  "Active Site = Workstation",
  "Product = Finished Item",

  "",

  "EXAM TIP:",

  "Students often say enzymes 'create' reactions. This is incorrect. Enzymes do not create reactions—they only make existing reactions happen faster by lowering the activation energy.",

];

class EnzymesScreen extends StatelessWidget {
  const EnzymesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell",
        subtopic: "Enzymes",
      ),
    );
  }
}