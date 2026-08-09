import 'package:flutter/material.dart';

import '../../widget/topic_browser.dart';

import 'subtopics/photosynthesis_introduction.dart';
import 'subtopics/chloroplast_structure.dart';
import 'subtopics/pigments_and_chlorophyll.dart';
import 'subtopics/light_dependent_reactions.dart';
import 'subtopics/electron_transport_chain.dart';
import 'subtopics/calvin_cycle.dart';
import 'subtopics/factors_affecting_photosynthesis.dart';
import 'subtopics/photosynthesis_vs_cellular_respiration.dart';

class PhotosynthesisScreen extends StatelessWidget {
  const PhotosynthesisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "Photosynthesis",
      description:
      "Study photosynthesis one concept at a time. Each subtopic builds on the previous one, so complete them in order for the best understanding.",
      subtopics: const [

        Subtopic(
          title: "Introduction to Photosynthesis",
          description: "What photosynthesis is, why it is important and the overall process.",
          screen: PhotosynthesisIntroductionScreen(),
        ),

        Subtopic(
          title: "Chloroplast Structure",
          description: "The structure and function of the chloroplast.",
          screen: ChloroplastStructureScreen(),
        ),

        Subtopic(
          title: "Pigments and Chlorophyll",
          description: "Chlorophyll, accessory pigments and photosystems.",
          screen: PigmentsAndChlorophyllScreen(),
        ),

        Subtopic(
          title: "Light-Dependent Reactions",
          description: "How light energy is captured and converted into ATP and NADPH.",
          screen: LightDependentReactionsScreen(),
        ),

        Subtopic(
          title: "Electron Transport Chain",
          description: "Movement of electrons and ATP production during photosynthesis.",
          screen: ElectronTransportChainScreen(),
        ),

        Subtopic(
          title: "Calvin Cycle",
          description: "Carbon fixation and glucose production.",
          screen: CalvinCycleScreen(),
        ),

        Subtopic(
          title: "Factors Affecting Photosynthesis",
          description: "Environmental factors that influence the rate of photosynthesis.",
          screen: FactorsAffectingPhotosynthesisScreen(),
        ),

        Subtopic(
          title: "Photosynthesis vs Cellular Respiration",
          description: "Compare photosynthesis and cellular respiration, including Rubisco, G3P and ATP.",
          screen: PhotosynthesisVsCellularRespirationScreen(),
        ),

      ],
    );
  }
}