import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Nucleus";

const List<String> images = [
  "assets/modules/mlb111/Nucleus.png",
];

const List<String> notes = [

  "### The Nucleus",

  "The nucleus is the control centre of the cell. It stores DNA and regulates nearly all cellular activities including growth, metabolism and protein synthesis.",

  "",

  "### Nuclear Envelope",

  "The nuclear envelope is a double membrane that surrounds the nucleus and separates the contents of the nucleus from the cytoplasm.",

  "• Consists of two phospholipid membranes.",
  "• Contains nuclear pores.",
  "• Controls movement into and out of the nucleus.",

  "[IMAGE]",

  "",

  "### Nuclear Pores",

  "Nuclear pores are tiny openings in the nuclear envelope that regulate transport between the nucleus and the cytoplasm.",

  "• mRNA leaves through nuclear pores.",
  "• Proteins enter through nuclear pores.",

  "",

  "### Nucleoplasm",

  "The nucleoplasm is the jelly-like fluid inside the nucleus.",

  "• Suspends chromatin.",
  "• Suspends the nucleolus.",
  "• Allows movement of materials inside the nucleus.",

  "",

  "### Chromatin",

  "Chromatin is the uncoiled form of DNA combined with proteins called histones.",

  "• Contains genetic information.",
  "• Condenses to form chromosomes during cell division.",

  "",

  "### Nucleolus",

  "The nucleolus is a dense region inside the nucleus responsible for producing ribosomes.",

  "• Produces ribosomal RNA (rRNA).",
  "• Assembles ribosome subunits.",
  "• Has no surrounding membrane.",

  "",

  "### Functions of the Nucleus",

  "• Stores DNA.",
  "• Controls cell activities.",
  "• Directs protein synthesis.",
  "• Regulates growth.",
  "• Regulates cell division.",

  "",

  "EXAM TIP: Remember the four major parts of the nucleus:",

  "• Nuclear Envelope",
  "• Nuclear Pores",
  "• Nucleoplasm",
  "• Chromatin",
  "• Nucleolus",

];

class NucleusScreen extends StatelessWidget {
  const NucleusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Nucleus",
      ),
    );
  }
}