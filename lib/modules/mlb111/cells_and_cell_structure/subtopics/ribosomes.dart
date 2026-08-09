import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Ribosomes";

const List<String> notes = [

  "Ribosomes are small, non-membrane-bound organelles responsible for protein synthesis. They translate the genetic information carried by messenger RNA (mRNA) into proteins.",

  "",

  "[IMAGE]",

  "",

  "### Structure of Ribosomes",

  "Ribosomes are composed of ribosomal RNA (rRNA) and proteins. Each ribosome consists of two subunits:",

  "• Large subunit.",
  "• Small subunit.",

  "These two subunits join together only during protein synthesis.",

  "",

  "### Functions",

  "• Synthesize proteins.",
  "• Read mRNA during translation.",
  "• Join amino acids together to form polypeptide chains.",
  "• Produce proteins required by the cell.",

  "",

  "### Free Ribosomes",

  "Free ribosomes float freely in the cytoplasm.",

  "Proteins made by free ribosomes usually remain inside the cell and are used in the cytoplasm or inside organelles.",

  "Examples:",

  "• Enzymes used in metabolism.",
  "• Cytoskeletal proteins.",
  "• Proteins used inside the nucleus.",

  "",

  "### Bound Ribosomes",

  "Bound ribosomes are attached to the Rough Endoplasmic Reticulum (Rough ER).",

  "These ribosomes produce proteins that are transported outside the cell or inserted into membranes.",

  "Examples:",

  "• Secreted enzymes.",
  "• Hormones.",
  "• Membrane proteins.",
  "• Lysosomal enzymes.",

  "",

  "### Where are Ribosomes Found?",

  "• Free in the cytoplasm.",
  "• Attached to the Rough Endoplasmic Reticulum.",
  "• Inside mitochondria.",
  "• Inside chloroplasts.",

  "",

  "### Ribosomes in Prokaryotes and Eukaryotes",

  "Both prokaryotic and eukaryotic cells contain ribosomes because all living cells need to synthesize proteins.",

  "However:",

  "• Prokaryotic ribosomes are smaller (70S).",
  "• Eukaryotic ribosomes are larger (80S).",

  "",

  "### Memory Trick",

  "DNA gives the instructions.",

  "Ribosomes build the proteins.",

  "",

  "EXAM TIP:",

  "Remember:",

  "Free Ribosomes → Proteins used INSIDE the cell.",

  "Bound Ribosomes → Proteins exported OUTSIDE the cell or inserted into membranes.",

];

const List<String> images = [
  "assets/modules/mlb111/ribosomes.png",
];

class RibosomesScreen extends StatelessWidget {
  const RibosomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Ribosomes",
      ),
    );
  }
}