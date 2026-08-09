import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Calvin Cycle";

const List<String> notes = [

  "### Calvin Cycle",

  "The Calvin Cycle is the second stage of photosynthesis. It uses the ATP and NADPH produced during the light-dependent reactions to manufacture glucose from carbon dioxide.",

  "Unlike the light-dependent reactions, the Calvin Cycle does not directly require sunlight. However, it depends on the ATP and NADPH that were produced using light energy.",

  "",

  "[IMAGE]",

  "",

  "### Where does the Calvin Cycle Occur?",

  "The Calvin Cycle occurs in the stroma of the chloroplast.",

  "The stroma contains the enzymes required to convert carbon dioxide into carbohydrates.",

  "",

  "### Requirements",

  "The Calvin Cycle requires:",

  "• Carbon dioxide (CO₂).",
  "• ATP.",
  "• NADPH.",
  "• The enzyme Rubisco.",

  "",

  "### Rubisco",

  "Rubisco stands for Ribulose-1,5-bisphosphate Carboxylase/Oxygenase.",

  "Rubisco is the enzyme that starts the Calvin Cycle by attaching carbon dioxide to a five-carbon molecule called RuBP.",

  "Rubisco is the most abundant enzyme on Earth because every photosynthetic organism uses it.",

  "",

  "### Step 1 — Carbon Fixation",

  "Carbon fixation is the first step of the Calvin Cycle.",

  "Rubisco combines carbon dioxide (CO₂) with Ribulose-1,5-bisphosphate (RuBP), a five-carbon compound.",

  "This reaction produces an unstable six-carbon molecule that immediately splits into two molecules of 3-phosphoglycerate (3-PGA).",

  "",

  "### Why is it called Carbon Fixation?",

  "Carbon dioxide exists as a gas in the atmosphere.",

  "During carbon fixation, the carbon atom from carbon dioxide becomes part of an organic molecule inside the plant.",

  "The carbon is therefore said to be 'fixed'.",

  "",

  "### Step 2 — Reduction",

  "ATP supplies energy while NADPH supplies high-energy electrons.",

  "Together they convert 3-phosphoglycerate into glyceraldehyde-3-phosphate (G3P).",

  "",

  "### What is G3P?",

  "G3P is a three-carbon sugar molecule.",

  "Some G3P molecules leave the Calvin Cycle and are used to build glucose and other carbohydrates.",

  "",

  "### Step 3 — Regeneration",

  "Most of the G3P molecules remain inside the cycle.",

  "Using ATP, they are rearranged to regenerate RuBP.",

  "Regenerating RuBP allows the Calvin Cycle to continue processing more carbon dioxide.",

  "",

  "### Formation of Glucose",

  "Glucose is not produced directly in a single turn of the Calvin Cycle.",

  "Instead, several G3P molecules combine through additional reactions to produce one glucose molecule.",

  "",

  "### Why is Glucose Important?",

  "Plants use glucose to:",

  "• Produce energy through cellular respiration.",
  "• Store energy as starch.",
  "• Build cellulose for cell walls.",
  "• Produce other biological molecules.",

  "",

  "### Overall Summary",

  "The Calvin Cycle:",

  "• Occurs in the stroma.",
  "• Uses ATP and NADPH.",
  "• Uses carbon dioxide.",
  "• Uses Rubisco.",
  "• Produces G3P.",
  "• Ultimately produces glucose.",

  "",

  "### Memory Trick",

  "Light Reactions charge the batteries (ATP and NADPH).",

  "The Calvin Cycle uses those charged batteries to build sugar.",

  "",

  "### Big Picture",

  "Photosynthesis can now be viewed as two connected stages:",

  "1. Light-dependent reactions capture sunlight and produce ATP, NADPH and oxygen.",

  "2. The Calvin Cycle uses ATP, NADPH and carbon dioxide to manufacture glucose.",

  "",

  "EXAM TIP:",

  "Students often think the Calvin Cycle does not need light at all. This is incorrect. Although light is not used directly, the Calvin Cycle depends completely on ATP and NADPH that are produced during the light-dependent reactions.",

];

const List<String> images = [
  "assets/modules/mlb111/Calvin_Cycle.png",
];

class CalvinCycleScreen extends StatelessWidget {
  const CalvinCycleScreen({super.key});

  @override
  Widget build(BuildContext context) {

    debugPrint("CALVIN SCREEN OPENED");

    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,

      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Calvin Cycle",
      ),
    );
  }
}