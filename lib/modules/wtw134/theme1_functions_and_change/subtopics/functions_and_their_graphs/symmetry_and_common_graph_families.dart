import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class SymmetryAndCommonGraphFamiliesScreen extends StatelessWidget {
  const SymmetryAndCommonGraphFamiliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Symmetry and Common Graph Families",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Symmetry and Common Graph Families",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/even_vs_odd_symmetry.png",
        "assets/modules/wtw134/functions_and_their_graphs/common_graph_families.png",
      ],

      notes: [

        "### Symmetry",

        "Symmetry is one of the quickest ways to understand and sketch a graph.",

        "If a graph has symmetry, you only need to sketch part of it because the rest follows a predictable pattern.",

        "",



        "",

        "### What is Symmetry?",

        "A graph is symmetrical if one part of the graph is an exact reflection or rotation of another part.",

        "",

        "There are three possibilities:",

        "",

        "• Even Functions",
        "• Odd Functions",
        "• Neither Even nor Odd",

        "",

        "### Even Functions",

        "An even function is symmetrical about the y-axis.",

        "",

        "This means the left side of the graph is a mirror image of the right side.",

        "",

        "If you folded the graph along the y-axis, both sides would match perfectly.",

        "",

        "The mathematical test for an even function is:",

        "",

        "MATH:f(-x) = f(x)",

        "",

        "This equation must be true for EVERY value of x in the domain.",

        "",

        "### Example",

        "Consider",

        "",

        "MATH:f(x) = x^2",

        "",

        "Substitute -x:",

        "",

        "MATH:f(-x) = (-x)^2",

        "",

        "MATH:= x^2",

        "",

        "MATH:= f(x)",

        "",

        "Therefore,",

        "x² is an even function.",

        "",

        "### Another Example",

        "The absolute value function",

        "",

        "MATH:f(x) = |x|",

        "",

        "is also even because",

        "",

        "MATH:|-x| = |x|",

        "",

        "### Real-Life Picture",

        "Imagine looking into a mirror.",

        "The left side and right side look identical.",

        "That is exactly how an even function behaves.",

        "",

        "### Odd Functions",

        "Odd functions are NOT symmetrical about the y-axis.",

        "",

        "Instead, they are symmetrical about the origin.",

        "",

        "This means if you rotate the graph",

        "180° around the origin,",

        "it looks exactly the same.",

        "",

        "The mathematical test is:",

        "",

        "MATH:f(-x) = -f(x)",

        "",

        "### Example",

        "Consider",

        "",

        "MATH:f(x) = x^3",

        "",

        "Substitute -x:",

        "",

        "MATH:f(-x) = (-x)^3",

        "",

        "MATH:= -x^3",

        "",

        "MATH:= -f(x)",

        "",

        "Therefore",

        "x³ is an odd function.",

        "",

        "### Real-Life Picture",

        "Imagine rotating the graph upside down.",

        "If it looks exactly the same after a 180° turn,",

        "the function is odd.",

        "",

        "### Functions That Are Neither",

        "Most functions are neither even nor odd.",

        "",



        "Example:",

        "",

        "MATH:f(x) = x² + x",

        "",

        "Calculate",

        "",

        "MATH:f(-x) = (-x)² + (-x)",

        "",

        "MATH:= x² - x",

        "",

        "This is NOT equal to",

        "f(x)",

        "",

        "and it is also NOT equal to",

        "-f(x).",

        "",

        "Therefore",

        "MATH:x² + x",

        "is neither even nor odd.",

        "",

        "### How to Determine Symmetry",

        "\"Step 1\"",

        "Replace every x with -x.",

        "",

        "\"Step 2\"",

        "Simplify completely.",

        "",

        "\"Step 3\"",

        "Compare your answer with the original function.",

        "",

        "If",

        "MATH:f(-x) = f(x)",

        "the function is Even.",

        "",

        "If",

        "MATH:f(-x) = -f(x)",

        "the function is Odd.",

        "",

        "Otherwise",

        "the function is Neither.",

        "",

        "### Memory Trick",

        "Even",

        "Think 'Mirror'.",

        "Mirror about the y-axis.",

        "",


        "Odd",

        "Think 'Origin Rotation'.",

        "Rotate the graph 180°.",

        "",



        "### Common Mistakes",

        "❌ Thinking every function must be either even or odd.",

        "",

        "Many functions are neither.",

        "",

        "❌ Forgetting to simplify f(-x) before comparing.",

        "",

        "❌ Confusing y-axis symmetry with origin symmetry.",

        "",



        "### EXAM TIP",

        "Always perform BOTH tests.",

        "Never assume a function is even or odd just by looking at it.",

        "",

        "PRACTICE",

        "1. Show that f(x) = x² is even.",

        "2. Show that f(x) = x³ is odd.",

        "3. Determine whether f(x) = x² + x is even, odd or neither.",

        "### Common Graph Families",

        "Certain graphs appear repeatedly throughout mathematics.",

        "If you can recognise these standard graph shapes immediately, sketching and solving questions becomes much easier.",

        "",

        "",



        "### What is a Graph Family?",

        "A graph family is a collection of functions that all have the same basic shape.",

        "",

        "Although numbers may change, the overall appearance of the graph stays the same.",

        "",

        "Once you recognise the family, you already know many of its properties before doing any calculations.",

        "",



        "### 1. Linear Functions",

        "A linear function has the general form",

        "",

        "MATH:f(x) = mx + c",

        "",

        "where:",

        "",

        "• m is the slope (gradient).",
        "• c is the y-intercept.",

        "",

        "The graph of a linear function is always a straight line.",

        "",


        "If m > 0,",

        "the line rises from left to right.",

        "",


        "If m < 0,",

        "the line falls from left to right.",

        "",



        "If m = 0,",

        "the graph is a horizontal line.",

        "",

        "\"Example\"",

        "",

        "MATH:f(x) = 2x - 3",

        "",


        "This graph:",

        "• is increasing",
        "• has slope 2",
        "• crosses the y-axis at -3",

        "",


        "### 2. Quadratic Functions",

        "A quadratic function has the general form",

        "",

        "MATH:f(x) = ax^2 + bx + c",

        "",

        "The graph is called a parabola.",

        "",



        "If a > 0,",

        "the parabola opens upward.",

        "It has a minimum value.",

        "",



        "If a < 0,",

        "the parabola opens downward.",

        "It has a maximum value.",

        "",



        "\"Example\"",

        "",

        "MATH:f(x) = x^2",

        "",

        "opens upward.",

        "",


        "\"Example\"",

        "",

        "MATH:f(x) = -x^2",

        "",

        "opens downward.",

        "",


        "### 3. Cubic Functions",

        "A cubic function has the general form",

        "",

        "MATH:f(x) = ax^3 + bx^2 + cx + d",

        "",

        "The basic cubic graph has an S-shape.",

        "",

        "It usually passes through the origin when using",

        "MATH:f(x) = x^3.",

        "",

        "It continues forever in both directions.",

        "",

        "It has no maximum or minimum for the basic form.",

        "",

        "### 4. Reciprocal Functions",

        "A reciprocal function has the form",

        "",

        "MATH:f(x) = \\frac{1}{x}",

        "",

        "It has two separate branches.",

        "",

        "It never touches the x-axis.",

        "It never touches the y-axis.",

        "",

        "The x-axis and y-axis are called asymptotes.",

        "",

        "The graph is an odd function.",

        "So it has symmetry about the origin.",

        "",



        "### 5. Absolute Value Functions",

        "An absolute value function has the form",

        "",

        "MATH:f(x) = |x|",

        "",

        "The graph looks like the letter V.",

        "",

        "It has one minimum point at the origin.",

        "",

        "It is an even function.",

        "So it has symmetry about the y-axis.",

        "",



        "### 6. Square Root Functions",

        "A square root function has the form",

        "",

        "MATH:f(x) = \\sqrt{x}",

        "",

        "The graph begins at",

        "MATH:(0,0)",

        "",

        "and continues only to the right.",

        "",

        "It increases continuously.",

        "But it becomes flatter as x increases.",

        "",

        "It is therefore increasing and concave down.",

        "",

        "### Quick Comparison",

        "Linear",

        "Straight line",

        "",

        "Quadratic",

        "U-shaped parabola",

        "",

        "Cubic",

        "S-shaped curve",

        "",

        "Reciprocal",

        "Two separate branches",

        "",

        "Absolute Value",

        "V-shaped graph",

        "",

        "Square Root",

        "Starts at the origin and curves to the right",

        "",



        "### Why Learning Graph Families Matters",

        "If you recognise a graph family immediately, you already know:",

        "",

        "• its general shape",
        "• whether it has symmetry",
        "• where it starts",
        "• whether it increases or decreases",
        "• whether it has a maximum or minimum",
        "• whether it has asymptotes",

        "",

        "This saves a huge amount of time during tests and exams.",

        "",



        "### Memory Tricks",

        "Linear → Straight road.",

        "",

        "Quadratic → Bowl or hill.",

        "",

        "Cubic → Snake (S-shape).",

        "",

        "Reciprocal → Two separated curves.",

        "",

        "Absolute Value → Letter V.",

        "",

        "Square Root → Starts at zero and slowly climbs.",

        "",



        "### Common Mistakes",

        "❌ Thinking every curve is a parabola.",

        "",

        "❌ Forgetting that",
         "MATH:√x",
         "only exists for x ≥ 0.",

        "",

        "❌ Forgetting that",
        r"MATH:\frac{1}{x}",
        "can NEVER equal zero.",

        "",

        "❌ Thinking |x| has two x-intercepts.",

        "It only has one at x = 0.",

        "",


        "### EXAM TIP",

        "One of the fastest ways to identify a function is to recognise its graph family before doing any calculations.",

        "",



        "\"PRACTICE\"",

        "1. Which graph family has a V-shape?",

        "2. Which graph family has two branches?",

        "3. Which graph family is always a straight line?",

        "4. Which graph family opens upward when a > 0?",

        "5. Which graph family starts at the origin and only extends to the right?",
      ],
    );
  }
}