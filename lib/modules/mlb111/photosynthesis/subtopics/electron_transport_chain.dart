import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Electron Transport Chain";

const List<String> notes = [

  "### Electron Transport Chain (ETC)",

  "The Electron Transport Chain (ETC) is a series of proteins embedded within the thylakoid membrane of the chloroplast. It transfers high-energy electrons released during the light-dependent reactions and uses their energy to produce ATP.",

  "",

  "[IMAGE]",

  "",

  "### Why is the Electron Transport Chain Important?",

  "When chlorophyll absorbs sunlight, electrons become highly energized. Instead of allowing this energy to be lost as heat, the Electron Transport Chain captures the energy little by little and converts it into ATP.",

  "",

  "### Where Does it Occur?",

  "The Electron Transport Chain is found in the thylakoid membrane inside the chloroplast.",

  "It lies between Photosystem II and Photosystem I.",

  "",

  "### Step 1 — Electrons Enter the ETC",

  "Photosystem II absorbs sunlight and releases excited electrons.",

  "These electrons immediately enter the Electron Transport Chain because they are unstable and contain a large amount of energy.",

  "",

  "### Step 2 — Electrons Move Between Carrier Proteins",

  "The electrons move from one electron carrier protein to another.",

  "Each carrier accepts the electron before passing it to the next carrier.",

  "As the electrons move through the chain, they gradually lose energy.",

  "",

  "### Why Do Electrons Lose Energy?",

  "Each carrier protein holds the electron slightly less tightly than the previous one.",

  "As the electron moves 'downhill', some of its energy is released.",

  "Instead of wasting this energy, the chloroplast captures it.",

  "",

  "### Step 3 — Proton Pumping",

  "The released energy is used to pump hydrogen ions (H⁺) from the stroma into the thylakoid lumen.",

  "This causes hydrogen ions to accumulate inside the thylakoid.",

  "",

  "### What is a Proton Gradient?",

  "Because many hydrogen ions collect inside the thylakoid while fewer remain in the stroma, a concentration difference develops.",

  "This difference is called a proton gradient.",

  "Nature always tries to balance concentration differences, so hydrogen ions naturally want to move back into the stroma.",

  "",

  "### ATP Synthase",

  "Hydrogen ions cannot freely cross the membrane.",

  "Instead, they pass through a special enzyme called ATP synthase.",

  "ATP synthase acts like a tiny rotating turbine.",

  "As hydrogen ions flow through ATP synthase, the enzyme uses their energy to join ADP and inorganic phosphate (Pi) together to form ATP.",

  "",

  "### Chemiosmosis",

  "The movement of hydrogen ions through ATP synthase is called chemiosmosis.",

  "Chemiosmosis is the main mechanism used to produce ATP during the light-dependent reactions.",

  "",

  "### Photosystem I",

  "After travelling through the Electron Transport Chain, the electrons arrive at Photosystem I.",

  "Photosystem I absorbs another photon of light, giving the electrons another boost of energy.",

  "",

  "### Formation of NADPH",

  "The energized electrons are finally transferred to NADP⁺ together with hydrogen ions.",

  "This forms NADPH.",

  "NADPH carries these high-energy electrons to the Calvin Cycle where they help manufacture glucose.",

  "",

  "### Summary",

  "The Electron Transport Chain:",

  "• Receives excited electrons from Photosystem II.",
  "• Transfers electrons through carrier proteins.",
  "• Uses released energy to pump hydrogen ions.",
  "• Creates a proton gradient.",
  "• Produces ATP through ATP synthase.",
  "• Delivers electrons to Photosystem I.",
  "• Contributes to the formation of NADPH.",

  "",

  "### Memory Trick",

  "Think of the Electron Transport Chain as a hydroelectric dam.",

  "The pumped hydrogen ions are like water stored behind the dam. When they flow back through ATP synthase, energy is released to produce ATP.",

  "",

  "EXAM TIP:",

  "Do not confuse ATP synthase with the Electron Transport Chain. The Electron Transport Chain creates the proton gradient, while ATP synthase uses that gradient to manufacture ATP.",

];

const List<String> images = [
  "assets/modules/mlb111/Electron_Transport_Chain.png",
];

class ElectronTransportChainScreen extends StatelessWidget {
  const ElectronTransportChainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Electron Transport Chain",
      ),
    );
  }
}