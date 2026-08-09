import 'package:flutter/material.dart';
import '../../widget/topic_browser.dart';

import 'subtopics/central_dogma.dart';
import 'subtopics/transcription.dart';
import 'subtopics/rna_processing.dart';
import 'subtopics/translation.dart';
import 'subtopics/gene_regulation.dart';
import 'subtopics/mutations.dart';
import 'subtopics/calculation_and_exam_essentials.dart';
import 'subtopics/wobble_hypothesis.dart';

class GeneExpressionAndMutationScreen extends StatelessWidget {
  const GeneExpressionAndMutationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopicBrowser(
      title: "Gene Expression and Mutation",

      description:
      "Study how genetic information flows from DNA to proteins through transcription and translation, how gene expression is regulated, how mutations arise, and how these concepts are applied in biological calculations and disease.",

      subtopics: [

        Subtopic(
          title: "Central Dogma",
          description:
          "Understand the flow of genetic information from DNA to RNA to Protein.",
          screen: CentralDogmaScreen(),
        ),

        Subtopic(
          title: "Transcription",
          description:
          "Learn how DNA is transcribed into pre-mRNA by RNA Polymerase.",
          screen: TranscriptionScreen(),
        ),

        Subtopic(
          title: "RNA Processing",
          description:
          "Study 5' capping, poly-A tail addition, splicing, introns, exons and alternative splicing.",
          screen: RnaProcessingScreen(),
        ),

        Subtopic(
          title: "Translation",
          description:
          "Learn how ribosomes, tRNA and mRNA work together to synthesise proteins.",
          screen: TranslationScreen(),
        ),

        Subtopic(
          title: "Wobble Hypothesis",
          description:
          "Understand why one tRNA can recognise multiple codons and how wobble increases translation efficiency.",
          screen: WobbleHypothesisScreen(),
        ),

        Subtopic(
          title: "Gene Regulation",
          description:
          "Study transcription factors, activators, repressors, operons and cell differentiation.",
          screen: GeneRegulationScreen(),
        ),

        Subtopic(
          title: "Mutations",
          description:
          "Learn about point mutations, frameshifts, mutagens, cancer genetics and mutation effects.",
          screen: MutationScreen(),
        ),

        Subtopic(
          title: "Calculations & Exam Essentials",
          description:
          "Master DNA, mRNA, codon, anticodon and amino acid calculations together with high-yield exam concepts.",
          screen: CalculationsAndExamEssentialsScreen(),
        ),

      ],
    );
  }
}