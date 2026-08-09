import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Membrane Proteins";

const List<String> notes = [

  "### Membrane Proteins",

  "Membrane proteins are proteins embedded within or attached to the plasma membrane. They perform specialised functions that allow cells to transport substances, communicate, recognise other cells and maintain their structure.",

  "",

  "[IMAGE]",

  "",

  "### Types of Membrane Proteins",

  "Membrane proteins are generally classified into two groups:",

  "• Integral (intrinsic) proteins.",
  "• Peripheral (extrinsic) proteins.",

  "",

  "### Integral Proteins",

  "Integral proteins are embedded within the phospholipid bilayer. Many extend completely across the membrane and are called transmembrane proteins.",

  "Functions:",

  "• Transport substances.",
  "• Act as receptors.",
  "• Form channels.",
  "• Carry out enzymatic reactions.",

  "",

  "### Peripheral Proteins",

  "Peripheral proteins are attached to the inner or outer surface of the membrane but do not pass through the membrane.",

  "Functions:",

  "• Provide structural support.",
  "• Anchor the cytoskeleton.",
  "• Participate in signalling pathways.",

  "",

  "### Major Functions of Membrane Proteins",

  "• Transport proteins move substances across the membrane.",
  "• Receptor proteins receive chemical signals.",
  "• Enzymes catalyse chemical reactions.",
  "• Cell recognition proteins identify neighbouring cells.",
  "• Structural proteins maintain cell shape and stability.",
  "• Adhesion proteins help cells attach to one another.",

  "",

  "### Glycoproteins",

  "Many membrane proteins have carbohydrate chains attached to them. These are called glycoproteins.",

  "They are important for:",

  "• Cell recognition.",
  "• Immune responses.",
  "• Cell communication.",

  "",

  "### Memory Trick",

  "Think of membrane proteins as the workers of the plasma membrane. The phospholipids build the wall, while the proteins do the work.",

  "",

  "EXAM TIP: Membrane proteins are responsible for transport, communication, recognition, enzymatic activity and structural support.",

];

const List<String> images = [
  "assets/modules/mlb111/Membrane_Proteins.png",
];

class MembraneProteinsScreen extends StatelessWidget {
  const MembraneProteinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cell Membranes",
        subtopic: "Membrane Proteins",
      ),
    );
  }
}