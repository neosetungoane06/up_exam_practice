import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class WobbleHypothesisScreen extends StatelessWidget {
  const WobbleHypothesisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "The Wobble Hypothesis",
      images: [
        "assets/modules/mlb111/Wobble_Hypothesis.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Wobble Hypothesis",
      ),
      notes: [

        "After learning about codons, anticodons and tRNA, a very important question arises. The genetic code contains **64 codons**, of which **61 code for amino acids**. If every codon required its own unique tRNA, cells would need at least 61 different tRNA molecules. Surprisingly, cells contain far fewer tRNA molecules than this. How is that possible?",

        "",

        "### The Wobble Hypothesis",

        "The **Wobble Hypothesis** was proposed by Francis Crick in 1966 to explain why a single tRNA molecule can recognise more than one codon.",

        "",

        "The hypothesis states that **base pairing between the codon and anticodon is not equally strict at all three positions**.",

        "",

        "The **first two bases** of the codon must pair according to the normal complementary base-pairing rules.",

        "",

        "However, the **third base of the codon** (which pairs with the **first base of the anticodon**) is much more flexible. This flexibility is called **wobble**.",

        "",

        "[IMAGE]",

        "",

        "### Why Does Wobble Occur?",

        "The ribosome holds the first two bases of the codon and anticodon together very tightly because these positions are critical for identifying the correct amino acid.",

        "",

        "The third position is held less rigidly, allowing certain non-standard base pairings to occur without changing the amino acid that is added to the growing protein.",

        "",

        "As a result, **one tRNA can recognise several different codons**, provided those codons differ only in their third nucleotide.",

        "",

        "EXAM TIP: The wobble position is the **third nucleotide of the codon** and the **first nucleotide of the anticodon**.",

        "",

        "### Example",

        "The amino acid **Glycine** is coded for by four different codons:",

        "• GGU",
        "• GGC",
        "• GGA",
        "• GGG",

        "",

        "Instead of requiring four completely different tRNA molecules, a single tRNA can often recognise several of these codons because the third base is able to wobble.",

        "",

        "This means that although the codons are slightly different, they still deliver the **same amino acid** to the ribosome.",

        "",

        "### Why Is The Wobble Hypothesis Important?",

        "The wobble hypothesis makes protein synthesis far more efficient.",

        "",

        "Without wobble:",

        "• Cells would need a different tRNA for almost every amino-acid codon.",
        "• Many more tRNA genes would be required.",
        "• Protein synthesis would be less efficient and require more cellular resources.",

        "",

        "With wobble:",

        "• Fewer tRNA molecules are needed.",
        "• One tRNA can recognise multiple synonymous codons.",
        "• Translation becomes faster and more efficient.",

        "",

        "### Relationship Between Wobble and the Genetic Code",

        "The wobble hypothesis works because the genetic code is **degenerate** (redundant).",

        "",

        "A degenerate genetic code means that **more than one codon can code for the same amino acid**.",

        "",

        "The wobble hypothesis explains **how the ribosome can read these different codons using fewer tRNA molecules**.",

        "",

        "MEMORY TRICK: The first two bases are **strict**, the third base **wobbles**.",

        "",

        "PRACTICE QUESTION:\nExplain the Wobble Hypothesis. In your answer, describe which position of the codon is flexible, explain why wobble is beneficial to the cell, and discuss how the wobble hypothesis is related to the degeneracy of the genetic code.",

      ],
    );
  }
}