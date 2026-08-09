import 'package:flutter/material.dart';
import '../../widget/topic_browser.dart';

import 'subtopics/introduction_to_cellular_respiration.dart';
import 'subtopics/oxidation_and_reduction_reactions.dart';
import 'subtopics/glycolysis.dart';
import 'subtopics/pyruvate_oxidation.dart';
import 'subtopics/citric_acid_cycle.dart';
import 'subtopics/electron_transport_chain_and_oxidative_phosphorylation.dart';
import 'subtopics/fermentation.dart';

class PathwayThatHarvestEnergyScreen extends StatelessWidget {
  const PathwayThatHarvestEnergyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopicBrowser(
      title: "Pathways that Harvest Chemical Energy",

      description:
      "Learn how cells convert the chemical energy stored in glucose into ATP through cellular respiration, oxidation-reduction reactions, glycolysis, pyruvate oxidation, the citric acid cycle, oxidative phosphorylation and fermentation.",

      subtopics: [

        Subtopic(
          title: "Introduction to Cellular Respiration",
          description:
          "Overview of how cells harvest energy from glucose.",
          screen: IntroductionToCellularRespirationScreen(),
        ),

        Subtopic(
          title: "Oxidation and Reduction Reactions",
          description:
          "Understand electron transfer, oxidation, reduction and redox reactions.",
          screen: OxidationAndReductionReactionScreen(),
        ),

        Subtopic(
          title: "Glycolysis",
          description:
          "Study the first stage of cellular respiration and ATP production.",
          screen: GlycolysisScreen(),
        ),

        Subtopic(
          title: "Pyruvate Oxidation",
          description:
          "Learn how pyruvate is converted into Acetyl-CoA.",
          screen: PyruvateOxidationScreen(),
        ),

        Subtopic(
          title: "Citric Acid Cycle (Krebs Cycle)",
          description:
          "Understand how NADH and FADH₂ are generated inside the mitochondrion.",
          screen: CitricAcidCycleScreen(),
        ),

        Subtopic(
          title: "Electron Transport Chain & Oxidative Phosphorylation",
          description:
          "Learn how most ATP is produced using NADH, FADH₂ and oxygen.",
          screen: ElectronTransportChainAndOxidativePhosphorylationScreen(),
        ),

        Subtopic(
          title: "Fermentation",
          description:
          "Understand how cells regenerate NAD⁺ when oxygen is unavailable.",
          screen: FermentationScreen(),
        ),

      ],
    );
  }
}