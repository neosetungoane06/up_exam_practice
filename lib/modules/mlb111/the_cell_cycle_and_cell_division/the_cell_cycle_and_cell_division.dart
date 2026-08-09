import 'package:flutter/material.dart';

import '../../widget/topic_browser.dart';

import 'subtopics/introduction_to_cell_cycle.dart';
import 'subtopics/chromatin_and_chromatids.dart';
import 'subtopics/cell_cycle.dart';
import 'subtopics/cdk_cyclin.dart';
import 'subtopics/mitosis.dart';
import 'subtopics/cytokinesis.dart';
import 'subtopics/cell_cycle_regulation_and_cancer.dart';
import 'subtopics/cell_mutation.dart';

class TheCellCycleAndCellDivisionScreen extends StatelessWidget {
  const TheCellCycleAndCellDivisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "The Cell Cycle and Cell Division",
      description:
          "Understand how cells grow, replicate DNA, divide, regulate the cell cycle, and how failures in regulation can lead to cancer.",
      subtopics: const [

        Subtopic(
          title: "Introduction",
          description:
              "Why cells divide, DNA packaging and an overview of the Cell Cycle.",
          screen: IntroductionToCellCycleScreen(),
        ),

        Subtopic(
          title: "Chromatin and Chromatids",
          description:
              "Learn how DNA is packaged into chromosomes and understand sister chromatids.",
          screen: ChromatinAndChromatidsScreen(),
        ),

        Subtopic(
          title: "The Cell Cycle",
          description:
              "Study Interphase, G₀, checkpoints and preparation for cell division.",
          screen: CellCycleScreen(),
        ),

        Subtopic(
          title: "Cyclins and CDKs",
          description:
              "Understand how cyclins and CDKs regulate progression through the Cell Cycle.",
          screen: CdkCyclinScreen(),
        ),

        Subtopic(
          title: "Mitosis",
          description:
              "Master PMAT and understand how identical daughter cells are produced.",
          screen: MitosisScreen(),
        ),

        Subtopic(
          title: "Cytokinesis",
          description:
              "Learn how the cytoplasm divides to produce two independent daughter cells.",
          screen: CytokinesisScreen(),
        ),

        Subtopic(
          title: "Cell Cycle Regulation and Cancer",
          description:
              "Discover checkpoints, tumour suppressor genes, oncogenes and cancer formation.",
          screen: CellCycleRegulationAndCancerScreen(),
        ),

        Subtopic(
          title: "Mutations",
          description:
              "Understand DNA mutations, their types, causes and biological significance.",
          screen: CellMutationScreen(),
        ),
      ],
    );
  }
}