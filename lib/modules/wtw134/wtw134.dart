import 'package:flutter/material.dart';
import '../widget/topic_browser.dart';

class WTW134Screen extends StatelessWidget {
  const WTW134Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopicBrowser(
      title: "WTW134 Mathematics",

      description:
      "Master first-year university mathematics through clear explanations, worked examples and practice questions.",

      subtopics: [

        Subtopic(
          title: "Theme 1 - Functions and Change",
          description: "Functions, graphs and rate of change.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 2 - Differentiation",
          description: "Derivative rules and applications.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 3 - Exponential, Logarithmic, Trigonometric and Absolute Value Functions",
          description: "Special functions and their properties.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 4 - Using the Derivative",
          description: "Applications of differentiation.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 5 - Integration",
          description: "Indefinite integration techniques.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 6 - Using the Definite Integral",
          description: "Area, accumulation and applications.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 7 - Functions and Economics",
          description: "Economic applications of functions.",
          screen: Placeholder(),
        ),

        Subtopic(
          title: "Theme 8 - Linear Algebra",
          description: "Matrices and systems of equations.",
          screen: Placeholder(),
        ),
      ],
    );
  }
}