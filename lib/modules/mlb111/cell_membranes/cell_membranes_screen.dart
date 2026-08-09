import 'package:flutter/material.dart';

import '../../widget/topic_browser.dart';

import 'subtopics/plasma_membrane.dart';
import 'subtopics/amphipathic_molecules.dart';
import 'subtopics/fluid_mosaic_model.dart';
import 'subtopics/membrane_proteins.dart';
import 'subtopics/cell_junctions.dart';
import 'subtopics/integrin.dart';
import 'subtopics/concentration_gradient.dart';
import 'subtopics/passive_transport.dart';
import 'subtopics/diffusion.dart';
import 'subtopics/osmosis.dart';
import 'subtopics/facilitated_diffusion.dart';
import 'subtopics/active_transport.dart';
import 'subtopics/pump_protein.dart';
import 'subtopics/endocytosis.dart';
import 'subtopics/exocytosis.dart';

class CellMembranesScreen extends StatelessWidget {
  const CellMembranesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicBrowser(
      title: "Cell Membranes",
      description:
      "Notes in this topic are broken down into small manageable parts. Study one concept at a time before moving to the next.",
      subtopics: [

        Subtopic(
          title: "Plasma Membrane",
          description: "Structure and functions of the plasma membrane.",
          screen: PlasmaMembraneScreen(),
        ),

        Subtopic(
          title: "Amphipathic Molecules",
          description: "Hydrophilic heads and hydrophobic tails.",
          screen: AmphipathicMoleculesScreen(),
        ),

        Subtopic(
          title: "Fluid Mosaic Model",
          description: "The modern model of membrane structure.",
          screen: FluidMosaicModelScreen(),
        ),

        Subtopic(
          title: "Membrane Proteins",
          description: "Types and functions of membrane proteins.",
          screen: MembraneProteinsScreen(),
        ),

        Subtopic(
          title: "Cell Junctions",
          description: "Tight junctions, desmosomes, gap junctions and plasmodesmata.",
          screen: CellJunctionsScreen(),
        ),

        Subtopic(
          title: "Integrins",
          description: "Connection between cells and the extracellular matrix.",
          screen: const IntegrinsScreen(),
        ),

        Subtopic(
          title: "Concentration Gradient",
          description: "Movement from high concentration to low concentration.",
          screen: ConcentrationGradientScreen(),
        ),

        Subtopic(
          title: "Passive Transport",
          description: "Transport without ATP.",
          screen: PassiveTransportScreen(),
        ),

        Subtopic(
          title: "Diffusion",
          description: "Movement of particles down a concentration gradient.",
          screen: DiffusionScreen(),
        ),

        Subtopic(
          title: "Osmosis",
          description: "Movement of water across a selectively permeable membrane.",
          screen: OsmosisScreen(),
        ),

        Subtopic(
          title: "Facilitated Diffusion",
          description: "Channel and carrier proteins.",
          screen: FacilitatedDiffusionScreen(),
        ),

        Subtopic(
          title: "Active Transport",
          description: "Transport against the concentration gradient using ATP.",
          screen: ActiveTransportScreen(),
        ),

        Subtopic(
          title: "Pump Proteins",
          description: "Protein pumps such as the sodium-potassium pump.",
          screen: const PumpProteinsScreen(),
        ),

        Subtopic(
          title: "Endocytosis",
          description: "Movement of materials into the cell.",
          screen: EndocytosisScreen(),
        ),

        Subtopic(
          title: "Exocytosis",
          description: "Movement of materials out of the cell.",
          screen: ExocytosisScreen(),
        ),
      ],
    );
  }
}