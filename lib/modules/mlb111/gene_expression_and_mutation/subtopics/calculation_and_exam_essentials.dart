import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class CalculationsAndExamEssentialsScreen extends StatelessWidget {
  const CalculationsAndExamEssentialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Calculations and Exam Essentials",
      images: [],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Calculation and Exam Essentials",
      ),
      notes: [

        "One of the easiest ways to lose marks in Genetics is by making simple calculation mistakes. Fortunately, nearly all gene expression calculations follow a small number of rules. Once you understand these rules, you can answer almost every calculation question with confidence.",

        "",

        "### Before You Start Any Calculation",

        "Always identify what information the question gives you.",

        "Ask yourself:",

        "• Am I given the DNA template strand?",
        "• Am I given the DNA coding strand?",
        "• Am I given the mRNA sequence?",
        "• Am I given the amino acid sequence?",
        "• Am I being asked to identify a mutation?",

        "Many mistakes happen because students immediately start writing complementary bases without first identifying which strand they were given.",

        "EXAM TIP: The first mark is often earned simply by identifying whether the DNA strand is the TEMPLATE strand or the CODING strand.",

        "",

        "### Calculation 1: DNA Template Strand → mRNA",

        "During transcription, RNA Polymerase reads ONLY the DNA template strand.",

        "The mRNA produced is COMPLEMENTARY to the template strand.",

        "",

        "",

        "Base pairing rules:",

        "• DNA A → RNA U",
        "• DNA T → RNA A",
        "• DNA C → RNA G",
        "• DNA G → RNA C",

        "",

        "Example:",

        "DNA Template:",
        "3' TAC GGA TTT CCG 5'",

        "",

        "mRNA Produced:",
        "5' AUG CCU AAA GGC 3'",

        "",

        "Notice two important things:",

        "• RNA contains U instead of T.",
        "• The mRNA is always written in the 5' → 3' direction.",

        "MEMORY TRICK: Template strand is READ. mRNA is BUILT.",

        "",

        "### Calculation 2: DNA Coding Strand → mRNA",

        "Sometimes the question gives you the coding strand instead of the template strand.",

        "This calculation is much easier.",

        "The mRNA has EXACTLY the same sequence as the coding strand EXCEPT that every T becomes U.",

        "",

        "Example:",

        "DNA Coding:",
        "5' ATG CCT AAA GGC 3'",

        "",

        "mRNA:",
        "5' AUG CCU AAA GGC 3'",

        "",

        "Only ONE thing changed:",

        "T → U",

        "Everything else stayed exactly the same.",

        "EXAM TIP: Coding strand and mRNA are almost identical.",

        "",

        "### Template Strand vs Coding Strand",

        "Students confuse these two strands more than any other concept in Genetics.",

        "Template strand:",

        "• Read directly by RNA Polymerase.",
        "• Complementary to mRNA.",

        "",

        "Coding strand:",

        "• NOT read by RNA Polymerase.",
        "• Has almost the same sequence as mRNA.",
        "• Only differs because RNA uses U instead of T.",

        "",

        "MEMORY TRICK:",

        "Template = Transcribed.",
        "Coding = Copy of mRNA.",

        "",

        "### Calculation 3: mRNA → tRNA Anticodon",

        "Every codon on mRNA is recognised by a complementary anticodon on tRNA.",

        "The anticodon base-pairs with the codon inside the ribosome.",

        "Base pairing:",

        "• A ↔ U",
        "• C ↔ G",

        "",

        "Example:",

        "mRNA Codon:",
        "AUG",

        "",

        "tRNA Anticodon:",
        "UAC",

        "",

        "Another Example:",

        "mRNA:",
        "GCU",

        "",

        "tRNA:",
        "CGA",

        "EXAM TIP: The anticodon is ALWAYS complementary to the mRNA codon — never to the DNA strand.",

        "",

        "### Calculation 4: Number of Codons",

        "A codon consists of THREE nucleotides.",

        "Formula:",

        "Number of Codons = Number of Nucleotides ÷ 3",

        "",

        "Example:",

        "300 nucleotides",

        "",

        "300 ÷ 3 = 100 codons",

        "",

        "Example:",

        "900 nucleotides",

        "",

        "900 ÷ 3 = 300 codons",

        "",

        "### Calculation 5: Number of Amino Acids",

        "One codon usually produces one amino acid.",

        "However, one codon is normally the STOP codon.",

        "The stop codon does NOT code for an amino acid.",

        "",

        "Formula:",

        "Number of Amino Acids = Number of Codons − 1",

        "",

        "Example:",

        "99 codons",

        "",

        "99 − 1 = 98 amino acids",

        "",

        "Example:",

        "450 nucleotides",

        "",

        "450 ÷ 3 = 150 codons",

        "",

        "150 − 1 = 149 amino acids",

        "",

        "EXAM TIP: Never forget to subtract the stop codon unless the question specifically tells you otherwise.",

        "",

        "",

        "### Using the Genetic Code",

        "After obtaining the mRNA sequence, use the codon table to identify the amino acids.",

        "Always:",

        "• Read the mRNA.",
        "• NOT the DNA.",
        "• NOT the anticodon.",

        "",

        "Example:",

        "mRNA:",

        "AUG GCU UUU GGA UAA",

        "",

        "Protein:",

        "Methionine → Alanine → Phenylalanine → Glycine",

        "",

        "Translation stops at UAA because it is a STOP codon.",

        "",

        "PRACTICE QUESTION:",

        "The DNA template strand is:",
        "3' TAC CGA GTT AAA CGC ATT 5'",

        "",

        "Determine:",

        "1. The mRNA sequence.",
        "2. The tRNA anticodons.",
        "3. The amino acid sequence.",
        "4. The total number of amino acids produced.",

        "### Calculation 6: Reading Frames",

        "Proteins are produced by reading mRNA three nucleotides at a time. These groups of three nucleotides are called codons.",

        "The ribosome MUST begin at the correct start codon (AUG). Once translation starts, every group of three nucleotides after that forms the reading frame.",

        "If the reading frame changes, every codon after the mutation may also change, often producing a completely different protein.",

        "Example:",

        "Normal mRNA:",
        "AUG | GCU | UUU | GGA | UAA",

        "",

        "After a single nucleotide insertion:",
        "AUG | GCG | UUU | UGG | AUA ...",

        "",

        "Notice that every codon after the insertion changes.",

        "This is called a frameshift mutation.",

        "EXAM TIP: Insertions and deletions that are NOT multiples of three usually cause frameshift mutations.",

        "",

        "### How To Recognise Mutation Questions",

        "When answering mutation questions, first determine what type of mutation has occurred before predicting its effect.",

        "Ask yourself:",

        "• Was one nucleotide substituted?",
        "• Was one or more nucleotides inserted?",
        "• Was one or more nucleotides deleted?",
        "• Was the reading frame changed?",

        "",

        "Then determine the biological consequence.",

        "Possible outcomes include:",

        "• Silent mutation.",
        "• Missense mutation.",
        "• Nonsense mutation.",
        "• Frameshift mutation.",

        "",

        "### Worked Example",

        "Original DNA Coding Strand:",

        "5' ATG GCT TTT GGA TAA 3'",

        "",

        "Original mRNA:",

        "5' AUG GCU UUU GGA UAA 3'",

        "",

        "Protein:",

        "Methionine → Alanine → Phenylalanine → Glycine",

        "",

        "Now suppose the third codon changes from UUU to UUA.",

        "",

        "New Protein:",

        "Methionine → Alanine → Leucine → Glycine",

        "",

        "Only ONE amino acid changed.",

        "This is a MISSENSE mutation.",

        "",

        "### Distinction-Level Strategy",

        "High-level genetics questions usually require you to combine several concepts in one problem.",

        "For example, a single question may require you to:",

        "• Identify the DNA strand provided.",
        "• Produce the mRNA sequence.",
        "• Determine the tRNA anticodons.",
        "• Translate the amino acid sequence.",
        "• Identify a mutation.",
        "• Predict its effect on the protein.",

        "Always solve these questions in order. Skipping steps usually leads to mistakes.",

        "",

        "### Common Mistakes Students Make",

        "1. Using T instead of U in RNA.",

        "2. Translating DNA instead of mRNA.",

        "3. Forgetting that translation begins at AUG.",

        "4. Forgetting that STOP codons do not code for amino acids.",

        "5. Confusing the coding strand with the template strand.",

        "6. Writing mRNA in the wrong direction.",

        "7. Using the tRNA anticodon to identify amino acids instead of the mRNA codon.",

        "",

        "EXAM TIP: Amino acids are determined from the mRNA codons, NOT from DNA and NOT from tRNA anticodons.",

        "",

        "### Final Exam Essentials",

        "By the end of Theme 1, you should be able to:",

        "• Explain the Central Dogma (DNA → RNA → Protein).",
        "• Describe transcription step by step.",
        "• Explain RNA processing.",
        "• Explain translation in detail.",
        "• Describe wobble hypothesis.",
        "• Explain gene regulation.",
        "• Describe different types of mutations.",
        "• Explain how mutations contribute to cancer.",
        "• Solve all DNA, mRNA, tRNA and amino acid calculations.",
        "• Predict the effect of mutations on proteins.",

        "",

        "MEMORY TRICK:",

        "DNA stores the instructions.",
        "RNA carries the instructions.",
        "Proteins perform the function.",
        "Mutations alter the instructions.",

        "",

        "### Mixed Revision Questions",

        "PRACTICE 1:",
        "A DNA template strand has the sequence:",
        "3' TAC CGA TTT GCC ACT 5'",
        "Determine:",
        "• The mRNA sequence.",
        "• The tRNA anticodons.",
        "• The amino acid sequence.",

        "",

        "PRACTICE 2:",
        "An mRNA molecule contains 903 nucleotides (including the stop codon).",
        "Calculate:",
        "• Number of codons.",
        "• Number of amino acids in the protein.",

        "",

        "PRACTICE 3:",
        "A substitution mutation changes the codon UAU to UAA.",
        "Identify:",
        "• The type of mutation.",
        "• Its effect on the protein.",
        "• Why this mutation is often harmful.",

        "",

        "PRACTICE 4:",
        "Explain why insertions and deletions usually have a greater effect on proteins than substitution mutations.",

        "",

        "PRACTICE 5:",
        "A mutation converts a proto-oncogene into an oncogene while another mutation inactivates a tumour suppressor gene.",
        "Explain how these two mutations work together to increase the likelihood of cancer development.",

        "",

        "EXAM TIP: If you can confidently solve every calculation in this chapter and explain every biological process in your own words, you are well prepared for university-level genetics questions.",
      ],
    );
  }
}
