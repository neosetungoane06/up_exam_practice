import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Inverse Functions";

const List<String> notes = [

  "### Inverse Functions",

  "Inverse functions 'undo' what the original function does.",

  "You can think of an inverse function as reversing the action of a function.",

  "If a function takes an input, performs some operations and produces an output, then its inverse starts with that output and works backwards to recover the original input.",

  "",

  "### Everyday Analogy",

  "Imagine locking a door.",

  "Locking the door is like applying a function.",

  "Unlocking the door is like applying the inverse function.",

  "The second action completely reverses the first one.",

  "",

  "Another example is putting on your shoes and then taking them off.",

  "Taking them off reverses putting them on.",

  "",

  "### What Does an Inverse Function Do?",

  "Suppose a function changes x into y.",

  "The inverse function changes that same y back into the original x.",

  "",

  "If",

  "MATH:f(x) = y",

  "then",

  "f⁻¹(y) = x",

  "",

  "The inverse simply reverses the process.",

  "",

  "### Example",

  "-Suppose",

  "MATH:f(x) = x + 5",

  "",

  "If the input is 3",

  "the function gives:",

  "3 + 5 = 8",

  "",


  "Now apply the inverse.",

  "The inverse starts with 8 and asks:",

  "\"What number originally produced 8?\"",

  "",

  "The answer is",

  "8 − 5 = 3",

  "",

  "The original value has been recovered.",

  "",

  "### Finding an Inverse Function",

  "There is a standard procedure for finding an inverse.",

  "",


  "\"Step 1\"",

  "Replace",

  "f(x)",

  "with",

  "y",

  "",


  "Example",

  "MATH:f(x) = 2x + 3",

  "becomes",

  "MATH:y = 2x + 3",

  "",


  "\"Step 2\"",

  "Make x the subject of the equation.",

  "",

  "Subtract 3 from both sides.",

  "y − 3 = 2x",

  "",

  "Divide by 2.",

  "MATH:x = \\frac{y - 3}{2}",

  "",


  "\"Step 3\"",

  "Swap x and y.",

  "",

  "x becomes y",

  "and y becomes x.",

  "",

  "The inverse is",

  "MATH:f⁻¹(x) = \\frac{x - 3}{2}",


  "",


  "### Checking Your Answer",

  "A good way to verify an inverse is to substitute values.",

  "",

  "Choose",

  "x = 4",

  "",

  "Original function:",

  "MATH:f(4) = 2(4) + 3 = 11",

  "",

  "Inverse function:",

  "MATH:f⁻¹(11) = \\frac{11 - 3}{2} = 4",
  "",

  "The original value is obtained again.",

  "Therefore the inverse is correct.",

  "",


  "### One-to-One Functions",

  "Not every function has an inverse.",

  "",

  "A function must be one-to-one.",

  "",

  "This means every output comes from only one input.",

  "",

  "If two different x-values produce the same y-value, the inverse cannot determine which original value to return.",

  "",


  "### Horizontal Line Test",

  "The horizontal line test tells us whether a function has an inverse.",

  "",

  "Draw horizontal lines across the graph.",

  "",

  "If every horizontal line cuts the graph at only one point, the function is one-to-one.",

  "",

  "If any horizontal line cuts the graph more than once, the function is NOT one-to-one.",

  "",

  "Only one-to-one functions have inverse functions.",

  "",

  "### Example",

  "The parabola",

  "MATH:f(x) = x^2",

  "fails the horizontal line test.",

  "",


  "For example",

  "MATH:f(2) = 4",

  "and",

  "MATH:f(−2) = 4",

  "",

  "The output 4 comes from two different inputs.",

  "",

  "Therefore",

  "MATH:f(x) = x^2",

  "does not have an inverse unless its domain is restricted.",

  "",



  "### Functions That Usually Have Inverses",

  "Linear functions with non-zero gradient.",

  "",

  "Exponential functions.",

  "",

  "Logarithmic functions.",

  "",

  "Restricted quadratic functions.",

  "",



  "### Composition with an Inverse",

  "A function and its inverse always undo each other.",

  "",

  "This means",

  "f(f⁻¹(x)) = x",

  "",

  "and",

  "f⁻¹(f(x)) = x",

  "",

  "Both compositions always simplify to x.",

  "",



  "### Common Mistake",

  "Many students confuse",

  "f⁻¹(x)",

  "with",

  "MATH:\\frac{1}{f(x)}"


  "",

  "These are NOT the same.",

  "",

  "f⁻¹(x)",

  "means the inverse function.",

  "",

  "MATH:\\frac{1}{f(x)}",


  "means the reciprocal of the function.",

  "",



  "\"Example\"",

  "If f(x) = 2x + 3",

  "Inverse:",

  "MATH:f⁻¹(x) =\\frac{x - 3}{2}",

  "",

  "Reciprocal:",

  "MATH:\\frac{1}{2x + 3}"

  "",

  "They are completely different expressions.",

  "",


  "### Exam Tips",

  "•Always make x the subject before swapping x and y.",

  "",

  "•Always check that the function is one-to-one before finding an inverse.",

  "",

  "•Never confuse the inverse function with the reciprocal.",

  "",

  "•Always verify your answer by substituting values or using",

  "f(f⁻¹(x)) = x",

  "",

  "\"EXAM TIP:\"",

  "In tests, one of the most common mistakes is forgetting to swap x and y after solving for x. Another common mistake is writing",
  "MATH:1/f(x)",
  "instead of f⁻¹(x). These two expressions are completely different, and examiners frequently test whether students understand the difference.",

];

const List<String> images = [];

class InverseFunctionsScreen extends StatelessWidget {
  const InverseFunctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Inverse Functions",
      ),
    );
  }
}