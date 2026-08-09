import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/widget/subtopic_list_screen.dart';
import 'package:up_exam_practice/modules/widget/subtopic_model.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/basic_differentiation_rules.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/interpretation_of_the_derivative.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/the_chain_rule.dart';
import 'package:up_exam_practice/modules/wtw134/theme2_differentiation/subtopics/the_second_derivative.dart';


class Theme2DifferentiationScreen extends StatelessWidget {
  const Theme2DifferentiationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubtopicListScreen(
      title: "Theme 2 - Differentiation Screen",

      description:
      "Learn the core rules of differentiation used to differentiate algebraic, exponential, logarithmic and trigonometric functions.",
      subtopics: [

        SubtopicItem(
          title: "Basic Differentiation Rules",
          description: "Apply the fundamental differentiation rules to a variety of functions.",
          screen: const BasicDifferentiationRulesScreen(),
        ),

        SubtopicItem(
          title: "The Chain Rule",
          description: "Differentiate composite functions using the Chain Rule.",
          screen: const TheChainRuleScreen(),
        ),

        SubtopicItem(
          title: "Interpretation of the Derivative",
          description: "Interpret derivatives as rates of change, gradients and real-world quantities.",
          screen: const InterpretationsOfTheDerivativeScreen(),
        ),

        SubtopicItem(
          title: "The Second Derivative",
          description: "Investigate concavity, inflection points and the meaning of the second derivative.",
          screen: const TheSecondDerivativeScreen(),
        ),


      ],
    );
  }
}
