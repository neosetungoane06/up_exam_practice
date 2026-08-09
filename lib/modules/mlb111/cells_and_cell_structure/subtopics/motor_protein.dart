import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Motor Proteins";

const List<String> notes = [

  "Motor proteins are specialised proteins that transport cellular cargo by moving along the cytoskeleton. They use energy released from ATP to generate movement.",

  "",

  "[IMAGE]",

  "",

  "### Why are Motor Proteins Important?",

  "Cells constantly transport materials such as vesicles, organelles and chromosomes from one location to another. Motor proteins act like molecular machines that carry these materials to where they are needed.",

  "",

  "### Functions of Motor Proteins",

  "• Transport vesicles.",
  "• Transport organelles.",
  "• Move chromosomes during cell division.",
  "• Position organelles inside the cell.",
  "• Assist in cilia and flagella movement.",
  "• Use ATP as an energy source.",

  "",

  "### Movement Along Microtubules",

  "Most motor proteins move along microtubules, which act like railway tracks inside the cell.",

  "",

  "There are two major motor proteins that move on microtubules:",

  "",

  "### Kinesin",

  "Kinesin generally transports cargo away from the nucleus towards the cell membrane. This movement is called plus-end (+) directed movement.",

  "• Moves toward the + end of microtubules.",
  "• Carries vesicles and organelles to the cell periphery.",
  "• Uses ATP for every step it takes.",

  "",

  "### Dynein",

  "Dynein generally transports cargo from the cell membrane back toward the nucleus. This movement is called minus-end (-) directed movement.",

  "• Moves toward the - end of microtubules.",
  "• Returns vesicles and organelles to the centre of the cell.",
  "• Powers the movement of cilia and flagella.",

  "",

  "### ATP and Motor Proteins",

  "Motor proteins cannot move without ATP. ATP provides the energy that allows the protein to change shape and 'walk' along the microtubule one step at a time.",

  "",

  "### Relationship with the Cytoskeleton",

  "Motor proteins work together with the cytoskeleton:",

  "• Microtubules provide the transport tracks.",
  "• Motor proteins are the moving vehicles.",
  "• Vesicles and organelles are the cargo.",

  "",

  "### Memory Trick",

  "Kinesin = Karries cargo away from the nucleus.",

  "Dynein = Drives cargo back to the nucleus.",

  "",

  "EXAM TIP:",

  "Remember:",

  "Microtubules = Tracks",

  "Motor Proteins = Engines",

  "ATP = Fuel",

];

const List<String> images = [
  "assets/modules/mlb111/Motor_Protein.png",
];

class MotorProteinsScreen extends StatelessWidget {
  const MotorProteinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Motor Protein",
      ),
    );
  }
}