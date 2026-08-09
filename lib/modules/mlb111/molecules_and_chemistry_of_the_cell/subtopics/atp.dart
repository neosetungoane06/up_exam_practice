import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "ATP (Adenosine Triphosphate)";

const List<String> images = [
  "assets/modules/mlb111/ATP_Cycle.png",
];

const List<String> notes = [

  "### ATP (Adenosine Triphosphate)",

  "ATP stands for Adenosine Triphosphate. It is often called the 'energy currency' of the cell because it stores and transfers energy that cells need to perform almost every activity.",

  "Unlike carbohydrates and lipids, ATP is not used for long-term energy storage. Instead, it provides energy immediately whenever the cell needs it.",

  "",

  "[IMAGE]",

  "",

  "### Why is ATP Important?",

  "Every living cell requires energy to survive. ATP provides this energy in a form that cells can use instantly.",

  "Cells use ATP to:",

  "• Build large molecules such as proteins and DNA.",
  "• Transport substances across cell membranes.",
  "• Allow muscles to contract.",
  "• Drive enzyme-controlled reactions.",
  "• Support cell division and growth.",
  "• Send signals between cells.",

  "",

  "### Structure of ATP",

  "ATP consists of three main parts:",

  "• Adenine (a nitrogen-containing base).",
  "• Ribose (a five-carbon sugar).",
  "• Three phosphate groups.",

  "",

  "The three phosphate groups are the most important part because the bonds between them store energy.",

  "",

  "### Where is the Energy Stored?",

  "The energy in ATP is stored in the chemical bonds between the phosphate groups, especially the bond connecting the last phosphate group.",

  "When the cell needs energy, ATP loses its last phosphate group.",

  "",

  "ATP → ADP + Pi + Energy",

  "",

  "ADP stands for Adenosine Diphosphate.",

  "Pi represents an inorganic phosphate molecule.",

  "",

  "### ATP Cycle",

  "ATP is constantly being broken down and rebuilt.",

  "1. ATP releases energy by losing one phosphate group.",
  "2. ATP becomes ADP.",
  "3. Energy from cellular respiration or photosynthesis is used to add the phosphate back.",
  "4. ADP becomes ATP again.",

  "",

  "This continuous recycling is known as the ATP Cycle.",

  "",

  "### Where Does ATP Come From?",

  "Cells do not create energy. Instead, they transfer energy from food or sunlight into ATP.",

  "ATP is mainly produced during:",

  "• Cellular respiration (in mitochondria).",
  "• Photosynthesis (in chloroplasts of plants).",

  "",

  "This connects directly to the previous topics:",

  "• During the light-dependent reactions of photosynthesis, ATP is produced.",
  "• During cellular respiration, glucose is broken down to make large amounts of ATP.",

  "",

  "### ATP vs Energy Storage Molecules",

  "ATP and glucose both contain energy, but they serve different purposes.",

  "Glucose stores large amounts of energy for later use.",

  "ATP stores only a small amount of energy, but that energy is immediately available for the cell.",

  "",

  "Think of it this way:",

  "• Glucose is like money kept in a savings account.",
  "• ATP is like cash in your wallet that you can spend immediately.",

  "",

  "### ATP and Enzymes",

  "Many enzymes require ATP before they can perform their functions.",

  "ATP provides the energy needed to start many chemical reactions inside cells.",

  "Without ATP, most enzyme-controlled reactions would eventually stop because there would not be enough usable energy.",

  "",

  "### Summary",

  "• ATP is the immediate energy currency of the cell.",
  "• ATP contains adenine, ribose and three phosphate groups.",
  "• Energy is released when the last phosphate group is removed.",
  "• ATP becomes ADP after releasing energy.",
  "• ATP is continuously recycled.",
  "• ATP is produced during cellular respiration and photosynthesis.",

  "",

  "### Memory Trick",

  "Think of ATP as a rechargeable battery.",

  "It stores energy, powers the cell, becomes discharged (ADP), and is then recharged back into ATP.",

  "",

  "EXAM TIP:",

  "Students often say ATP 'contains energy.' A more accurate statement is that ATP stores energy in the bonds between its phosphate groups and releases that energy when the terminal phosphate bond is broken.",

];
class AtpScreen extends StatelessWidget {
  const AtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell",
        subtopic: "ATP",
      ),
    );
  }
}