import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class DomainAndRangeScreen extends StatelessWidget {
  const DomainAndRangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Domain and Range",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Domain and Range",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/domain_and_range_illustration.png",
      ],

      notes: [

        "### Domain and Range",

        "[IMAGE]",

        "Every function has two important sets of values: the domain and the range.",

        "",

        "### Domain",

        "The domain is the set of all allowable input values (x-values) for which the function is defined.",

        "",

        "Think of the domain as:",

        "• What values you are allowed to put into the function.",
        "• The inputs.",

        "",

        "Example",

        "MATH:f(x)=x^2",

        "Every real number can be substituted into x.",

        "Domain = All real numbers.",

        "",

        "Example",

        "MATH:f(x)=\\sqrt{x}",

        "You cannot take the square root of a negative number.",

        "Therefore:",

        "MATH:\\text{Domain: }x\\geq0",

        "",

        "### Range",

        "The range is the set of all possible output values (y-values) produced by the function.",

        "",

        "Think of the range as:",

        "• The answers produced by the function.",
        "• The outputs.",

        "",

        "Example",

        "MATH:f(x)=x^2",

        "Squares are never negative.",

        "MATH:\\text{Range: }y\\geq0",

        "",

        "Example",

        "MATH:f(x)=2x+5",

        "Every real input produces every possible real output.",

        "Range = All real numbers.",

        "",

        "### Finding the Domain",

        "Always ask:",

        "\"What values make the function impossible?\"",

        "",

        "Common restrictions:",

        "• Denominator cannot equal zero.",
        "• Square root cannot contain a negative number.",
        "• Logarithms require positive arguments.",

        "",

        "### Finding the Range",

        "Always ask:",

        "\"What outputs can this function actually produce?\"",

        "",

        "Sometimes you determine the range by:",

        "• Looking at the graph.",
        "• Using algebra.",
        "• Considering the behaviour of the function.",

        "",

        "### Domain vs Range",

        "Domain → Inputs (x-values)",

        "Range → Outputs (y-values)",

        "",

        "### Worked Example",

        "MATH:f(x)=\\sqrt{x-3}",

        "",

        "Domain:",

        "MATH:x-3\\geq0",

        "MATH:x\\geq3",

        "",

        "Range:",

        "Square roots cannot be negative.",

        "MATH:y\\geq0",

        "",

        "### Interval Notation",

        "MATH:x ≥ 3",

        "can also be written as",

        "MATH:[3, ∞)",

        "",

        "MATH:y ≥ 0",

        "can also be written as",

        "MATH:[0, ∞)",

        "",

        "MEMORY TRICK:",

        "Domain = Door IN",

        "Range = Result OUT",

        "",

        "EXAM TIP:",

        "Many students mix up domain and range.",

        "Always remember:",

        "Domain talks about x-values.",

        "Range talks about y-values.",

        "",

        "PRACTICE",

        "Find the domain and range of:",

        "MATH:1.y=\\sqrt{x}",

        "MATH:2.y=x^2",

        "MATH:3.y=\\frac{1}{x-2}",

      ],
    );
  }
}