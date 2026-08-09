import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class CalculationEssentialsScreen extends StatelessWidget {
  const CalculationEssentialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "DNA Calculations and Exam Essentials",
      images: [],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Calculation Essentials",
      ),
      notes: [

        "Many students understand DNA replication but lose marks on calculations. Fortunately, almost every DNA calculation follows a small number of rules. Once you understand these rules, DNA calculations become straightforward.",

        "",

        "### DNA Calculation 1: Complementary DNA Strands",

        "The first skill is writing the complementary DNA strand.",

        "Always apply the complementary base-pairing rules:",

        "• Adenine (A) pairs with Thymine (T).",
        "• Thymine (T) pairs with Adenine (A).",
        "• Cytosine (C) pairs with Guanine (G).",
        "• Guanine (G) pairs with Cytosine (C).",

        "",

        "Example:",

        "Original DNA Strand:",
        "A T G C C A T G",

        "",

        "Complementary DNA Strand:",
        "T A C G G T A C",

        "",

        "Remember that every nucleotide MUST have its complementary partner.",

        "EXAM TIP: Never pair A with C or G with T. Complementary base pairing is fixed.",

        "",

        "### DNA Calculation 2: Hydrogen Bonds",

        "Hydrogen bonds hold the two DNA strands together.",

        "Different base pairs form different numbers of hydrogen bonds:",

        "• A–T = 2 hydrogen bonds.",
        "• C–G = 3 hydrogen bonds.",

        "",

        "Example:",

        "A DNA molecule contains:",

        "• 120 A–T base pairs.",
        "• 80 C–G base pairs.",

        "",

        "Hydrogen Bonds = (120 × 2) + (80 × 3)",

        "= 240 + 240",

        "= 480 Hydrogen Bonds",

        "",

        "Formula:",

        "Hydrogen Bonds = (A–T × 2) + (C–G × 3)",

        "",

        "Common Mistake:",

        "Students sometimes multiply every base by 2 or every base by 3.",

        "Always identify how many A–T pairs and how many C–G pairs separately before calculating.",

        "",

        "### DNA Calculation 3: Phosphodiester Bonds",

        "Phosphodiester bonds join neighbouring nucleotides together along ONE DNA strand.",

        "If a strand contains n nucleotides:",

        "Phosphodiester Bonds = n − 1",

        "",

        "Example:",

        "One DNA strand contains 500 nucleotides.",

        "Phosphodiester Bonds = 500 − 1 = 499",

        "",

        "Now suppose the question asks for BOTH DNA strands.",

        "Each strand has one fewer phosphodiester bond than nucleotides.",

        "",

        "Example:",

        "Double-stranded DNA contains 500 base pairs.",

        "Each strand contains 500 nucleotides.",

        "Each strand therefore has:",

        "499 phosphodiester bonds.",

        "",

        "Total phosphodiester bonds = 499 + 499 = 998",

        "",

        "Shortcut:",

        "If the DNA molecule contains n base pairs:",

        "Total phosphodiester bonds = (2 × n) − 2",

        "",

        "Example:",

        "1000 base pairs",

        "Phosphodiester bonds = (2 × 1000) − 2",

        "= 1998",

        "",

        "EXAM TIP: Subtract ONE for each DNA strand, not just once for the whole molecule.",

        "",

        "### DNA Calculation 4: Chargaff's Rule",

        "Chargaff discovered that in double-stranded DNA:",

        "• A = T",
        "• C = G",

        "",

        "This means that once you know ONE percentage, you can calculate all the others.",

        "",

        "Example:",

        "Adenine = 35%",

        "",

        "Therefore:",

        "Thymine = 35%",

        "",

        "A + T = 70%",

        "",

        "Remaining = 30%",

        "",

        "Therefore:",

        "Cytosine = 15%",

        "Guanine = 15%",

        "",

        "Another Example:",

        "Cytosine = 22%",

        "",

        "Therefore:",

        "Guanine = 22%",

        "C + G = 44%",

        "Remaining = 56%",

        "Adenine = 28%",

        "Thymine = 28%",

        "",

        "MEMORY TRICK: Whatever A has, T has. Whatever C has, G has.",

        "",

        "### Choosing the Correct Formula",

        "When solving DNA questions, first ask yourself:",

        "• Is the question asking about complementary strands?",
        "• Is it asking about hydrogen bonds?",
        "• Is it asking about phosphodiester bonds?",
        "• Is it asking about nucleotide percentages?",

        "Once you identify the type of calculation, the formula becomes obvious.",

        "",

        "### Big Picture Summary",

        "You have now completed DNA and DNA Replication.",

        "DNA stores hereditary information using four nitrogenous bases.",

        "Complementary base pairing allows DNA to replicate accurately.",

        "DNA replication begins at origins of replication and proceeds through semi-conservative replication using specialised enzymes such as Helicase, Primase, DNA Polymerase and DNA Ligase.",

        "Proofreading and DNA repair mechanisms ensure remarkable replication accuracy, while telomeres and telomerase protect chromosome ends during repeated cell divisions.",

        "Finally, DNA calculations allow us to analyse DNA molecules using the same biological principles that govern DNA replication.",

        "",

        "MEMORY TRICK: If you understand DNA structure, complementary base pairing, DNA replication and DNA calculations, you understand the entire foundation of molecular genetics.",

        "",

        "### Exam Essentials",

        "• DNA is the hereditary material.",
        "• DNA stands for Deoxyribonucleic Acid.",
        "• DNA has a double-helix structure.",
        "• A pairs with T.",
        "• C pairs with G.",
        "• A–T contains 2 hydrogen bonds.",
        "• C–G contains 3 hydrogen bonds.",
        "• DNA replication occurs during S phase.",
        "• Replication begins at origins of replication.",
        "• Helicase breaks hydrogen bonds.",
        "• Topoisomerase relieves DNA tension.",
        "• SSB proteins keep DNA strands apart.",
        "• Primase produces RNA primers.",
        "• DNA Polymerase synthesises DNA in the 5' → 3' direction.",
        "• Leading strand is synthesised continuously.",
        "• Lagging strand is synthesised discontinuously.",
        "• Okazaki fragments occur only on the lagging strand.",
        "• DNA Ligase joins Okazaki fragments.",
        "• DNA replication is semi-conservative.",
        "• DNA Polymerase proofreads DNA.",
        "• Mismatch repair corrects missed replication errors.",
        "• Excision repair repairs damaged DNA.",
        "• Telomeres protect chromosome ends.",
        "• Telomerase rebuilds telomeres.",
        "• Chargaff's Rule: A = T and C = G.",
        "• Phosphodiester bonds = Number of nucleotides − 1 (per strand).",
        "• Hydrogen Bonds = (A–T × 2) + (C–G × 3).",

        "",

        "PRACTICE QUESTION:\nA double-stranded DNA molecule contains 400 base pairs. Adenine makes up 30% of all bases. Calculate:\n1. The percentage of each remaining base.\n2. The total number of hydrogen bonds.\n3. The total number of phosphodiester bonds in the DNA molecule.",

      ],
    );
  }
}
