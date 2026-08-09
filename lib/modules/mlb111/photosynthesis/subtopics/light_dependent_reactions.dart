import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Light-Dependent Reactions";

const List<String> notes = [

  "### Light-Dependent Reactions",

  "The light-dependent reactions are the first stage of photosynthesis. As the name suggests, these reactions can only occur when light energy from the Sun is available.",

  "Their main purpose is to capture light energy and convert it into chemical energy in the form of ATP and NADPH. These energy molecules will later be used in the Calvin Cycle to manufacture glucose.",

  "",



  "",

  "### Where do the Light-Dependent Reactions Occur?",

  "The light-dependent reactions occur in the thylakoid membranes inside chloroplasts.",

  "The thylakoid membrane contains chlorophyll pigments, photosystems, electron carriers and ATP synthase. These structures work together to capture sunlight and convert it into usable energy.",

  "",

  "### Requirements",

  "The light-dependent reactions require:",

  "• Light energy from the Sun.",
  "• Water (H₂O).",
  "• Chlorophyll pigments.",
  "• ADP + Pi (used to make ATP).",
  "• NADP⁺ (used to make NADPH).",

  "",

  "### Step 1 — Absorption of Light",

  "The process begins when chlorophyll molecules absorb light energy.",

  "The absorbed light excites electrons inside the chlorophyll molecule. An excited electron contains much more energy than before.",

  "",

  "### What are Excited Electrons?",

  "Electrons normally remain close to the nucleus of an atom. When light energy is absorbed, some electrons gain energy and move to a higher energy level.",

  "These are called excited electrons.",

  "Because excited electrons are unstable, they quickly leave chlorophyll and enter the Electron Transport Chain.",

  "",

  "### Photosystems",

  "Photosystems are groups of chlorophyll molecules and proteins that capture sunlight.",

  "There are two photosystems involved:",

  "• Photosystem II (PSII).",
  "• Photosystem I (PSI).",

  "",

  "Photosystem II captures light first. Photosystem I captures light later and gives the electrons even more energy before NADPH is produced.",

  "",

  "### Why is Water Needed?",

  "When excited electrons leave chlorophyll, they must be replaced. Plants replace these lost electrons by splitting water molecules.",

  "This process is called photolysis and will be explained in the next subtopic.",

  "",

  "### Products of the Light-Dependent Reactions",

  "The light-dependent reactions produce:",

  "• ATP.",
  "• NADPH.",
  "• Oxygen (O₂).",

  "",

  "ATP stores energy while NADPH carries high-energy electrons. Both are required during the Calvin Cycle to manufacture glucose.",

  "The oxygen produced is released into the atmosphere as a by-product.",

  "",

  "### Why are ATP and NADPH Important?",

  "Think of ATP as the cell's rechargeable battery. It provides the energy needed for many biological processes.",

  "Think of NADPH as a delivery truck that transports high-energy electrons to the Calvin Cycle.",

  "",

  "### Summary",

  "During the light-dependent reactions:",

  "• Chlorophyll absorbs sunlight.",
  "• Electrons become excited.",
  "• Water replaces the lost electrons.",
  "• ATP is produced.",
  "• NADPH is produced.",
  "• Oxygen is released.",

  "",

  "### Memory Trick",

  "Light Reactions = Capture Energy.",

  "Sunlight → ATP + NADPH + Oxygen",

  "",

  "EXAM TIP:",

  "Students often confuse the products of the light-dependent reactions. Remember that glucose is NOT produced here. The light-dependent reactions only produce ATP, NADPH and oxygen. Glucose is produced later during the Calvin Cycle.",

];

const List<String> images = [];

class LightDependentReactionsScreen extends StatelessWidget {
  const LightDependentReactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Light Dependent Reactions",
      ),
    );
  }
}