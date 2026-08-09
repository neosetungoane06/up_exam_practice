import 'package:flutter/material.dart';

import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class IntroductionToFunctionsScreen extends StatelessWidget {
  const IntroductionToFunctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Introduction to Functions",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Introduction to Functions",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/cartesian_coordinate_system.png",
        "assets/modules/wtw134/functions_and_their_graphs/linear_function_graph.png",
      ],

      notes: [

        "Functions are one of the most important ideas in mathematics. Every graph, equation and calculus concept you will study later depends on understanding functions correctly.",

        "",

        "### What is a Function?",

        "[IMAGE]",

        "A function is a rule that takes an input and produces exactly one output for every allowed input.",

        "",

        "Think of a function as a machine.",

        "• You put a value in.",
        "• The machine follows one fixed rule.",
        "• Exactly one answer comes out.",

        "",

        "MEMORY TRICK: Same input → Same output. Every time.",

        "",

        "Example",

        "Area of a square",

        "MATH:A = l^2",

        "If the side length is 3 units:",

        "Area = 3² = 9",

        "Every side length gives only one area, therefore this is a function.",

        "",

        "A rule is NOT a function if one input gives two different outputs.",

        "",



        "### Independent and Dependent Variables",

        "Every function has two important variables.",

        "",

        "• Independent Variable",
        "This is the input.",
        "It is the value that you choose.",

        "",

        "• Dependent Variable",
        "This is the output.",
        "Its value depends on the input.",

        "",

        "Example",

        "Side Length → Independent Variable",

        "Area → Dependent Variable",

        "",


        "### Function Notation",

        "[IMAGE]",

        "Functions are written using notation like:",

        "",

        "f(x)",

        "",

        "This is read as:",

        "f of x",

        "",

        "It DOES NOT mean multiplication.",

        "",

        "Example",

        "MATH:f(x) = x^2 + 1",

        "",

        "MATH:f(2) = 2^2 + 1 = 5",

        "",

        "MATH:f(-3) = (-3)^2 + 1 = 10",

        "",

        "EXAM TIP: Never read f(x) as f × x.",

        "",

        "### Evaluating Functions",

        "Evaluating a function simply means replacing x with the given value.",

        "",

        "Step 1",
        "Replace x with the value.",

        "",

        "Step 2",
        "Calculate the answer.",

        "",

        "Example",

        "If",

        "f(x) = 2x - 7",

        "",

        "Find f(4)",

        "",

        "Replace x with 4",

        "f(4) = 2(4) - 7",

        "      = 8 - 7",

        "      = 1",

        "",



        "PRACTICE",

        "Evaluate the following:",

        "1. f(x)=x²+4, find f(3)",

        "2. g(x)=5x−2, find g(8)",

        "3. h(x)=3x²−1, find h(2)",

      ],
    );
  }
}