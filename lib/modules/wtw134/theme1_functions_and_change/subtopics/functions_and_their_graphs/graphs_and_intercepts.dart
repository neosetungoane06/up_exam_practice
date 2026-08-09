import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class GraphsAndInterceptsScreen extends StatelessWidget {
  const GraphsAndInterceptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Graphs and Intercepts",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Graphs and Intercepts",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/intercepts.png",
        "assets/modules/wtw134/functions_and_their_graphs/vertical_line_test.png",
      ],

notes: [

"### Intercepts",

"Intercepts are the points where a graph crosses the coordinate axes.",

"",

"[IMAGE]",

"",

"### Types of Intercepts",

"There are two types of intercepts:",

"",

"### y-intercept (Vertical Intercept)",

"The y-intercept is the point where the graph crosses the y-axis.",

"This always happens when x = 0.",

"",

"To find the y-intercept:",

"1. Let x = 0.",

"2. Calculate f(0).",

"3. Write the point as (0, f(0)).",

"",

"### x-intercept (Horizontal Intercept)",

"The x-intercept is the point where the graph crosses the x-axis.",

"This always happens when y = 0.",

"Since y = f(x), solve:",

"MATH:f(x) = 0",

"",

"The solution(s) give the x-coordinate(s).",

"",

"### Worked Example",

"Given",

"MATH:f(x) = x^2 − 4",

"",

"Find the y-intercept.",

"",

"x = 0",

"MATH:f(0) = 0^2 − 4 = −4",

"",

"Therefore the y-intercept is",

"(0, −4)",

"",

"Find the x-intercepts.",

"",

"Set",

"MATH:x^2 − 4 = 0",

"",

"Factorise",

"(x − 2)(x + 2) = 0",

"",

"Therefore",

"x = 2",

"or",

"x = −2",

"",

"The x-intercepts are",

"MATH:(2, 0)",

"and",

"MATH:(-2, 0)",

"",

"### Common Mistake",

"Students often confuse x-intercepts with y-intercepts.",

"",

"Remember:",

"• x-intercepts touch the x-axis, so y = 0.",

"• y-intercepts touch the y-axis, so x = 0.",

"",

"### Graphs of Functions",

"A graph is the visual representation of a function.",

"Every point on the graph has the form",

"MATH:(x, f(x)).",

"",

"[IMAGE]",

"",

"### Why are Graphs Important?",

"Graphs allow us to quickly determine:",

"",

"• x-intercepts.",

"• y-intercepts.",

"• Domain.",

"• Range.",

"• Where the function increases.",

"• Where the function decreases.",

"• Maximum values.",

"• Minimum values.",

"• Symmetry.",

"• Transformations.",

"",

"### The Vertical Line Test",

"A graph represents a function if every vertical line cuts the graph at MOST once.",

"",

"If a vertical line intersects the graph more than once, then one x-value has more than one output.",

"That means the graph is NOT a function.",

"",

"### Why Does the Vertical Line Test Work?",

"A vertical line fixes one x-value.",

"A function is only allowed to assign ONE output to each input.",

"If the vertical line touches the graph twice, then that x-value has two outputs.",

"This breaks the definition of a function.",

"",

"### Common Mistake",

"Some graphs look smooth but are NOT functions.",

"Examples include:",

"• A circle.",

"• A sideways parabola.",

"",

"Both fail the Vertical Line Test because some vertical lines intersect them more than once.",

"",

"### Memory Trick",

"x-intercept → y = 0",

"y-intercept → x = 0",

"",

"Vertical Line Test:",

"\"One vertical line...",

"One intersection...",

"It's a function.\"",

"",

"EXAM TIP:",

"Whenever you are asked to determine whether a graph is a function, ALWAYS perform the Vertical Line Test first before doing any calculations.",
      ],
    );
  }
}