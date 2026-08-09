import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class GeneExpressionIntroductionScreen extends StatelessWidget {
  const GeneExpressionIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Introduction to Gene Expression",
      images: [
        "assets/modules/mlb111/gene.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Gene Expression Introduction",
      ),
      notes: [

        "Everything you have studied so far has been preparing you for one important question:\n\nHow does the information stored in DNA actually become something useful inside a living cell?",

        "",

        "DNA stores the genetic instructions for life, but DNA itself does not perform cellular functions. Instead, proteins carry out almost all of the work inside cells. Therefore, the information stored in DNA must first be read and converted into proteins before a cell can function.",

        "[IMAGE]",

        "",

        "### Connecting to Previous Topics",

        "In the previous topic (DNA and Heredity), you learnt that DNA stores hereditary information, replicates before cell division and passes genetic information from one generation to the next.",

        "",

        "Now we move to the next question:",

        "How does a cell READ the information stored in DNA and USE it?",

        "",

        "DNA replication copied the entire DNA molecule so genetic information could be passed to new cells. Gene expression is different. Instead of copying the whole DNA molecule, the cell reads only the gene it currently needs.",

        "",

        "MEMORY TRICK: DNA Replication COPIES DNA.\nGene Expression USES DNA.",

        "",

        "### What Is Gene Expression?",

        "Gene expression is the process by which the information stored inside a gene is used to produce a functional product, usually a protein.",

        "",

        "Gene expression transforms stored genetic information into biological function. Without gene expression, DNA would simply remain inside the nucleus and cells would never be able to carry out their specialised functions.",

        "",

        "• DNA stores information.",
        "• RNA carries the information.",
        "• Proteins perform cellular functions.",

        "",

        "EXAM TIP: DNA stores information. Gene expression uses that information to produce proteins.",

        "",

        "### Why Is Gene Expression Important?",

        "Nearly every cell in the human body contains exactly the same DNA, yet different cells perform completely different jobs.",

        "",

        "For example:",

        "• Muscle cells contract.",
        "• Liver cells detoxify chemicals.",
        "• Brain cells transmit electrical impulses.",
        "• White blood cells destroy pathogens.",

        "",

        "If every cell contains the same DNA, why are they different?",

        "",

        "The answer is that different cells express different genes. Each specialised cell only switches on the genes required for its own function while leaving many other genes switched off.",

        "",

        "This is why a muscle cell behaves like a muscle cell even though it contains exactly the same DNA as a neuron.",

        "",

        "### The Journey of Genetic Information",

        "Throughout this topic you will follow genetic information as it moves through the cell:",

        "",

        "DNA",

        "↓",

        "RNA",

        "↓",

        "Protein",

        "↓",

        "Cell Function",

        "↓",

        "Trait",

        "",

        "By the end of this topic you will understand how genes control the structure and function of every living cell and ultimately determine the characteristics of an organism.",

        "",

        "PRACTICE QUESTION:\nEvery cell in your body contains the insulin gene. Explain why only pancreatic beta cells produce insulin while skin cells do not.",

      ],
    );
  }
}