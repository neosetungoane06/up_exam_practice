import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class AverageRateOfChangeScreen extends StatelessWidget {
  const AverageRateOfChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Average Rate of Change",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Average Rate of Change",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/average_rate_change.png",
      ],

notes: [

"### Average Rate of Change",

"The average rate of change measures how much the output of a function changes on average over an interval.",

"",

"It tells us how quickly the function changes between two points.",

"",

"### Definition",

"The average rate of change of a function f over the interval [a, b] is",

"",

  "MATH:\\frac{f(b)-f(a)}{b-a}",

"",

"This formula calculates the slope of the straight line joining the two points on the graph.",

"",

"This straight line is called the Secant Line.",

"",

"### Understanding the Formula",

"The numerator",

"MATH:f(b) − f(a)",

"represents the change in the output (change in y).",

"",

"The denominator",

"MATH:b − a",

"represents the change in the input (change in x).",

"",

"Average Rate of Change = Change in Output ÷ Change in Input",

"",

"### Worked Example",

"Let",

"MATH:f(x) = x^2",

"",

"Find the average rate of change from",

"MATH:x = 1",

"to",

"MATH:x = 3.",

"",

"Step 1",

"Find the function values.",

"",

"MATH:f(1) = 1^2 = 1",

"MATH:f(3) = 3^2 = 9",

"",

"Step 2",

"Substitute into the formula.",

"",

  "MATH:\\frac{9 - 1}{3 - 1}",

"",
  "MATH:\\frac{8}{2}",
"",

"= 4",

"",

"Therefore the average rate of change is",

"4.",

"",

"### Interpretation",

"This means that, on average, the function increases by 4 units of output for every 1 unit increase in x over the interval.",

"",

"### Positive and Negative Average Rate of Change",

"Positive average rate of change means the function increased overall.",

"",

"Negative average rate of change means the function decreased overall.",

"",

"Zero average rate of change means the function finished at the same output where it started.",

"",

"### Important Note",

"Average rate of change only considers the starting point and the ending point.",

"",

"The function may speed up, slow down or even reverse direction between those points.",

"",

"The average only tells us the overall change.",

"",

"### Common Mistake",

"Do NOT confuse average rate of change with the derivative.",

"",

"Average rate of change uses TWO points.",

"",

"The derivative uses ONE point and will be studied later in calculus.",

"",

"### Memory Trick",

"Average Rate of Change",

"=",

"Slope of the Secant Line",

"",

"Change in y",

"divided by",

"Change in x.",

"",

"EXAM TIP:",

"Always calculate f(a) and f(b) first before substituting into the formula. Most mistakes happen because students substitute the x-values directly instead of evaluating the function first.",


      ],
    );
  }
}