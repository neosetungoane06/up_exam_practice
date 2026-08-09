import 'package:flutter/material.dart';
import '../widget/topic_browser.dart';
import 'theme1_functions_and_change/theme1_functions_and_change_screen.dart';

class WTW134Screen extends StatelessWidget {
  const WTW134Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TopicBrowser(
      title: "WTW134 Mathematics",

      description:
      "Master the mathematical concepts covered in WTW134 through structured themes, worked examples, AI explanations and exam preparation.",

      subtopics: [

        Subtopic(
          title: "Theme 1 • Functions and Change",
          description:
          "Functions, graphs, domains, ranges and rate of change.",
          screen: const Theme1FunctionsAndChangeScreen(),
        ),

        Subtopic(
          title: "Theme 2 • Differentiation",
          description:
          "Limits, derivatives and rules of differentiation.",
          screen: _ComingSoonScreen(title: "Theme 2"),
        ),

        Subtopic(
          title: "Theme 3 • Exponential, Logarithmic, Trigonometric and Absolute Value Functions",
          description:
          "Properties, graphs and applications of these functions.",
          screen: _ComingSoonScreen(title: "Theme 3"),
        ),

        Subtopic(
          title: "Theme 4 • Using the Derivative",
          description:
          "Applications of differentiation including optimisation.",
          screen: _ComingSoonScreen(title: "Theme 4"),
        ),

        Subtopic(
          title: "Theme 5 • Integration",
          description:
          "Antiderivatives and indefinite integration.",
          screen: _ComingSoonScreen(title: "Theme 5"),
        ),

        Subtopic(
          title: "Theme 6 • Using the Definite Integral",
          description:
          "Area under curves and applications.",
          screen: _ComingSoonScreen(title: "Theme 6"),
        ),

        Subtopic(
          title: "Theme 7 • Functions and Economics",
          description:
          "Economic applications of functions and calculus.",
          screen: _ComingSoonScreen(title: "Theme 7"),
        ),

        Subtopic(
          title: "Theme 8 • Linear Algebra",
          description:
          "Matrices, systems of equations and vectors.",
          screen: _ComingSoonScreen(title: "Theme 8"),
        ),
      ],
    );
  }
}

class _ComingSoonScreen extends StatelessWidget {
  final String title;

  const _ComingSoonScreen({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text(
          "Notes coming soon...",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}