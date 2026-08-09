import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/active_transport.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/amphipathic_molecules.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/cell_junctions.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/concentration_gradient.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/diffusion.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/endocytosis.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/exocytosis.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/facilitated_diffusion.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/fluid_mosaic_model.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/integrin.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/membrane_proteins.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/osmosis.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/passive_transport.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/plasma_membrane.dart';
import 'package:up_exam_practice/modules/mlb111/cell_membranes/subtopics/pump_protein.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/compartmentalization.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/cytoskeleton.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/endomembrane_system.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/endoplasmic_reticulum.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/endosymbiotic_theory.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/golgi_apparatus.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/introduction_to_cells.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/lysosomes.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/mitochondria_and_chloroplast.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/motor_protein.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/nucleus.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/peroxisomes.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/plant_and_animal_cells.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/plasmodesmata.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/prokaryotic_vs_eukaryotic.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/ribosomes.dart';
import 'package:up_exam_practice/modules/mlb111/cells_and_cell_structure/subtopics/vesicles.dart';
import 'package:up_exam_practice/modules/mlb111/dna_and_heredity/subtopics/dna_introduction.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/atp_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/catabolism_vs_anabolism_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/energy_introduction_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/enzyme_structure_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/exergonic_and_endergonic_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/factors_affecting_enzyme_reaction_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/gibbs_free_energy_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/laws_of_thermodynamics_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/metabolic_pathway_and_feedback_inhibition_screen.dart';
import 'package:up_exam_practice/modules/mlb111/energy_enzymes_metabolism/subtopics/metabolism_screen.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/calculation_and_exam_essentials.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/central_dogma.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/gene_expression_introduction.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/gene_regulation.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/mutations.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/transcription.dart';
import 'package:up_exam_practice/modules/mlb111/gene_expression_and_mutation/subtopics/wobble_hypothesis.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/acids_bases_ph.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/atoms_and_elements.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/carbohydrates.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/carbon_chemistry.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/chemical_bonds.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/enzymes.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/lipids.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/nucleic_acids.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/proteins.dart';
import 'package:up_exam_practice/modules/mlb111/molecules_and_chemistry_of_the_cell/subtopics/water.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/citric_acid_cycle.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/electron_transport_chain_and_oxidative_phosphorylation.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/fermentation.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/glycolysis.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/introduction_to_cellular_respiration.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/oxidation_and_reduction_reactions.dart';
import 'package:up_exam_practice/modules/mlb111/pathway_that_harvest_chemical_energy/subtopics/pyruvate_oxidation.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/chloroplast_structure.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/electron_transport_chain.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/factors_affecting_photosynthesis.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/light_dependent_reactions.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/photosynthesis_introduction.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/photosynthesis_vs_cellular_respiration.dart';
import 'package:up_exam_practice/modules/mlb111/photosynthesis/subtopics/pigments_and_chlorophyll.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/cdk_cyclin.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/cell_cycle.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/cell_cycle_regulation_and_cancer.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/cell_mutation.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/chromatin_and_chromatids.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/cytokinesis.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/introduction_to_cell_cycle.dart';
import 'package:up_exam_practice/modules/mlb111/the_cell_cycle_and_cell_division/subtopics/mitosis.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/average_rate_of_change.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/domain_and_range.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/function_composition.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/graph_behaviour.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/graphs_and_intercepts.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/introduction_to_functions.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/inverse_functions.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/logarithmic_and_trigonometry_functions.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/piecewise_functions.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/power_and_polynomial_functions.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/symmetry_and_common_graph_families.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/transformation_of_graphs.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/basic_differentiation_rules.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/interpretation_of_the_derivative.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/the_chain_rule.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/the_second_derivative.dart';

import '../modules/mlb111/cells_and_cell_structure/subtopics/ecm.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/bonds_and_calculations.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/calculation_essentials.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/experiments.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/origin.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/replication_accuracy.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/replication_enzymes.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/semi_conservative.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/strands.dart';
import '../modules/mlb111/dna_and_heredity/subtopics/telomerase_and_telomere.dart';
import '../modules/mlb111/gene_expression_and_mutation/subtopics/translation.dart';
import '../modules/mlb111/photosynthesis/subtopics/calvin_cycle.dart';
import '../modules/mlb111/gene_expression_and_mutation/subtopics/rna_processing.dart';

