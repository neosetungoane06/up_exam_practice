import 'package:flutter/material.dart';

import '../../widget/topic_browser.dart';

import 'subtopics/dna_introduction.dart';
import 'subtopics/experiments.dart';
import 'subtopics/bonds_and_calculations.dart';
import 'subtopics/origin.dart';
import 'subtopics/semi_conservative.dart';
import 'subtopics/replication_enzymes.dart';
import 'subtopics/strands.dart';
import 'subtopics/replication_accuracy.dart';
import 'subtopics/telomerase_and_telomere.dart';
import 'subtopics/calculation_essentials.dart';

class DnaAndHeredityScreen extends StatelessWidget {
  const DnaAndHeredityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "DNA and Heredity",
      description:
      "Understand how DNA stores genetic information, how it replicates accurately, and how hereditary information is passed from one generation to the next.",
      subtopics: const [

        Subtopic(
          title: "1. Introduction",
          description:
          "Discover why DNA is called the molecule of life and how heredity connects to everything studied previously.",
          screen: DnaIntroductionScreen(),
        ),

        Subtopic(
          title: "2. DNA Structure & Experimental Evidence",
          description:
          "Learn how scientists proved DNA is the hereditary material and understand the structure of DNA.",
          screen: ExperimentsScreen(),
        ),

        Subtopic(
          title: "3. DNA Bonds & DNA Calculations",
          description:
          "Master complementary base pairing, hydrogen bonds, phosphodiester bonds and Chargaff's Rule.",
          screen: BondsAndCalculationsScreen(),
        ),

        Subtopic(
          title: "4. Origins of DNA Replication",
          description:
          "Understand where DNA replication starts and why origins of replication are essential.",
          screen: OriginScreen(),
        ),

        Subtopic(
          title: "5. Semi-Conservative DNA Replication",
          description:
          "Learn why DNA replication is called semi-conservative and why this process is biologically important.",
          screen: SemiConservativeScreen(),
        ),

        Subtopic(
          title: "6. DNA Replication Enzymes",
          description:
          "Study Helicase, Topoisomerase, Primase, DNA Polymerase and DNA Ligase and their roles during replication.",
          screen: ReplicationEnzymesScreen(),
        ),

        Subtopic(
          title: "7. Leading & Lagging Strands",
          description:
          "Understand continuous and discontinuous DNA synthesis, Okazaki fragments and strand formation.",
          screen: StrandsScreen(),
        ),

        Subtopic(
          title: "8. Proofreading & DNA Repair",
          description:
          "Explore proofreading, mismatch repair, excision repair and how cells maintain DNA accuracy.",
          screen: ReplicationAccuracyScreen(),
        ),

        Subtopic(
          title: "9. Telomeres & Telomerase",
          description:
          "Learn how chromosome ends are protected, why chromosomes shorten and the role of telomerase.",
          screen: TelomeraseAndTelomereScreen(),
        ),

        Subtopic(
          title: "10. DNA Calculations & Exam Essentials",
          description:
          "Practice DNA calculations and review the most important concepts needed for tests and exams.",
          screen: CalculationEssentialsScreen(),
        ),
      ],
    );
  }
}