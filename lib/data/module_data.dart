import 'package:flutter/material.dart';
import '../modules/mlb111/cells_and_cell_structure/cells_and_cell_structure_screen.dart';
import '../modules/mlb111/cell_membranes/cell_membranes_screen.dart';
import '../modules/mlb111/photosynthesis/photosynthesis_screen.dart';
import '../modules/mlb111/molecules_and_chemistry_of_the_cell/molecules_and_chemistry_screen.dart';
import '../modules/mlb111/energy_enzymes_metabolism/energy_enzymes_metabolism_screen.dart';
import "../modules/mlb111/pathway_that_harvest_chemical_energy/pathway_that_harvest_energy_screen.dart" ;
import "../modules/mlb111/the_cell_cycle_and_cell_division/the_cell_cycle_and_cell_division.dart";
import "../modules/mlb111/dna_and_heredity/dna_and_heredity.dart";
import "../modules/mlb111/gene_expression_and_mutation/gene_expression_and_mutation.dart";
import '../modules/wtw134/wtw134_screen.dart';
import '../modules/wtw134/theme1_functions_and_change/theme1_functions_and_change_screen.dart';
import '../modules/wtw134/theme2_differentiation/theme2_differentiation.dart';
class Topic {

  final String name;
  double mastery;
  final Widget? screen;

  Topic({
    required this.name,
    required this.mastery,
    this.screen,
  });

}

class ModuleData {

  final String code;
  final String title;
  final List<Topic> topics;

  ModuleData({
    required this.code,
    required this.title,
    required this.topics,
  });

  double get mastery {

    if (topics.isEmpty) {
      return 0;
    }

    double total = 0;

    for (final topic in topics) {
      total += topic.mastery;
    }

    return total / topics.length;

  }

}
final List<ModuleData> allModules = [

  ModuleData(
    code: "MLB111",
    title: "Cell Biology",

    topics: [

      Topic(
        name: "Cells and Cell Structure",
        mastery: 91,
        screen: const CellsAndCellStructureScreen(),
      ),

      Topic(
        name: "Cell Membranes",
        mastery: 74,
        screen: const CellMembranesScreen(),
      ),

      Topic(
        name: "Photosynthesis",
        mastery: 60,
        screen: const PhotosynthesisScreen(),
      ),

      Topic(
        name: "Molecules and Chemistry of Cell",
        mastery: 57,
        screen: const MoleculesAndChemistryScreen(),
      ),

      Topic(
        name: "Energy, Enzymes and Metabolism",
        mastery: 70,
        screen: const EnergyEnzymesMetabolismScreen(),
      ),

      Topic(
        name: "Pathways that Harvest Chemical Energy",
        mastery: 80,
        screen: const PathwayThatHarvestEnergyScreen(),
      ),

      Topic(
        name: "The Cell Cycle and Cell Division",
        screen: const TheCellCycleAndCellDivisionScreen(),
        mastery: 66,
      ),

      Topic(
        name: "DNA and Heredity",
        screen: const DnaAndHeredityScreen(),
        mastery: 77,
      ),

      Topic(
        name: "Gene Expression and Mutation",
        screen: const GeneExpressionAndMutationScreen(),
        mastery: 59,
      ),

    ],
  ),

  ModuleData(
    code: "WTW134",
    title: "Mathematics",
    topics: [
      Topic(
        name: "Theme 1 Functions and Change",
        mastery: 50,
        screen: const Theme1FunctionsAndChangeScreen(),
      ),

      Topic(
        name: "Theme 2 Differentiation",
        mastery: 50,
        screen: const Theme2DifferentiationScreen(),
      ),

      Topic(
        name: "Theme 3 Exponential, Logarithmic, Trigonometric and Absolute Value Functions",
        mastery: 50,
        screen: null,
      ),

      Topic(
        name: "Theme 4 Using the Derivative",
        mastery: 50,
        screen: null,
      ),

      Topic(
        name: "Theme 5 Integration",
        mastery: 50,
        screen: null,
      ),

      Topic(
        name: "Theme 6 Using the Definite Integral",
        mastery: 50,
        screen: null,
      ),

      Topic(
        name: "Theme 7 Functions and Economics",
        mastery: 50,
        screen: null,
      ),

      Topic(
        name: "Theme 8 Linear Algebra",
        mastery: 50,
        screen: null,
      ),
    ],
  ),

  ModuleData(
    code: "EKN110",
    title: "Economics",
    topics: [],
  ),

];