import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "The Cytoskeleton";

const List<String> notes = [

  "The cytoskeleton is a dynamic network of protein fibres that extends throughout the cytoplasm of eukaryotic cells. It provides structural support, maintains cell shape, organises the cell's internal components and enables movement within and by the cell.",

  "",

  "Unlike the skeleton of the human body, the cytoskeleton is constantly assembled and disassembled as the cell grows, moves and divides.",

  "",

  "### Major Functions of the Cytoskeleton",

  "• Maintains cell shape.",
  "• Provides mechanical support.",
  "• Anchors organelles in position.",
  "• Enables intracellular transport.",
  "• Assists in cell movement.",
  "• Participates in cell division.",
  "• Provides tracks for motor proteins.",

  "",

  "The cytoskeleton consists of three major protein fibres:",

  "• Microfilaments",
  "• Intermediate Filaments",
  "• Microtubules",

  "",

  "### Microfilaments (Actin Filaments)",

  "Microfilaments are the thinnest fibres of the cytoskeleton and are composed mainly of the protein actin. They are highly flexible and are responsible for many forms of cell movement.",

  "",

  "[IMAGE]",

  "",

  "Functions:",

  "• Maintain cell shape.",
  "• Enable cell movement.",
  "• Assist in muscle contraction.",
  "• Participate in cytokinesis during cell division.",
  "• Form structures such as microvilli.",

  "",

  "### Intermediate Filaments",

  "Intermediate filaments are stronger and more durable than microfilaments. Their primary role is to provide mechanical strength and stabilise the internal structure of the cell.",

  "",

  "[IMAGE]",

  "",

  "Functions:",

  "• Provide structural support.",
  "• Anchor organelles in position.",
  "• Resist mechanical stress.",
  "• Help maintain the shape of the nucleus.",

  "",

  "### Microtubules",

  "Microtubules are the largest cytoskeletal fibres. They are hollow tubes composed of the protein tubulin and act as transport tracks throughout the cell.",

  "",

  "[IMAGE]",

  "",

  "Functions:",

  "• Maintain cell shape.",
  "• Provide tracks for motor proteins.",
  "• Transport vesicles and organelles.",
  "• Form the mitotic spindle during cell division.",
  "• Move chromosomes during mitosis.",
  "• Form cilia and flagella.",

  "",

  "### Comparison of the Three Fibres",

  "Microfilaments",
  "• Protein: Actin",
  "• Smallest fibres",
  "• Mainly responsible for movement.",

  "",

  "Intermediate Filaments",
  "• Various proteins (e.g. keratin)",
  "• Medium-sized fibres",
  "• Mainly responsible for strength and stability.",

  "",

  "Microtubules",
  "• Protein: Tubulin",
  "• Largest fibres",
  "• Mainly responsible for transport and cell division.",

  "",

  "### Relationship with Motor Proteins",

  "Motor proteins such as kinesin and dynein move along microtubules carrying vesicles, organelles and other cellular cargo using ATP as their energy source.",

  "",

  "### Memory Trick",

  "Microfilaments = Movement",

  "Intermediate Filaments = Strength",

  "Microtubules = Transport & Mitosis",

  "",

  "EXAM TIP:",

  "Know the protein that forms each cytoskeletal fibre:",

  "• Microfilaments → Actin",

  "• Intermediate Filaments → Various proteins",

  "• Microtubules → Tubulin",

];

const List<String> images = [
  "assets/modules/mlb111/Microfilament.png",
  "assets/modules/mlb111/Intermediate_Filament.png",
  "assets/modules/mlb111/Microtubule.png",
];

class CytoskeletonScreen extends StatelessWidget {
  const CytoskeletonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Cytoskeleton",
      ),
    );
  }
}