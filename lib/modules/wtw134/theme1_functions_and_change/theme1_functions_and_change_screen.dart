import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/widget/subtopic_list_screen.dart';
import 'package:up_exam_practice/modules/widget/subtopic_model.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/logarithmic_and_trigonometry_functions.dart';
import 'package:up_exam_practice/modules/wtw134/theme1_functions_and_change/subtopics/functions_and_their_graphs/power_and_polynomial_functions.dart';
import 'subtopics/functions_and_their_graphs/introduction_to_functions.dart';
import 'subtopics/functions_and_their_graphs/domain_and_range.dart';
import 'subtopics/functions_and_their_graphs/inverse_functions.dart';
import 'subtopics/functions_and_their_graphs/graphs_and_intercepts.dart';
import 'subtopics/functions_and_their_graphs/average_rate_of_change.dart';
import 'subtopics/functions_and_their_graphs/function_composition.dart';
import 'subtopics/functions_and_their_graphs/graph_behaviour.dart';
import 'subtopics/functions_and_their_graphs/piecewise_functions.dart';
import 'subtopics/functions_and_their_graphs/symmetry_and_common_graph_families.dart';
import 'subtopics/functions_and_their_graphs/transformation_of_graphs.dart';

class Theme1FunctionsAndChangeScreen extends StatelessWidget {
  const Theme1FunctionsAndChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubtopicListScreen(
      title: "Theme 1 - Functions and Change",

      description:
      "Learn the foundations of mathematical functions, graphs, transformations, domains, ranges and related concepts.",

      subtopics: [

        SubtopicItem(
          title: "Introduction to Functions",
          description: "Understand what a mathematical function is.",
          screen: const IntroductionToFunctionsScreen(),
        ),

        SubtopicItem(
          title: "Domain and Range",
          description: "Learn domains, ranges and function notation.",
          screen: const DomainAndRangeScreen(),
        ),

        SubtopicItem(
          title: "Inverse Functions",
          description: "Study inverse functions and their properties.",
          screen: const InverseFunctionsScreen(),
        ),

        SubtopicItem(
          title: "Graphs and Intercepts",
          description: "Find intercepts and sketch graphs.",
          screen: const GraphsAndInterceptsScreen(),
        ),

        SubtopicItem(
          title: "Average Rate of Change",
          description: "Calculate average rates of change.",
          screen: const AverageRateOfChangeScreen(),
        ),

        SubtopicItem(
          title: "Function Composition",
          description: "Combine two functions together.",
          screen: const FunctionCompositionScreen(),
        ),

        SubtopicItem(
          title: "Graph Behaviour",
          description: "Analyse increasing, decreasing and turning behaviour.",
          screen: const GraphBehaviourScreen(),
        ),

        SubtopicItem(
          title: "Logarithmic and Trigonometry Functions",
          description: "Review functions studied in high schools.",
          screen: const LogarithmicAndTrigonometryFunctionsScreen(),
        ),

        SubtopicItem(
          title: "Power and Polynomial Functions",
          description: "Learn and analyse the other types of functions.",
          screen: const PowerAndPolynomialFunctionsScreen(),
        ),

        SubtopicItem(
          title: "Piecewise Functions",
          description: "Study piecewise-defined functions.",
          screen: const PiecewiseDefinedFunctionsScreen(),
        ),

        SubtopicItem(
          title: "Symmetry and Common Graph Families",
          description: "Recognise common graph shapes.",
          screen: const SymmetryAndCommonGraphFamiliesScreen(),
        ),

        SubtopicItem(
          title: "Transformation of Graphs",
          description: "Translate, reflect and stretch graphs.",
          screen: const TransformationsOfGraphsScreen(),
        ),

      ],
    );
  }
}
