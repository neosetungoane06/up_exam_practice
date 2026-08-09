import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Cell Compartmentalisation";

const List<String> notes = [
  "One of the major advantages of eukaryotic cells is compartmentalisation. Compartmentalisation refers to the division of the cell into separate regions, each enclosed by membranes and specialised for specific functions.",

  "",

  "These specialised regions are called compartments. Each compartment creates a unique environment that allows particular cellular processes to occur efficiently.",

  "",

  "### Examples of Cellular Compartments",

  "• Nucleus",
  "• Mitochondria",
  "• Chloroplasts",
  "• Lysosomes",
  "• Endoplasmic Reticulum",
  "• Golgi Apparatus",
  "• Peroxisomes",
  "• Vacuoles",

  "",

  "### Why Compartmentalisation is Important",

  "• Allows different cellular activities to occur simultaneously without interfering with one another.",
  "• Creates specialised regions that are optimised for particular biochemical reactions.",
  "• Improves efficiency because enzymes and substrates are concentrated in the same location.",
  "• Allows cells to regulate and control different processes independently.",

  "",

  "### Different Chemical Environments",

  "Different compartments maintain different chemical conditions. These conditions are important because many enzymes function only within specific environments.",

  "• Lysosomes maintain an acidic environment which activates digestive enzymes.",
  "• The cytoplasm maintains a near-neutral environment suitable for most metabolic reactions.",
  "• Mitochondria maintain specialised chemical gradients used for ATP production.",
  "• Chloroplasts maintain conditions required for photosynthesis.",

  "",

  "EXAM TIP: Compartmentalisation increases efficiency by separating cellular processes into specialised regions.",

  "",

  "Example:",

  "• Lysosomes have acidic conditions while the cytoplasm is slightly alkaline. Therefore the cell separates these environments into compartments.",
];

const List<String> images = [];

class CellCompartmentalisationScreen extends StatelessWidget {
  const CellCompartmentalisationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Compartmentalization",
      ),
    );
  }
}