class StudyNavigation {
  static Widget? getScreen({
    required String module,
    required String topic,
    required String subtopic,
  }) {
    if (module == "MLB111") {
      if (topic == "DNA and Heredity") {
        switch (subtopic) {
          case "Bonds and Calculations":
            return const BondsAndCalculationsScreen();

          case "Calculation Essentials":
            return const CalculationEssentialsScreen();

          case "Experiments":
            return const ExperimentsScreen();

          case "Introduction":
            return const DnaIntroductionScreen();

          case "Origin":
            return const OriginScreen();

          case "Replication Accuracy":
            return const ReplicationAccuracyScreen();

          case "Replication Enzymes":
            return const ReplicationEnzymesScreen();

          case "Semi Conservative":
            return const SemiConservativeScreen();

          case "Strands":
            return const StrandsScreen();

          case "Telomerase and Telomere":
            return const TelomeraseAndTelomereScreen();
        }
      }
      if (topic == "Cells and Cell Structure") {
        switch (subtopic) {
          case "Compartmentalization":
            return const CellCompartmentalisationScreen();

          case "Cytoskeleton":
            return const CytoskeletonScreen();

          case "Extracellular Matrix":
            return const ExtracellularMatrixScreen();

          case "Endomembrane System":
            return const EndomembraneSystemScreen();

          case "Endoplasmic Reticulum":
            return const EndoplasmicReticulumScreen();

          case "Endosymbiotic Theory":
            return const EndosymbioticTheoryScreen();

          case "Golgi Apparatus":
            return const GolgiApparatusScreen();

          case "Introduction to Cells":
            return const IntroductionToCellsScreen();

          case "Lysosomes":
            return const LysosomesScreen();

          case "Mitochondria and Chloroplast":
            return const MitochondriaAndChloroplastScreen();

          case "Motor Protein":
            return const MotorProteinsScreen();

          case "Nucleus":
            return const NucleusScreen();

          case "Peroxisomes":
            return const PeroxisomesScreen();

          case "Plant and Animal Cells":
            return const PlantAndAnimalCellsScreen();

          case "Plasmodesmata":
            return const PlasmodesmataScreen();

          case "Prokaryotic vs Eukaryotic":
            return const ProkaryoticVsEukaryoticScreen();

          case "Ribosomes":
            return const RibosomesScreen();

          case "Vesicles":
            return const VesiclesScreen();
        }
      }
      if (topic == "Energy, Enzymes and Metabolism") {
        switch (subtopic) {
          case "ATP":
            return const AtpScreen();

          case "Catabolism vs Anabolism":
            return const CatabolismVsAnabolismScreen();

          case "Enzyme Structure":
            return const EnzymeStructureScreen();

          case "Exergonic and Endergonic":
            return const ExergonicAndEndergonicScreen();

          case "Factors Affecting Enzyme Reaction":
            return const FactorsAffectingEnzymeReactionScreen();

          case "Gibbs Free Energy":
            return const GibbsFreeEnergyScreen();

          case "Introduction":
            return const EnergyIntroductionScreen();

          case "Laws of Thermodynamics":
            return const LawsOfThermodynamicsScreen();

          case "Metabolic Pathway and Feedback Inhibition":
            return const MetabolicPathwaysAndFeedbackInhibitionScreen();

          case "Metabolism":
            return const MetabolismScreen();
        }
      }

      if (topic == "Gene Expression and Mutation") {
        switch (subtopic) {
          case "Translation":
            return const TranslationScreen();

          case "Calculation and Exam Essentials":
            return const CalculationsAndExamEssentialsScreen();

          case "Central Dogma":
            return const CentralDogmaScreen();

          case "Gene Regulation":
            return const GeneRegulationScreen();

          case "Introduction":
            return const GeneExpressionIntroductionScreen();

          case "Mutations":
            return const MutationScreen();

          case "RNA Processing":
            return const RnaProcessingScreen();

          case "Transcription":
            return const TranscriptionScreen();

          case "Wobble Hypothesis":
            return const WobbleHypothesisScreen();
        }
      }
      if (topic == "Cell Membranes") {
        switch (subtopic) {
          case "Active Transport":
            return const ActiveTransportScreen();

          case "Amphipathic Molecules":
            return const AmphipathicMoleculesScreen();

          case "Cell Junctions":
            return const CellJunctionsScreen();

          case "Concentration Gradient":
            return const ConcentrationGradientScreen();

          case "Diffusion":
            return const DiffusionScreen();

          case "Endocytosis":
            return const EndocytosisScreen();

          case "Exocytosis":
            return const ExocytosisScreen();

          case "Facilitated Diffusion":
            return const FacilitatedDiffusionScreen();

          case "Fluid Mosaic Model":
            return const FluidMosaicModelScreen();

          case "Integrin":
            return const IntegrinsScreen();

          case "Membrane Proteins":
            return const MembraneProteinsScreen();

          case "Osmosis":
            return const OsmosisScreen();

          case "Passive Transport":
            return const PassiveTransportScreen();

          case "Plasma Membrane":
            return const PlasmaMembraneScreen();

          case "Pump Protein":
            return const PumpProteinsScreen();
        }
      }
      if (topic == "Molecules and Chemistry of Cells") {
        switch (subtopic) {
          case "Acids, Base and pH":
            return const AcidsBasesPhScreen();

          case "Atoms and Elements":
            return const AtomsAndElementsScreen();

          case "ATP":
            return const AtpScreen();

          case "Carbohydrates":
            return const CarbohydratesScreen();

          case "Carbon Chemistry":
            return const CarbonChemistryScreen();

          case "Chemical Bonds":
            return const ChemicalBondsScreen();

          case "Enzymes":
            return const EnzymesScreen();

          case "Lipids":
            return const LipidsScreen();

          case "Nucleic Acids":
            return const NucleicAcidsScreen();

          case "Proteins":
            return const ProteinsScreen();

          case "Water":
            return const WaterScreen();
        }
      }
      if (topic == "Pathway that Harvest Chemical Energy") {
        switch (subtopic) {
          case "Citric Acid Cycle":
            return const CitricAcidCycleScreen();

          case "Electron Transport Chain and Oxidative Phosphorylation":
            return ElectronTransportChainAndOxidativePhosphorylationScreen();

          case "Fermentation":
            return const FermentationScreen();

          case "Glycolysis":
            return const GlycolysisScreen();

          case "Introduction to Cellular Respiration":
            return const IntroductionToCellularRespirationScreen();

          case "Oxidation and Reduction Reactions":
            return const OxidationAndReductionReactionScreen();

          case "Pyruvate Oxidation":
            return const PyruvateOxidationScreen();
        }
      }
      if (topic == "The Cell and Cell Division") {
        switch (subtopic) {
          case "Mutation":
            return const CellMutationScreen();

          case "CDK Cyclin":
            return const CdkCyclinScreen();

          case "Cell Cycle":
            return const CellCycleScreen();

          case "Cell Cycle Regulation and Cancer":
            return const CellCycleRegulationAndCancerScreen();

          case "Chromatin and Chromatids":
            return const ChromatinAndChromatidsScreen();

          case "Cytokinesis":
            return const CytokinesisScreen();

          case "Introduction to Cell Cycle":
            return const IntroductionToCellCycleScreen();

          case "Mitosis":
            return const MitosisScreen();
        }
      }

      if (topic == "Photosynthesis") {
        switch (subtopic) {
          case "Calvin Cycle":
            return const CalvinCycleScreen();

          case "Chloroplast Structure":
            return const ChloroplastStructureScreen();

          case "Electron Transport Chain":
            return const ElectronTransportChainScreen();

          case "Factors Affecting Photosynthesis":
            return const FactorsAffectingPhotosynthesisScreen();

          case "Light Dependent Reactions":
            return const LightDependentReactionsScreen();

          case "Photosynthesis Introduction":
            return const PhotosynthesisIntroductionScreen();

          case "Photosynthesis vs Cellular Respiration":
            return const PhotosynthesisVsCellularRespirationScreen();

          case "Pigments and Chlorophyll":
            return const PigmentsAndChlorophyllScreen();
        }
      }
    }

    if (module == "WTW134") {
      if (topic == "Theme 1 Functions and Change") {
        switch (subtopic) {
          case "Introduction to Functions":
            return const IntroductionToFunctionsScreen();

          case "Domain and Range":
            return const DomainAndRangeScreen();

          case "Inverse Functions":
            return const InverseFunctionsScreen();

          case "Graphs and Intercepts":
            return const GraphsAndInterceptsScreen();

          case "Average Rate of Change":
            return const AverageRateOfChangeScreen();

          case "Function Composition":
            return const FunctionCompositionScreen();

          case "Graph Behavior":
            return const GraphBehaviourScreen();

          case "Piecewise Function":
            return const PiecewiseDefinedFunctionsScreen();

          case "Symmetry and Common Graph Families":
            return const SymmetryAndCommonGraphFamiliesScreen();

          case "Transformation of Graphs":
            return const TransformationsOfGraphsScreen();

          case "Logarithmic and Trigonometry Functions":
            return const LogarithmicAndTrigonometryFunctionsScreen();

          case "Power and Polynomial Functions":
            return const PowerAndPolynomialFunctionsScreen();
        }
      }
    }
    if (topic == "Theme 2 Differentiation") {
      switch (subtopic) {
        case "Basic Differentiation Rules":
          return const BasicDifferentiationRulesScreen();

        case "The Chain Rule":
          return const TheChainRuleScreen();

        case "Interpretation of the Derivative":
          return const InterpretationsOfTheDerivativeScreen();

        case "The Second Derivative":
          return const TheSecondDerivativeScreen();
      }
    }
  }
}
