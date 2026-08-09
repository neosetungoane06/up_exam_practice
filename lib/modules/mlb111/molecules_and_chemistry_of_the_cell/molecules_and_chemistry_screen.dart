import 'package:flutter/material.dart';

import '../../widget/topic_browser.dart';

import 'subtopics/atoms_and_elements.dart';
import 'subtopics/chemical_bonds.dart';
import 'subtopics/water.dart';
import 'subtopics/acids_bases_ph.dart';
import 'subtopics/carbohydrates.dart';
import 'subtopics/lipids.dart';
import 'subtopics/proteins.dart';
import 'subtopics/enzymes.dart';
import 'subtopics/nucleic_acids.dart';
import 'subtopics/carbon_chemistry.dart';

class MoleculesAndChemistryScreen extends StatelessWidget {
  const MoleculesAndChemistryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "Molecules and Chemistry of the Cell",

      description:
      "This topic introduces the chemical foundations of life. "
          "You will learn about atoms, molecules, chemical bonds, water, "
          "carbon chemistry and the biological macromolecules that build "
          "every living cell.",

      subtopics: const [

        Subtopic(
          title: "Atoms and Elements",
          description:
          "Matter, atoms, elements, subatomic particles and CHNOPS.",
          screen: AtomsAndElementsScreen(),
        ),

        Subtopic(
          title: "Chemical Bonds",
          description:
          "Covalent, ionic and hydrogen bonds and why they matter in biology.",
          screen: ChemicalBondsScreen(),
        ),

        Subtopic(
          title: "Water",
          description:
          "Properties of water and why it is called the molecule of life.",
          screen: WaterScreen(),
        ),

        Subtopic(
          title: "Acids, Bases and pH",
          description:
          "The pH scale, buffers and maintaining stable conditions in cells.",
          screen: AcidsBasesPhScreen(),
        ),

        Subtopic(
          title: "Carbon Chemistry",
          description:
          "Carbon atoms, carbon skeletons, functional groups and organic molecules.",
          screen: CarbonChemistryScreen(),
        ),

        Subtopic(
          title: "Carbohydrates",
          description:
          "Structure, functions and biological importance of carbohydrates.",
          screen: CarbohydratesScreen(),
        ),

        Subtopic(
          title: "Lipids",
          description:
          "Fats, oils, phospholipids, steroids and membrane structure.",
          screen: LipidsScreen(),
        ),

        Subtopic(
          title: "Proteins",
          description:
          "Amino acids, protein structure and biological functions.",
          screen: ProteinsScreen(),
        ),

        Subtopic(
          title: "Enzymes",
          description:
          "Biological catalysts, active sites, denaturation and enzyme activity.",
          screen: EnzymesScreen(),
        ),

        Subtopic(
          title: "Nucleic Acids",
          description:
          "DNA, RNA and ATP as molecules essential for life.",
          screen: NucleicAcidsScreen(),
        ),
      ],
    );
  }
}