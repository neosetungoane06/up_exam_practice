import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Extracellular Matrix (ECM)";

const List<String> notes = [

  "The Extracellular Matrix (ECM) is a complex network of molecules that surrounds animal cells. It provides structural support, anchors cells together and allows cells to communicate with their environment.",

  "",

  "The ECM is produced and secreted by cells into the extracellular space, where it forms a supportive framework around tissues and organs.",

  "",

  "[IMAGE]",

  "",

  "### Major Components of the ECM",

  "The extracellular matrix consists of four major components:",

  "",

  "### Collagen Fibres",

  "Collagen is the most abundant protein in the ECM. It forms strong fibres that provide mechanical strength and prevent tissues from tearing.",

  "• Provides tensile strength.",
  "• Gives tissues structural support.",
  "• Makes skin, tendons and bones strong.",

  "",

  "### Proteoglycans",

  "Proteoglycans are proteins attached to long carbohydrate chains. They form a hydrated gel that fills the spaces between cells.",

  "• Retain water.",
  "• Resist compression.",
  "• Provide cushioning for tissues.",

  "",

  "### Fibronectin",

  "Fibronectin is a glycoprotein that connects cells to the extracellular matrix by binding collagen fibres and integrins together.",

  "• Anchors cells to the ECM.",
  "• Guides cell movement.",
  "• Assists in wound healing.",

  "",

  "### Integrins",

  "Integrins are receptor proteins found in the plasma membrane. They connect the cytoskeleton inside the cell to the extracellular matrix outside the cell.",

  "• Attach cells to the ECM.",
  "• Transmit signals into the cell.",
  "• Allow communication between the cell and its environment.",

  "",

  "### Functions of the ECM",

  "• Provides structural support.",
  "• Anchors cells within tissues.",
  "• Holds tissues together.",
  "• Allows cell-to-cell communication.",
  "• Regulates cell growth and differentiation.",
  "• Guides cell migration during development.",
  "• Assists in tissue repair and wound healing.",

  "",

  "### Cell Communication",

  "Cells constantly receive signals from the extracellular matrix through integrins. These signals influence cell growth, movement, survival and gene expression.",

  "",

  "### Animal Cells vs Plant Cells",

  "The ECM is found mainly in animal cells. Plant cells do not possess an extracellular matrix because their rigid cell wall provides structural support instead.",

  "",

  "### Memory Trick",

  "Think of the ECM as reinforced concrete:",

  "• Collagen = Steel bars.",
  "• Proteoglycans = Concrete filling.",
  "• Fibronectin = Glue.",
  "• Integrins = Bolts connecting the building to the foundation.",

  "",

  "EXAM TIP:",

  "Integrins connect the extracellular matrix to the cytoskeleton, allowing both physical attachment and cell signalling.",

];

const List<String> images = [
  "assets/modules/mlb111/Extracellular_Matrix.png",
];

class ExtracellularMatrixScreen extends StatelessWidget {
  const ExtracellularMatrixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Extracellular Matrix",
      ),
    );
  }
}