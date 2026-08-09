import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Endocytosis";

const List<String> notes = [

  "### Endocytosis",

  "Endocytosis is an active transport process in which the plasma membrane surrounds substances outside the cell and brings them into the cell by forming vesicles.",

  "",

  "[IMAGE]",

  "",

  "### Simple Explanation",

  "Imagine the cell wrapping its membrane around an object outside the cell, like putting something into a shopping bag, before pulling it inside.",

  "",

  "### Why Endocytosis is Needed",

  "Some substances are too large to pass through membrane proteins or the phospholipid bilayer. The cell therefore packages them inside vesicles.",

  "",

  "### How Endocytosis Works",

  "Step 1: Material approaches the plasma membrane.",

  "Step 2: The plasma membrane folds inward around the material.",

  "Step 3: The membrane pinches off.",

  "Step 4: A vesicle forms containing the material.",

  "Step 5: The vesicle moves into the cytoplasm where its contents can be used or digested.",

  "",

  "### Characteristics",

  "• Material moves INTO the cell.",
  "• Requires ATP.",
  "• Uses vesicles.",
  "• Active transport process.",

  "",

  "### Types of Endocytosis",

  "There are two main types:",

  "• Phagocytosis (Cell Eating).",
  "• Pinocytosis (Cell Drinking).",

  "",

  "### Phagocytosis",

  "Phagocytosis is the uptake of large solid particles.",

  "",

  "Examples:",

  "• White blood cells engulfing bacteria.",
  "• Amoeba engulfing food.",

  "",

  "### Pinocytosis",

  "Pinocytosis is the uptake of extracellular fluid.",

  "The cell takes in tiny droplets of surrounding fluid that contain:",

  "• Water.",
  "• Dissolved nutrients.",
  "• Ions.",
  "• Small proteins.",
  "• Other dissolved molecules.",

  "",

  "Unlike phagocytosis, pinocytosis does NOT take in large solid particles.",

  "",

  "### Importance",

  "Endocytosis allows cells to:",

  "• Obtain nutrients.",
  "• Destroy pathogens.",
  "• Remove unwanted substances.",
  "• Communicate with their environment.",

  "",


  "### Memory Tricks",

  "Endo = Enter.",

  "Phago = Eat.",

  "Pino = Drink.",

  "",

  "### Quick Summary",

  "✓ Moves material INTO cell\n"
      "✓ Uses vesicles\n"
      "✓ Requires ATP\n"
      "✓ Includes Phagocytosis and Pinocytosis",

  "",

  "EXAM TIP: Pinocytosis takes in extracellular fluid, not just water.",

];

const List<String> images = [
  "assets/modules/mlb111/endocytosis.png",
];

class EndocytosisScreen extends StatelessWidget {
  const EndocytosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Endocytosis",
      ),
    );
  }
}