import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';
const String topicTitle = "Proteins";

const List<String> notes = [

  "### Proteins",

  "After learning about carbohydrates (the main source of energy) and lipids (long-term energy storage and cell membranes), we now move to proteins. Proteins are often called the 'working molecules' of the cell because they perform most of the jobs needed to keep a cell alive.",

  "Unlike carbohydrates and lipids, proteins are not mainly used to store energy. Instead, they build structures, transport substances, speed up reactions and help cells communicate.",

  "",

  "### What are Proteins?",

  "Proteins are large biological molecules made mainly from carbon (C), hydrogen (H), oxygen (O), nitrogen (N) and sometimes sulfur (S).",

  "The basic building blocks of proteins are called amino acids. Think of amino acids as individual LEGO® bricks. When many amino acids join together, they build a protein.",

  "",

  "### Amino Acids",

  "An amino acid is the smallest unit from which proteins are made.",

  "Every amino acid contains:",

  "• An amino group (–NH₂).",
  "• A carboxyl group (–COOH).",
  "• A hydrogen atom.",
  "• A central carbon atom.",
  "• A variable R group (side chain).",

  "The R group is what makes one amino acid different from another.",

  "",

  "### How are Proteins Formed?",

  "When amino acids join together, they form a peptide bond.",

  "This process is called a condensation reaction because a molecule of water is removed when the bond forms.",

  "Many amino acids linked together form a polypeptide chain. One or more polypeptide chains then fold into a functional protein.",

  "",

  "### Protein Structure",

  "The function of a protein depends on its three-dimensional shape.",

  "If the shape changes, the protein may stop working properly.",

  "This is why maintaining the correct protein structure is very important for living cells.",

  "",

  "### Functions of Proteins",

  "Proteins perform many different functions inside cells.",

  "Some important functions include:",

  "• Building body tissues.",
  "• Repairing damaged cells.",
  "• Transporting substances.",
  "• Acting as enzymes.",
  "• Cell communication.",
  "• Movement.",
  "• Defence against disease.",

  "",

  "### Structural Proteins",

  "Some proteins provide strength and support.",

  "Examples include:",

  "• Collagen – strengthens skin, tendons and bones.",
  "• Keratin – found in hair, nails and the outer layer of skin.",

  "",

  "### Transport Proteins",

  "Some proteins transport molecules throughout the body or across cell membranes.",

  "Example:",

  "• Haemoglobin transports oxygen in red blood cells.",

  "This allows oxygen to reach every cell in the body.",

  "",

  "### Receptor Proteins",

  "Cells constantly receive signals from their environment.",

  "Receptor proteins recognise these signals and pass the information into the cell.",

  "This allows cells to respond to hormones, neurotransmitters and other signalling molecules.",

  "",

  "### Contractile Proteins",

  "Some proteins help cells and muscles move.",

  "The two most important are:",

  "• Actin.",
  "• Myosin.",

  "Together they produce muscle contraction.",

  "",

  "### Defensive Proteins",

  "The immune system also uses proteins.",

  "Antibodies are proteins that recognise and destroy harmful bacteria and viruses.",

  "They help protect the body from disease.",

  "",

  "### Why Protein Shape Matters",

  "A protein only works if it has the correct shape.",

  "The shape determines which molecules it can interact with.",

  "If the protein unfolds or changes shape, it usually loses its function.",

  "This idea will become even more important in the next topic when we study enzymes.",

  "",

  "### Summary",

  "• Proteins are made from amino acids.",
  "• Amino acids join by peptide bonds.",
  "• Many amino acids form polypeptides.",
  "• Protein function depends on its shape.",
  "• Proteins perform structural, transport, movement, signalling and defence functions.",

  "",

  "### Memory Trick",

  "Think of proteins as the workers in a factory.",

  "Carbohydrates provide the fuel.",
  "Lipids store the fuel.",
  "Proteins do the work.",

  "",

  "EXAM TIP:",

  "Students often confuse amino acids and proteins. Remember: amino acids are the building blocks, while proteins are the finished product made from many amino acids."

];

class ProteinsScreen extends StatelessWidget {
  const ProteinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: [],
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell",
        subtopic: "Proteins",
      ),
    );
  }
}