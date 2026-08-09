import 'package:flutter/material.dart';
import '../../widget/topic_browser.dart';

import 'subtopics/introduction_to_cells.dart';
import 'subtopics/prokaryotic_vs_eukaryotic.dart';
import 'subtopics/nucleus.dart';
import 'subtopics/ribosomes.dart';
import 'subtopics/endoplasmic_reticulum.dart';
import 'subtopics/vesicles.dart';
import 'subtopics/golgi_apparatus.dart';
import 'subtopics/compartmentalization.dart';
import 'subtopics/lysosomes.dart';
import 'subtopics/endomembrane_system.dart';
import 'subtopics/peroxisomes.dart';
import 'subtopics/mitochondria_and_chloroplast.dart';
import 'subtopics/endosymbiotic_theory.dart';
import 'subtopics/cytoskeleton.dart';
import 'subtopics/motor_protein.dart';
import 'subtopics/ecm.dart';
import 'subtopics/plasmodesmata.dart';
import 'subtopics/plant_and_animal_cells.dart';

class CellsAndCellStructureScreen extends StatelessWidget {
  const CellsAndCellStructureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "Cells and Cell Structure",
      description:
      "Notes in this topic are broken down into small manageable parts. Select a subtopic below or use the search bar to quickly find concepts.",

      subtopics: [

        Subtopic(
          title: "Introduction to Cells",
          description: "Basic concepts of cells.",
          screen: const IntroductionToCellsScreen(),
        ),

        Subtopic(
          title: "Prokaryotic vs Eukaryotic Cells",
          description: "Compare the two major cell types.",
          screen: const ProkaryoticVsEukaryoticScreen(),
        ),

        Subtopic(
          title: "Nucleus",
          description: "Control centre of the cell.",
          screen: const NucleusScreen(),
        ),

        Subtopic(
          title: "Ribosomes",
          description: "Protein synthesis.",
          screen: const RibosomesScreen(),
        ),

        Subtopic(
          title: "Endoplasmic Reticulum",
          description: "Rough ER and Smooth ER.",
          screen: const EndoplasmicReticulumScreen(),
        ),

        Subtopic(
          title: "Vesicles",
          description: "Transport within the cell.",
          screen: const VesiclesScreen(),
        ),

        Subtopic(
          title: "Golgi Apparatus",
          description: "Protein modification and packaging.",
          screen: const GolgiApparatusScreen(),
        ),

        Subtopic(
          title: "Cell Compartmentalisation",
          description: "Specialised regions inside the cell.",
          screen: const CellCompartmentalisationScreen(),
        ),

        Subtopic(
          title: "Lysosomes",
          description: "Digestion and recycling.",
          screen: const LysosomesScreen(),
        ),

        Subtopic(
          title: "Endomembrane System",
          description: "Protein transport pathway.",
          screen: const EndomembraneSystemScreen(),
        ),

        Subtopic(
          title: "Peroxisomes",
          description: "Detoxification organelles.",
          screen: const PeroxisomesScreen(),
        ),

        Subtopic(
          title: "Mitochondria and Chloroplasts",
          description: "Energy and photosynthesis.",
          screen: const MitochondriaAndChloroplastScreen(),
        ),

        Subtopic(
          title: "Endosymbiotic Theory",
          description: "Origin of mitochondria and chloroplasts.",
          screen: const EndosymbioticTheoryScreen(),
        ),

        Subtopic(
          title: "Cytoskeleton",
          description: "Cell support and movement.",
          screen: const CytoskeletonScreen(),
        ),

        Subtopic(
          title: "Motor Proteins",
          description: "Movement along microtubules.",
          screen: const MotorProteinsScreen(),
        ),

        Subtopic(
          title: "Extracellular Matrix",
          description: "Support outside animal cells.",
          screen: const ExtracellularMatrixScreen(),
        ),

        Subtopic(
          title: "Plasmodesmata",
          description: "Communication between plant cells.",
          screen: const PlasmodesmataScreen(),
        ),

        Subtopic(
          title: "Plant and Animal Cells",
          description: "Compare plant and animal cells.",
          screen: const PlantAndAnimalCellsScreen(),
        ),
      ],
    );
  }

  Widget _tile(
      BuildContext context,
      String title,
      Widget screen,
      ) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => screen,
          ),
        );
      },
    );
  }
}