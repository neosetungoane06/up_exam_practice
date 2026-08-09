import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Lipids";

const List<String> notes = [

  "### Lipids",

  "Lipids are a group of biological molecules that include fats, oils, waxes, phospholipids and steroids. Unlike carbohydrates, lipids do not dissolve easily in water because they are hydrophobic (water-repelling).",

  "Lipids are extremely important because they store energy, build cell membranes, protect organs and help cells communicate.",

  "",

  "### Why are Lipids Important?",

  "Imagine a person preparing for a long hike. Instead of carrying only small snacks, they also pack food that contains a lot of stored energy. Lipids work in a similar way. They store large amounts of energy that the body can use later when needed.",

  "",

  "### Main Functions of Lipids",

  "• Long-term energy storage.",
  "• Form the plasma membrane.",
  "• Protect delicate organs.",
  "• Provide insulation against heat loss.",
  "• Waterproof certain surfaces.",
  "• Act as chemical messengers (some hormones).",

  "",

  "### Structure of Lipids",

  "Most lipids are made mainly from carbon, hydrogen and oxygen atoms. However, unlike carbohydrates, lipids contain much less oxygen.",

  "Many lipids are built from:",

  "• One glycerol molecule.",
  "• Fatty acid molecules.",

  "",

  "Think of glycerol as the handle of a balloon, while the fatty acids are the long strings attached to it.",

  "",

  "### Fatty Acids",

  "Fatty acids are long chains of carbon and hydrogen atoms. The length and type of these chains determine the properties of the lipid.",

  "Some fatty acids are straight, while others contain bends caused by double bonds.",

  "",

  "### Saturated and Unsaturated Fats",

  "Lipids can be divided into saturated and unsaturated fats.",

  "",

  "Saturated fats:",

  "• No double bonds between carbon atoms.",
  "• Straight fatty acid chains.",
  "• Pack closely together.",
  "• Usually solid at room temperature.",

  "",

  "Unsaturated fats:",

  "• One or more double bonds.",
  "• Bent fatty acid chains.",
  "• Cannot pack closely together.",
  "• Usually liquid at room temperature.",

  "",

  "### Why is this Important?",

  "Because saturated fats pack tightly, they become solid more easily. Unsaturated fats have bends in their structure, preventing tight packing and making them liquid.",

  "",

  "### Phospholipids",

  "One special type of lipid is the phospholipid.",

  "Unlike ordinary fats, phospholipids contain a phosphate group instead of one fatty acid.",

  "Phospholipids are the main molecules that build the plasma membrane of every cell.",

  "",

  "Each phospholipid has two different regions:",

  "• A hydrophilic (water-loving) head.",
  "• Two hydrophobic (water-repelling) tails.",

  "",

  "This unique structure allows phospholipids to arrange themselves into the phospholipid bilayer, which forms the basic structure of the cell membrane.",

  "",

  "This will lead directly into the next MLB111 topic where you will study the plasma membrane in greater detail.",

  "",

  "### Cholesterol",

  "Cholesterol is another important lipid found mainly in animal cells.",

  "It helps maintain the correct fluidity of the plasma membrane.",

  "Without cholesterol, cell membranes could become either too rigid or too fluid depending on temperature.",

  "",

  "### Steroid Hormones",

  "Some lipids function as hormones.",

  "Examples include:",

  "• Testosterone.",
  "• Oestrogen.",
  "• Cortisol.",

  "These hormones travel through the bloodstream and allow different organs to communicate with one another.",

  "",

  "### Summary",

  "Lipids:",

  "• Store large amounts of energy.",
  "• Build cell membranes.",
  "• Protect organs.",
  "• Provide insulation.",
  "• Help cells communicate.",
  "• Include fats, oils, phospholipids and steroids.",

  "",

  "### Memory Trick",

  "Think of lipids as the cell's 'energy bank and building material'.",

  "They save energy for later while also helping construct the cell membrane.",

  "",

  "EXAM TIP:",

  "Students often confuse carbohydrates and lipids. Remember:",

  "• Carbohydrates = Quick, short-term energy.",
  "• Lipids = Long-term energy storage and membrane structure."

];

const List<String> images = [];

class LipidsScreen extends StatelessWidget {
  const LipidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell",
        subtopic: "Lipids",
      ),
    );
  }
}