import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Metabolic Pathways and Feedback Inhibition";

const List<String> notes = [

  "### Metabolic Pathways",

  "Cells carry out thousands of chemical reactions every second. These reactions are not random. Instead, they occur in a carefully organised sequence known as a metabolic pathway.",

  "A metabolic pathway is a series of enzyme-controlled reactions in which the product of one reaction becomes the substrate for the next reaction until a final product is formed.",

  "",

  "Think of a metabolic pathway like an assembly line in a factory.",

  "• Worker 1 completes Step 1.",
  "• The product moves to Worker 2.",
  "• Worker 2 performs Step 2.",
  "• The process continues until the finished product is produced.",

  "",

  "Inside the cell, each 'worker' is an enzyme.",

  "",

  "### Characteristics of Metabolic Pathways",

  "Metabolic pathways have several important characteristics:",

  "• Each step is controlled by a specific enzyme.",
  "• The product of one reaction becomes the substrate for the next reaction.",
  "• Reactions occur in a precise order.",
  "• Energy is released or used gradually.",
  "• Pathways are carefully regulated by the cell.",

  "",

  "### Why Metabolic Pathways are Important",

  "Breaking reactions into many small steps provides several advantages.",

  "Instead of releasing all energy at once, energy is released gradually. This allows the cell to capture most of the energy as ATP instead of losing it as heat.",

  "Advantages include:",

  "• Better control of reactions.",
  "• Greater efficiency.",
  "• Less energy wasted.",
  "• Less heat produced.",
  "• Allows cells to regulate production of important molecules.",

  "",

  "### Example: Cellular Respiration",

  "Cellular respiration is a metabolic pathway.",

  "Instead of glucose breaking down in one reaction, it passes through many enzyme-controlled reactions.",

  "Each reaction releases a small amount of energy that is captured to produce ATP.",

  "",

  "### Example: Photosynthesis",

  "Photosynthesis is another metabolic pathway.",

  "Plants convert light energy into glucose through many enzyme-controlled reactions rather than one single reaction.",

  "",

  "### Regulation of Metabolic Pathways",

  "Cells must constantly regulate metabolic pathways.",

  "If too much product is made, valuable energy and raw materials are wasted.",

  "If too little product is made, the cell cannot function properly.",

  "Therefore cells possess mechanisms that automatically regulate these pathways.",

  "",

  "The most important mechanism is called Feedback Inhibition.",

  "### Feedback Inhibition",

  "Feedback inhibition is one of the most important ways that cells regulate metabolic pathways.",

  "In feedback inhibition, the final product of a metabolic pathway stops the pathway from producing more product once enough has been made.",

  "",

  "Instead of continuing to make unnecessary product, the final product acts like a signal telling the cell:",

  "\"We already have enough. Stop producing more.\"",

  "",

  "This prevents:",

  "• Wasting ATP.",
  "• Wasting substrates.",
  "• Producing unnecessary products.",
  "• Disturbing the cell's internal balance (homeostasis).",

  "",

  "### How Feedback Inhibition Works",

  "Imagine a factory that produces bottled water.",

  "As bottles leave the factory they fill a storage room.",

  "When the storage room becomes full, a sensor automatically switches off the production line.",

  "Once people buy bottles and the storage room becomes less full, the factory starts producing again.",

  "",

  "Cells work exactly the same way.",

  "",

  "When enough final product has accumulated, it switches off one of the first enzymes in the pathway.",

  "When product levels decrease, the inhibition is removed and the pathway begins working again.",

  "",

  "### Why Does the Cell Inhibit an Enzyme Near the Beginning?",

  "The enzyme inhibited is usually one of the first enzymes in the pathway.",

  "Stopping the first enzyme immediately stops all later reactions.",

  "This saves much more energy than allowing several unnecessary reactions to occur before stopping.",

  "",

  "### Example",

  "Suppose a cell is producing the amino acid isoleucine.",

  "After enough isoleucine has been produced, the isoleucine molecule binds to the first enzyme in the pathway.",

  "The first enzyme stops working.",

  "As a result, the entire pathway stops.",

  "When the cell uses some of the isoleucine, fewer product molecules remain.",

  "The inhibition disappears and the pathway starts working again.",

  "",

  "This is similar to a thermostat switching a heater on and off to keep a room at the correct temperature.",

  "",

  "### Advantages of Feedback Inhibition",

  "Feedback inhibition is extremely important because it:",

  "• Conserves ATP.",
  "• Conserves raw materials.",
  "• Prevents overproduction.",
  "• Maintains homeostasis.",
  "• Makes metabolism highly efficient.",

  "### Enzyme Inhibition",

  "Besides feedback inhibition, enzyme activity can also be reduced by molecules known as enzyme inhibitors.",

  "An enzyme inhibitor is any substance that decreases the activity of an enzyme, causing the reaction to slow down or stop.",

  "",

  "The two main types of enzyme inhibition you need to know are:",

  "• Competitive inhibition.",
  "• Non-competitive inhibition.",

  "",

  "### Competitive Inhibition",

  "In competitive inhibition, the inhibitor has a shape similar to the substrate.",

  "Because of this similarity, the inhibitor competes with the substrate for the enzyme's active site.",

  "If the inhibitor occupies the active site, the substrate cannot bind and the reaction cannot occur.",

  "",

  "Think of it like two people competing for the same parking space. Only one car can park there at a time.",

  "",

  "Characteristics:",

  "• Inhibitor binds to the active site.",
  "• Competes directly with the substrate.",
  "• Prevents enzyme-substrate complex formation.",
  "• Can often be overcome by increasing substrate concentration.",

  "",

  "### Non-competitive Inhibition",

  "In non-competitive inhibition, the inhibitor does NOT bind to the active site.",

  "Instead, it binds to another region of the enzyme called the allosteric site.",

  "When the inhibitor binds to the allosteric site, it changes the three-dimensional shape of the enzyme.",

  "As a result, the active site changes shape and the substrate can no longer fit properly.",

  "",

  "This is like bending a key after it has been made. Even though the lock has not changed, the key no longer fits.",

  "",

  "Characteristics:",

  "• Inhibitor binds to the allosteric site.",
  "• Active site changes shape.",
  "• Substrate cannot bind effectively.",
  "• Increasing substrate concentration usually does NOT overcome this inhibition.",

  "",

  "### The Allosteric Site",

  "The allosteric site is a regulatory region on an enzyme that is separate from the active site.",

  "Many molecules can bind here to regulate enzyme activity.",

  "One important example is the final product in feedback inhibition.",

  "Instead of binding to the active site, the final product binds to the allosteric site of the first enzyme in the metabolic pathway.",

  "This changes the enzyme's shape, making the active site unable to bind its substrate.",

  "The pathway therefore stops until more product is needed.",

  "",

  "### Comparing the Two Types of Inhibition",

  "Competitive inhibition:",
  "• Binds to the active site.",
  "• Competes with the substrate.",
  "• Substrate may outcompete the inhibitor if present in high concentration.",

  "",

  "Non-competitive inhibition:",
  "• Binds to the allosteric site.",
  "• Changes the shape of the enzyme.",
  "• Usually cannot be overcome by adding more substrate.",

  "",

  "### Memory Tricks",

  "Competitive = Competes for the active site.",

  "Non-competitive = Not at the active site.",

  "Allosteric = 'Another site' on the enzyme.",

  "",

  "### Exam Tip",

  "Students often confuse the active site and the allosteric site.",

  "Remember:",

  "• Active site → substrate binds here.",
  "• Allosteric site → regulatory molecules bind here.",

  "",

  "### Connect the Dots",

  "You have now completed the topic 'Energy, Enzymes and Metabolism'.",

  "You should now understand:",
  "• Why cells need energy.",
  "• ATP as the cell's energy currency.",
  "• Metabolism and metabolic pathways.",
  "• Gibbs free energy.",
  "• Enzyme structure and function.",
  "• Factors affecting enzyme activity.",
  "• Competitive and non-competitive inhibition.",
  "• Feedback inhibition and the role of the allosteric site.",

];

const List<String> images = [];

class MetabolicPathwaysAndFeedbackInhibitionScreen extends StatelessWidget {
  const MetabolicPathwaysAndFeedbackInhibitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Metabolic Pathways and Feedback Inhibition",
      ),
    );
  }
}

