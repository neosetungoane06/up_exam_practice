import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class PiecewiseDefinedFunctionsScreen extends StatelessWidget {
  const PiecewiseDefinedFunctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Piecewise-Defined Functions",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Piecewise-Defined Functions",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/piecewise_defined_function.png",
      ],

      notes: [

        "Imagine a taxi company.",

        "If you travel less than 5 km, you pay one price.",

        "If you travel more than 5 km, you pay a different price.",

        "The taxi changes its pricing rule depending on the distance travelled.",

        "Piecewise-defined functions work exactly the same way.",

        "The function changes its rule depending on the value of x.",

        "Each rule is only used for certain values of x.",

        "",


        "### What is a Piecewise Function?",

        "[IMAGE]",

        "Instead of one equation describing the entire graph, different equations are used depending on the value of x.",

        "",


        "### Why are there conditions?",

        "The conditions tell us WHEN to use each equation.",

        "Think of the conditions as instructions.",

        "If x satisfies the condition, use that equation.",

        "Without the conditions, we would not know which formula to use.",

        "",
        "",

        "Example",

        "",

        "f(x) = {",
        "  x + 2      if x < 1",
        "  2x − 1     if x ≥ 1",
        "}",

        "",

        "This means:",

        "• Use x + 2 whenever x is less than 1.",
        "• Use 2x − 1 whenever x is greater than or equal to 1.",

        "",

        "### How to Evaluate Piecewise Functions",

        "Whenever you see a piecewise function, ask yourself four questions:",

        "",

        "1. What value of x am I given?",

        "2. Which condition is true?",

        "3. Ignore every other equation.",

        "4. Substitute x into ONLY the correct equation.",

        "",
        "\"Step 1\"",
        "Look at the value of x.",

        "",

        "\"Step 2\"",
        "Determine which condition the value satisfies.",

        "",

        "\"Step 3\"",
        "Substitute the value into the correct formula.",

        "",


        "\"Example 1\"",

        "Find f(-2).",

        "Since -2 < 1, use",

        "MATH:f(x) = x + 2",

        "Therefore",

        "MATH:f(-2) = -2 + 2 = 0",

        "",

        "\"Example 2\"",

        "Find f(4).",

        "Since 4 ≥ 1, use",

        "MATH:f(x) = 2x − 1",

        "Therefore",

        "MATH:f(4) = 2(4) − 1 = 7",

        "",
        "",

        "\"Example 3\"",

        "Find f(1).",

        "First check the conditions.",

        "1 is NOT less than 1.",

        "But 1 IS greater than or equal to 1.",

        "So we must use",

        "\"f(x) = 2x − 1\"",

        "Therefore",

        "MATH:f(1) = 2(1) − 1 = 1",

        "",


        "### Open and Closed Circles (Endpoints)",

        "When graphing piecewise functions:",
        "",

        "Think of circles like doors.",

        "",

        "",

        "• An open circle means the endpoint is NOT included.",
        "• A closed (filled) circle means the endpoint IS included.",

        "",



        "Example",

        "x < 2  → open circle at x = 2",

        "x ≤ 2  → closed circle at x = 2",
        "",

        "### Reading the Graph",

        "Each section of the graph belongs to one equation.",

        "When the condition changes, the graph may also change.",

        "The graph may:",

        "• Continue smoothly.",

        "• Jump to a new position.",

        "• Have gaps.",

        "All of these are normal for piecewise-defined functions.",

        "",

        "",

        "### Common Mistake",

        "Many students substitute x into EVERY equation.",

        "This is incorrect.",

        "Only ONE condition is true.",

        "So only ONE equation should be used.",

        "",

        "### Real-life Applications",

        "Piecewise functions are used in:",

        "• Electricity tariffs.",

        "• Water bills.",

        "• Income tax calculations.",

        "• Taxi fares.",

        "• Mobile phone pricing.",

        "Whenever different rules apply under different conditions, a piecewise function is usually being used.",

        "",

        "### Exam Strategy",

        "✓ Read the value of x first.",

        "✓ Find the condition that is true.",

        "✓ Ignore every other equation.",

        "✓ Substitute carefully.",

        "✓ Check whether the endpoint uses an open or closed circle.",

        "",

        "\"MEMORY TRICK\"",

        "One function.",

        "Many rules.",

        "Different equations.",

        "Same graph.",


        "\"PRACTICE\"",

        "Evaluate the following:",

        "1. Find f(-5).",
        "2. Find f(0).",
        "3. Find f(6).",

      ],
    );
  }
}