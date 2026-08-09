import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Nucleic Acids";

const List<String> notes = [

  "### Nucleic Acids",

  "Nucleic acids are biological macromolecules responsible for storing, transmitting and using genetic information. Every living cell depends on nucleic acids because they contain the instructions needed to build, maintain and reproduce an organism.",

  "",

  "### Why are Nucleic Acids Important?",

  "Imagine trying to build a house without a blueprint. It would be impossible to know where every wall, window and door belongs. In the same way, cells need a set of instructions that tells them how to build proteins and how to function.",

  "These instructions are stored in nucleic acids.",

  "",

  "The two types of nucleic acids are:",

  "• DNA (Deoxyribonucleic Acid).",
  "• RNA (Ribonucleic Acid).",

  "",

  "### DNA (Deoxyribonucleic Acid)",

  "DNA is the long-term storage molecule for genetic information. Nearly every cell in your body contains DNA.",

  "DNA stores the instructions needed to build proteins, control cell activities and pass inherited characteristics from parents to offspring.",

  "",

  "Functions of DNA:",

  "• Stores genetic information.",
  "• Contains genes.",
  "• Controls protein production.",
  "• Passes hereditary information to new cells.",
  "• Directs almost all cellular activities.",

  "",

  "### Where is DNA Found?",

  "In eukaryotic cells, most DNA is found inside the nucleus.",

  "Small amounts of DNA are also found inside mitochondria and chloroplasts because these organelles have their own genetic material.",

  "",

  "### Genes",

  "A gene is a specific section of DNA that contains the instructions for making a particular protein.",

  "Different genes code for different proteins. Since proteins perform most cellular functions, genes indirectly control almost everything that happens inside a cell.",

  "",

  "### RNA (Ribonucleic Acid)",

  "RNA works together with DNA to make proteins.",

  "Unlike DNA, RNA usually leaves the nucleus and carries genetic instructions to ribosomes where proteins are built.",

  "",

  "Functions of RNA:",

  "• Carries genetic instructions.",
  "• Helps assemble proteins.",
  "• Participates in protein synthesis.",

  "",

  "### Main Types of RNA",

  "There are three main types of RNA that work together during protein synthesis:",

  "• mRNA (Messenger RNA) carries the genetic message from DNA to the ribosome.",
  "• tRNA (Transfer RNA) transports amino acids to the ribosome.",
  "• rRNA (Ribosomal RNA) forms part of the ribosome where proteins are assembled.",

  "",

  "### DNA vs RNA",

  "Although DNA and RNA are similar, they have different roles.",

  "DNA:",
  "• Stores information permanently.",
  "• Mostly remains inside the nucleus.",
  "• Double-stranded molecule.",

  "",

  "RNA:",
  "• Uses DNA instructions to make proteins.",
  "• Can leave the nucleus.",
  "• Usually single-stranded.",

  "",

  "### How DNA and RNA Work Together",

  "DNA never leaves the nucleus because it safely stores the genetic information.",

  "Instead, a copy of the required gene is made as mRNA.",

  "The mRNA carries this information to the ribosome where proteins are produced.",

  "This process allows cells to make only the proteins they need.",

  "",

  "### Big Picture",

  "DNA stores the instructions.",

  "RNA reads and carries those instructions.",

  "Proteins are then built using those instructions.",

  "Without DNA and RNA, cells would not know how to make proteins, and life could not exist.",

  "",

  "### Memory Trick",

  "Think of DNA as a cookbook stored safely in a library.",

  "RNA is the person who copies one recipe and takes it into the kitchen.",

  "The ribosome is the kitchen where the meal (protein) is prepared.",

  "",

  "EXAM TIP:",

  "Students often confuse DNA and RNA. Remember: DNA stores the information permanently, while RNA temporarily carries and uses that information to make proteins."

];

const List<String> images = [];

class NucleicAcidsScreen extends StatelessWidget {
  const NucleicAcidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell",
        subtopic: "Nucleic Acids",
      ),
    );
  }
}