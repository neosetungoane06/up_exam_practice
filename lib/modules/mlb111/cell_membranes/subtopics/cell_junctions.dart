import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Cell Junctions";

const List<String> notes = [

  "### Cell Junctions",

  "Cell junctions are specialised structures that connect neighbouring cells. They help tissues remain strong, allow cells to communicate and regulate the movement of substances between cells.",

  "",

  "Cell junctions are mainly found in animal tissues. Plants do not possess these junctions; instead they use plasmodesmata.",

  "",

  "### Tight Junctions",

  "[IMAGE]",

  "",

  "Tight junctions form a watertight seal between adjacent cells.",

  "Functions:",

  "• Prevent leakage between cells.",
  "• Separate different body compartments.",
  "• Common in epithelial tissues such as the intestine.",

  "",

  "Memory Trick:",

  "Tight Junction = Ziplock Bag Seal.",

  "",

  "### Desmosomes",

  "[IMAGE]",

  "",

  "Desmosomes are strong anchoring junctions that hold cells together during mechanical stress.",

  "Functions:",

  "• Strong cell attachment.",
  "• Prevent tissues from tearing.",
  "• Found in skin and cardiac muscle.",

  "",

  "Memory Trick:",

  "Desmosomes = Cellular Rivets.",

  "",

  "### Gap Junctions",

  "[IMAGE]",

  "",

  "Gap junctions form tiny channels between neighbouring cells.",

  "Functions:",

  "• Allow ions to move directly between cells.",
  "• Allow small molecules to pass.",
  "• Coordinate activities of neighbouring cells.",
  "• Essential in heart muscle.",

  "",

  "Memory Trick:",

  "Gap Junction = Cellular Tunnel.",

  "",

  "### Cell Junctions vs Plasmodesmata",

  "Animal cells use cell junctions.",

  "Plant cells use plasmodesmata because their rigid cell walls prevent the formation of animal-type junctions.",

  "Both structures perform similar functions by allowing neighbouring cells to communicate.",

  "",

  "EXAM TIP:",

  "Animals → Tight Junctions, Desmosomes, Gap Junctions.",

  "Plants → Plasmodesmata.",

];

const List<String> images = [
  "assets/modules/mlb111/Tight_Junction.png",
  "assets/modules/mlb111/Desmosome.png",
  "assets/modules/mlb111/Gap_Junction.png",
];

class CellJunctionsScreen extends StatelessWidget {
  const CellJunctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Cell Junctions",
      ),
    );
  }
}