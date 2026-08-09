import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class BondsAndCalculationsScreen extends StatelessWidget {
  const BondsAndCalculationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "DNA Structure, Bonds and Calculations",
      images: [
        "assets/modules/mlb111/DNA.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Bonds and Calculations",
      ),
      notes: [

        "DNA is not simply a long molecule floating inside the nucleus. It has a very specific structure that allows it to store information accurately, replicate itself and pass genetic information from one generation to the next.",

        "",

        "Everything that happens in DNA replication, transcription and protein synthesis depends on understanding the structure of DNA first.",

        "",

        "[IMAGE]",

        "",

        "### DNA (Deoxyribonucleic Acid)",

        "DNA stands for Deoxyribonucleic Acid. It is the hereditary material found in almost every living organism.",

        "",

        "Its main function is to store and transmit genetic information.",

        "",

        "DNA tells cells:",

        "",

        "• Which proteins to produce",
        "• When proteins should be produced",
        "• How cells should function",
        "• How organisms grow and develop",

        "",

        "Without DNA, cells would have no instructions and life would not exist.",

        "",

        "EXAM TIP: DNA is the molecule responsible for storing hereditary information.",

        "",

        "### The Double Helix",

        "James Watson and Francis Crick discovered that DNA has a double-helix structure.",

        "",

        "Think of DNA as a twisted ladder.",

        "",

        "• The ladder has two long strands.",
        "• The strands twist around one another.",
        "• The twisting forms the double helix.",

        "",

        "Each strand runs in the opposite direction to the other. Scientists describe this as antiparallel strands.",

        "",

        "You do not usually need to memorise the word 'antiparallel', but understanding that the strands run in opposite directions helps explain DNA replication later.",

        "",

        "MEMORY TRICK: Double Helix = Twisted Ladder.",

        "",

        "### What Is a Nucleotide?",

        "DNA is built from many repeating units called nucleotides.",

        "",

        "A nucleotide is the basic building block (monomer) of DNA.",

        "",

        "Every nucleotide contains THREE parts:",

        "",

        "• One phosphate group",
        "• One deoxyribose sugar",
        "• One nitrogenous base",

        "",

        "Thousands to millions of nucleotides join together to form one DNA molecule.",

        "",

        "Think of a nucleotide as a single Lego brick. Many Lego bricks joined together build something much bigger. Likewise, many nucleotides joined together build DNA.",

        "",

        "### The Sugar-Phosphate Backbone",

        "The outside of the DNA molecule is called the sugar-phosphate backbone.",

        "",

        "It consists of alternating sugar molecules and phosphate groups.",

        "",

        "Its job is to provide strength and stability to the DNA molecule.",

        "",

        "Think of the sugar-phosphate backbone as the rails of a railway track. The rails keep everything together while the information is stored between them.",

        "",

        "### Nitrogenous Bases",

        "The nitrogenous bases form the 'steps' or 'rungs' of the DNA ladder.",

        "",

        "There are only FOUR bases:",

        "",

        "• Adenine (A)",
        "• Thymine (T)",
        "• Cytosine (C)",
        "• Guanine (G)",

        "",

        "Although there are only four bases, different sequences of these bases can create millions of different genetic instructions.",

        "",

        "Think of them like the letters of an alphabet. Only a few letters exist, but millions of words can be formed from them.",

        "",

        "### Complementary Base Pairing",

        "Bases NEVER pair randomly.",

        "",

        "Each base has only ONE correct partner.",

        "",

        "• Adenine (A) always pairs with Thymine (T)",
        "• Cytosine (C) always pairs with Guanine (G)",

        "",

        "This is called complementary base pairing.",

        "",

        "Because the pairing is always predictable, if you know one DNA strand, you automatically know the second strand.",

        "",

        "Example:",

        "",

        "First strand:",
        "A A T G C T G A",

        "",

        "Complementary strand:",
        "T T A C G A C T",

        "",

        "PRACTICE: Write the complementary strand for:",
        "A G C T T A G C",

        "",

        "Answer:",
        "T C G A A T C G",

        "",

        "EXAM TIP: Students lose marks by pairing A with C or G with T. Always remember:",
        "A ↔ T",
        "C ↔ G",

        "",

        "### Hydrogen Bonds",

        "The two DNA strands are held together by hydrogen bonds.",

        "",

        "Hydrogen bonds connect one nitrogenous base to its complementary partner.",

        "",

        "Not all base pairs have the same number of hydrogen bonds.",

        "",

        "• A-T has 2 hydrogen bonds",
        "• C-G has 3 hydrogen bonds",

        "",

        "Why does this matter?",

        "",

        "Because C-G pairs are held together more strongly than A-T pairs.",

        "",

        "DNA regions with many C-G pairs are therefore more stable than regions containing mostly A-T pairs.",

        "",

        "MEMORY TRICK:",
        "AT = 2",
        "CG = 3",

        "",

        "### Calculating Hydrogen Bonds",

        "Questions involving hydrogen bonds are common in university examinations.",

        "",

        "Formula:",

        "",

        "Hydrogen Bonds = (Number of A-T pairs × 2) + (Number of C-G pairs × 3)",

        "",

        "Example:",

        "A DNA molecule contains:",
        "120 A-T pairs",
        "80 C-G pairs",

        "",

        "Hydrogen Bonds =",
        "(120 × 2) + (80 × 3)",

        "",

        "= 240 + 240",

        "",

        "= 480 hydrogen bonds",

        "",

        "### Phosphodiester Bonds",

        "Hydrogen bonds join the TWO DNA strands together.",

        "",

        "Phosphodiester bonds perform a completely different function.",

        "",

        "Phosphodiester bonds join neighbouring nucleotides together on ONE DNA strand.",

        "",

        "These bonds create the sugar-phosphate backbone.",

        "",

        "Without phosphodiester bonds, DNA would simply fall apart into individual nucleotides.",

        "",

        "Formula:",

        "",

        "Number of Phosphodiester Bonds = Number of Nucleotides − 1",

        "",

        "Examples:",

        "• 10 nucleotides → 9 phosphodiester bonds",
        "• 50 nucleotides → 49 phosphodiester bonds",
        "• 500 nucleotides → 499 phosphodiester bonds",

        "",

        "PRACTICE:",
        "If a DNA strand contains 350 nucleotides, how many phosphodiester bonds are present?",

        "",

        "Answer:",
        "349 phosphodiester bonds",

        "",

        "### Chargaff's Rule",

        "Erwin Chargaff discovered that complementary base pairing causes predictable percentages of DNA bases.",

        "",

        "In every double-stranded DNA molecule:",

        "",

        "• %A = %T",
        "• %C = %G",

        "",

        "Example:",

        "If Adenine = 28%",

        "",

        "Then:",

        "Thymine = 28%",

        "",

        "Total so far = 56%",

        "",

        "Remaining = 44%",

        "",

        "Therefore:",

        "Cytosine = 22%",
        "Guanine = 22%",

        "",

        "PRACTICE:",

        "If Cytosine is 18%, determine the percentages of all four bases.",

        "",

        "Answer:",

        "C = 18%",
        "G = 18%",
        "A = 32%",
        "T = 32%",

        "",

        "EXAM TIP: Chargaff's Rule only applies to DOUBLE-STRANDED DNA.",

        "",

        "### Bringing Everything Together",

        "The DNA molecule is beautifully organised.",

        "",

        "• Nucleotides are the building blocks.",
        "• Phosphodiester bonds join nucleotides into long strands.",
        "• Hydrogen bonds join the two strands together.",
        "• Complementary base pairing allows DNA to be copied accurately.",
        "• The sequence of bases stores genetic information.",

        "",

        "Understanding these relationships is essential because the next topic—DNA Replication—depends entirely on them.",

        "",

        "MEMORY TRICK: Structure first... Replication next.",

        "",

        "### Exam Essentials",

        "• DNA stands for Deoxyribonucleic Acid.",
        "• DNA is made of nucleotides.",
        "• Each nucleotide contains phosphate, sugar and a nitrogenous base.",
        "• DNA forms a double helix.",
        "• The sugar-phosphate backbone forms the sides of DNA.",
        "• Nitrogenous bases form the rungs.",
        "• A pairs with T.",
        "• C pairs with G.",
        "• A-T has 2 hydrogen bonds.",
        "• C-G has 3 hydrogen bonds.",
        "• Phosphodiester bonds join nucleotides on one strand.",
        "• Chargaff's Rule: A = T and C = G.",
      ],
    );
  }
}