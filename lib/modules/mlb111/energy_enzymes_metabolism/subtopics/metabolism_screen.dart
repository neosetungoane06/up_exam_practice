import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Metabolism";

const List<String> notes = [

  "### Metabolism",

  "Every second, millions of chemical reactions take place inside every living cell. These reactions keep cells alive, allow organisms to grow, repair damaged tissues and obtain energy.",

  "The collection of all these chemical reactions is called metabolism.",

  "",

  "### Definition of Metabolism",

  "Metabolism is the sum of all chemical reactions that occur within a living cell or organism.",

  "These reactions are carefully controlled and coordinated so that cells can survive and function efficiently.",

  "[IMAGE]",

  "",

  "### Why is Metabolism Important?",

  "Without metabolism, cells would not be able to obtain energy, make new molecules or repair themselves. Life would simply stop.",

  "Metabolism allows organisms to grow, reproduce, respond to their environment and maintain normal body functions.",

  "",

  "### Functions of Metabolism",

  "Metabolism performs several important functions in every living organism.",

  "",

  "1. Provides Energy",

  "Cells constantly need energy to perform work. Metabolism breaks down food molecules and converts their stored energy into ATP, the molecule that powers cellular activities.",

  "Example:",

  "When you climb stairs, your muscles require ATP. Metabolism releases energy from glucose so your muscles can contract.",

  "",

  "2. Builds Cellular Structures",

  "Cells continuously produce new proteins, membranes, DNA and other important molecules. Metabolism provides the materials and energy needed to build these structures.",

  "Example:",

  "When a cut on your skin heals, your body builds new cells using metabolic reactions.",

  "",

  "3. Breaks Down Molecules",

  "Old or unnecessary molecules are continuously broken down into smaller components that can either be recycled or removed from the body.",

  "Example:",

  "Food eaten at lunch is broken down into nutrients that cells can use.",

  "",

  "4. Supports Growth and Development",

  "Growing organisms require new cells and tissues. Metabolism provides both the energy and the building materials needed for growth.",

  "Example:",

  "A baby growing into an adult depends on metabolism every single day.",

  "",

  "5. Repairs Damaged Cells",

  "Cells are constantly damaged through normal activities. Metabolism repairs damaged proteins, membranes and DNA to keep cells functioning properly.",

  "Example:",

  "After exercising, muscle fibres are repaired through metabolic processes.",

  "",

  "6. Maintains Life",

  "Every heartbeat, every breath and every nerve impulse depends on metabolism.",

  "Without metabolism:",

  "• No ATP would be produced.",
  "• No proteins would be made.",
  "• Cells could not divide.",
  "• Damaged tissues could not be repaired.",
  "• Life would not be possible.",

  "",

  "### Everyday Examples of Metabolism",

  "Metabolism happens continuously, even while you are sleeping.",

  "Examples include:",

  "• Digesting food after a meal.",
  "• Producing ATP during exercise.",
  "• Healing a wound.",
  "• Growing hair and nails.",
  "• Replacing old skin cells.",
  "• Producing hormones.",
  "• Building new muscle after exercise.",

  "",

  "### Memory Trick",

  "Think of your body as a city.",

  "Some workers build new houses.",

  "Other workers demolish old buildings.",

  "As long as both jobs continue, the city stays alive.",

  "Metabolism works exactly the same way inside your cells.",

  "",

  "### Exam Tip",

  "Many students define metabolism as 'breaking down food'.",

  "This is incomplete.",

  "Metabolism includes BOTH building reactions and breaking-down reactions.",

  "",

  "### Quick Summary",

  "• Metabolism is the sum of all chemical reactions in a living organism.",
  "• Metabolism provides energy.",
  "• Metabolism builds cellular structures.",
  "• Metabolism breaks down molecules.",
  "• Metabolism supports growth and repair.",
  "• Metabolism maintains life.",

  "",

  "### Types of Metabolism",

  "Metabolic reactions can be grouped into two major categories depending on what they do.",

  "• Catabolism.",
  "• Anabolism.",

  "These two processes work together to keep every cell alive and functioning normally.",

  "",

  "### Connect the Dots",

  "Now that you understand what metabolism is, the next question is:",

  "How are metabolic reactions divided into catabolism and anabolism?",

  "This leads us to the next subtopic: Catabolism vs Anabolism.",

];

const List<String> images = [
  "assets/modules/mlb111/Metabolism.png",
];

class MetabolismScreen extends StatelessWidget {
  const MetabolismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Metabolism",
      ),
    );
  }
}