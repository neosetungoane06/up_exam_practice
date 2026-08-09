import 'package:flutter/material.dart';

import '../../widget/topic_browser.dart';

import 'subtopics/energy_introduction_screen.dart';
import 'subtopics/metabolism_screen.dart';
import 'subtopics/catabolism_vs_anabolism_screen.dart';
import 'subtopics/laws_of_thermodynamics_screen.dart';
import 'subtopics/gibbs_free_energy_screen.dart';
import 'subtopics/exergonic_and_endergonic_screen.dart';
import 'subtopics/atp_screen.dart';
import 'subtopics/enzyme_structure_screen.dart';
import 'subtopics/factors_affecting_enzyme_reaction_screen.dart';
import 'subtopics/metabolic_pathway_and_feedback_inhibition_screen.dart';

class EnergyEnzymesMetabolismScreen extends StatelessWidget {
  const EnergyEnzymesMetabolismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "Energy, Enzymes and Metabolism",
      description:
      "Master how cells obtain, store and use energy, how enzymes control biochemical reactions, and how metabolism is regulated.",
      subtopics: [
        Subtopic(
          title: "Introduction",
          description:
          "Energy in living cells, kinetic vs potential energy and why cells require energy.",
          screen: const EnergyIntroductionScreen(),
        ),

        Subtopic(
          title: "Metabolism",
          description:
          "Definition, functions of metabolism and introduction to catabolism and anabolism.",
          screen: const MetabolismScreen(),
        ),

        Subtopic(
          title: "Catabolism vs Anabolism",
          description:
          "Compare the two major types of metabolic reactions.",
          screen: const CatabolismVsAnabolismScreen(),
        ),

        Subtopic(
          title: "Laws of Thermodynamics",
          description:
          "First law, second law and entropy in biological systems.",
          screen: const LawsOfThermodynamicsScreen(),
        ),

        Subtopic(
          title: "Gibbs Free Energy",
          description:
          "ΔG, enthalpy, entropy, Kelvin and predicting spontaneous reactions.",
          screen: const GibbsFreeEnergyScreen(),
        ),

        Subtopic(
          title: "Exergonic and Endergonic Reactions",
          description:
          "Energy-releasing and energy-requiring reactions together with equilibrium.",
          screen: const ExergonicAndEndergonicScreen(),
        ),

        Subtopic(
          title: "ATP and ATP Hydrolysis",
          description:
          "ATP as the energy currency of the cell and ATP hydrolysis.",
          screen: const AtpScreen(),
        ),

        Subtopic(
          title: "Enzyme Structure",
          description:
          "Structure, active site, lock-and-key and induced-fit models.",
          screen: const EnzymeStructureScreen(),
        ),

        Subtopic(
          title: "Factors Affecting Enzyme Reactions",
          description:
          "Temperature, pH, substrate concentration, enzyme concentration and denaturation.",
          screen: const FactorsAffectingEnzymeReactionScreen(),
        ),

        Subtopic(
          title: "Metabolic Pathways and Feedback Inhibition",
          description:
          "Metabolic pathways, enzyme inhibition, allosteric regulation and feedback inhibition.",
          screen:
          const MetabolicPathwaysAndFeedbackInhibitionScreen(),
        ),
      ],
    );
  }
}