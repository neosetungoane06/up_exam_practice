import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class GraphBehaviourScreen extends StatelessWidget {
  const GraphBehaviourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: "Graph Behaviour",

      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Graph Behaviour",
      ),

      images: [
        "assets/modules/wtw134/functions_and_their_graphs/increasing_vs_decreasing_functions.png",
        "assets/modules/wtw134/functions_and_their_graphs/maximum_minimum_points.png",
        "assets/modules/wtw134/functions_and_their_graphs/concavity.png",
      ],

      notes: [
        "### Graph Behaviour",

        "Graph Behaviour describes how a graph changes as you move from left to right.",

        "It tells us whether a function is climbing, falling, reaching a highest point, reaching a lowest point or changing its shape.",

        "One of the first things we analyse is whether a function is increasing or decreasing.",

        "",

        "### What Does Increasing Mean?",

        "Imagine walking along the graph from left to right.",

        "If you keep walking and the graph keeps going upward, the function is increasing.",

        "",

        "",

        "Another way to think about it is this:",

        "",

        "• As x becomes larger, the value of y also becomes larger.",

        "",

        "Example:",

        "",

        "MATH:f(x) = x",

        "",

        "If x changes from 1 to 2 to 3 to 4,",

        "the outputs become",

        "1 → 2 → 3 → 4",

        "",

        "The outputs are getting larger.",

        "So the function is increasing.",

        "",

        "### Real-Life Example",

        "Imagine climbing a mountain.",

        "As you move forward, your height above sea level increases.",

        "That is exactly how an increasing graph behaves.",

        "",

        "### Formal Definition",

        "A function is increasing on an interval if",

        "",

        "MATH:x₁ < x₂",

        "always implies",

        "MATH:f(x₁) < f(x₂).",

        "",

        "This simply means:",

        "If the second x-value is larger, then its output must also be larger.",

        "",

        "### What Does Decreasing Mean?",

        "Again imagine walking from left to right.",

        "This time the graph moves downward.",

        "",

        "[IMAGE]",

        "",

        "As x becomes larger,",

        "the outputs become smaller.",

        "",

        "Example:",

        "",

        "MATH:f(x) = -x",

        "",

        "If x changes from 1 to 2 to 3 to 4,",

        "the outputs become",

        "-1 → -2 → -3 → -4",

        "",

        "The outputs become smaller.",

        "So the function is decreasing.",

        "",

        "### Real-Life Example",

        "Imagine walking down a mountain.",

        "Every step forward makes your height lower.",

        "This is exactly what a decreasing graph does.",

        "",

        "### Formal Definition",

        "A function is decreasing on an interval if",

        "",

        "MATH:x₁ < x₂",

        "always implies",

        "MATH:f(x₁) > f(x₂).",

        "",

        "This means:",

        "As x gets larger, the outputs become smaller.",

        "",

        "### Functions Can Do Both",

        "Many functions are not increasing everywhere or decreasing everywhere.",

        "They may increase for part of the graph and decrease later.",

        "",

        "Example",

        "",

        "MATH:f(x) = -x^2 + 4",

        "",

        "The graph rises until it reaches its turning point.",

        "After the turning point it begins to fall.",

        "",

        "So the graph is",

        "• increasing on one interval",

        "• decreasing on another interval",

        "",

        "### How to Find Increasing and Decreasing Intervals",

        "•Step 1",

        "Look at the graph.",

        "",

        "•Step 2",

        "Start from the far left.",

        "",

        "•Step 3",

        "Move toward the right while watching the graph.",

        "",

        "If the graph climbs upward,",

        "mark that interval as increasing.",

        "",

        "If the graph falls downward,",

        "mark that interval as decreasing.",

        "",

        "### Important Rule",

        "We describe increasing and decreasing using intervals of x-values.",

        "",

        "We NEVER describe them using y-values.",

        "",

        "Example:",

        "Increasing from x = -∞ to x = 2.",

        "",

        "NOT",

        "'Increasing from y = 0 to y = 5.'",

        "",

        "### Memory Trick",

        "Increasing",

        "Think of climbing stairs.",

        "Each step takes you higher.",

        "",

        "Decreasing",

        "Think of walking down stairs.",

        "Each step takes you lower.",

        "",

        "### Common Mistakes",

        "❌ Looking at the graph from right to left.",

        "Always move LEFT → RIGHT.",

        "",

        "❌ Using y-values instead of x-values when writing intervals.",

        "",

        "❌ Thinking a graph that rises and then falls is increasing everywhere.",

        "It is only increasing before its turning point.",

        "",

        "❌ Forgetting that increasing means outputs become larger as x becomes larger.",

        "",

        "### EXAM TIP",

        "In examinations, always imagine yourself walking along the graph from left to right.",

        "If you would be climbing a hill, write Increasing.",

        "If you would be walking downhill, write Decreasing.",

        "",

        "PRACTICE",

        "1. Describe what an increasing function means in your own words.",

        "2. Describe what a decreasing function means.",

        "3. For the graph of y = -x² + 4, identify where it increases and where it decreases.",



        "### Maximum and Minimum Values",

        "A graph does not always continue rising or continue falling forever.",

        "Many graphs eventually change direction.",

        "When this happens, they often reach a highest point or a lowest point.",

        "These points are called maximum and minimum values.",

        "",

        "",

        "### What is a Maximum Value?",

        "A maximum value is the largest output (y-value) that a function reaches.",

        "It is the highest point on the graph over the interval or domain being considered.",

        "",

        "Imagine throwing a ball into the air.",

        "The ball rises until it reaches its highest point.",

        "That highest point is the maximum value.",

        "",

        "### Example",

        "Consider",

        "",

        "MATH:f(x) = -x^2 + 4",

        "",

        "The graph is a downward-opening parabola.",

        "It rises until it reaches its highest point.",

        "After that, it begins to fall.",

        "",

        "The maximum value is",

        "4",

        "",

        "and it occurs when",

        "x = 0.",

        "",

        "### What is a Minimum Value?",

        "A minimum value is the smallest output (y-value) that a function reaches.",

        "It is the lowest point on the graph over the interval or domain being considered.",

        "",

        "Imagine placing a marble inside a bowl.",

        "It rolls downward until it reaches the very bottom.",

        "That bottom point is the minimum value.",

        "",

        "### Example",

        "Consider",

        "",

        "MATH:f(x) = x^2",

        "",

        "The graph is an upward-opening parabola.",

        "It falls until it reaches the lowest point.",

        "Then it begins to rise.",

        "",

        "The minimum value is",

        "0",

        "",

        "and it occurs when",

        "x = 0.",

        "",

        "### Turning Points",

        "A turning point is a point where the graph changes direction.",

        "",

        "It may change from",

        "• increasing to decreasing",

        "or",

        "• decreasing to increasing.",

        "",

        "A turning point is therefore often where a maximum or minimum occurs.",

        "",

        "[IMAGE]",

        "",

        "### How to Identify a Maximum or Minimum",

        "•Step 1",

        "Look for where the graph changes direction.",

        "",

        "•Step 2",

        "Ask yourself:",

        "",

        "'Is this the highest point?'",

        "",

        "If yes, it is a maximum.",

        "",

        "'Is this the lowest point?'",

        "",

        "If yes, it is a minimum.",

        "",

        "### Local Maximum and Local Minimum",

        "Sometimes a graph has many hills and valleys.",

        "",

        "A local maximum is only the highest point in its nearby region.",

        "It may not be the highest point on the entire graph.",

        "",

        "A local minimum is only the lowest point nearby.",

        "It may not be the lowest point overall.",

        "",

        "### Absolute (Global) Maximum",

        "The absolute maximum is the highest point on the entire graph.",

        "No other point has a larger y-value.",

        "",

        "### Absolute (Global) Minimum",

        "The absolute minimum is the lowest point on the entire graph.",

        "No other point has a smaller y-value.",

        "",

        "### Example",

        "Suppose a graph has three hills.",

        "",

        "One hill is the tallest.",

        "",

        "All three hilltops are local maxima.",

        "",

        "But only the tallest hill is the absolute maximum.",

        "",

        "### Functions Without a Maximum",

        "Not every function has a maximum.",

        "",

        "Example",

        "",

        "MATH:f(x) = x^2",

        "",

        "The graph keeps increasing forever.",

        "It never reaches a highest point.",

        "So it has no maximum value.",

        "",

        "### Functions Without a Minimum",

        "Not every function has a minimum.",

        "",

        "Example",

        "",

        "MATH:f(x) = -x^2",

        "considering all real numbers.",

        "",

        "The graph continues downward without limit.",

        "It never reaches a smallest possible value.",

        "",

        "### Important Difference",

        "A turning point is the location on the graph.",

        "A maximum or minimum is the value at that location.",

        "",

        "For example:",

        "",

        "The turning point is",

        "(2, 7)",

        "",

        "The maximum value is",

        "7",

        "",

        "The x-value where it occurs is",

        "2",

        "",

        "### Memory Trick",

        "Maximum",

        "Think of the top of a mountain.",

        "",

        "Minimum",

        "Think of the bottom of a valley.",

        "",

        "### Common Mistakes",

        "❌ Saying the maximum is the x-value.",

        "The maximum is the y-value.",

        "",

        "❌ Confusing turning points with intercepts.",

        "A turning point is where the graph changes direction.",

        "An intercept is where the graph crosses an axis.",

        "",

        "❌ Assuming every graph has both a maximum and a minimum.",

        "Many graphs have only one or neither.",

        "",

        "❌ Confusing local maxima with the absolute maximum.",

        "",

        "### EXAM TIP",

        "When an exam asks for the maximum or minimum, always give:",

        "",

        "• the value (y-value)",

        "• and the x-value where it occurs.",

        "",

        "PRACTICE",

        "1. State the maximum value of y = -x² + 9.",

        "2. State the minimum value of y = x² + 5.",

        "3. Explain the difference between a local maximum and an absolute maximum.",

        "### Concavity",

        "Besides increasing and decreasing, graphs also have a shape.",

        "Some graphs bend upward like a bowl, while others bend downward like a hill.",

        "This property is called concavity.",

        "",

        "[IMAGE]",

        "",

        "### What is Concavity?",

        "Concavity describes how a graph bends or curves.",

        "It tells us whether the graph is shaped like a cup or like a cap.",

        "",

        "There are two possibilities:",

        "",

        "• Concave Up (Cup Shape ∪)",

        "• Concave Down (Cap Shape ∩)",

        "",

        "### Concave Up",

        "A graph is concave up when it bends upward like a bowl.",

        "",

        "Imagine pouring water into a bowl.",

        "The bowl can hold the water.",

        "That is exactly how a concave up graph looks.",

        "",

        "[IMAGE]",

        "",

        "Example",

        "",

        "MATH:f(x) = x^2",

        "",

        "This parabola opens upward.",

        "It is concave up everywhere.",

        "",

        "### Concave Down",

        "A graph is concave down when it bends downward like an upside-down bowl.",

        "",

        "Imagine turning a bowl upside down.",

        "If you pour water on it, the water runs off.",

        "That is exactly how a concave down graph looks.",

        "",

        "[IMAGE]",

        "",

        "Example",

        "",

        "MATH:f(x) = -x^2",

        "",

        "This parabola opens downward.",

        "It is concave down everywhere.",

        "",

        "### How to Recognise Concavity",

        "Look at the shape of the graph.",

        "",

        "If the graph looks like",

        "∪",

        "it is concave up.",

        "",

        "If the graph looks like",

        "∩",

        "it is concave down.",

        "",

        "### Another Way to Think About It",

        "Instead of looking at the curve itself, look at how the slope changes.",

        "",

        "Concave Up",

        "The slope keeps increasing.",

        "",

        "This means the graph becomes steeper as you move from left to right.",

        "",

        "Example",

        "Negative slope → Zero slope → Positive slope",

        "",

        "The slope is increasing.",

        "So the graph is concave up.",

        "",

        "Concave Down",

        "The slope keeps decreasing.",

        "",

        "This means the graph becomes less steep as you move from left to right.",

        "",

        "Example",

        "Positive slope → Zero slope → Negative slope",

        "",

        "The slope is decreasing.",

        "So the graph is concave down.",

        "",

        "### Concavity and Increasing/Decreasing Are NOT the Same",

        "This is one of the most important ideas in this topic.",

        "",

        "A graph can be increasing while still being concave down.",

        "A graph can also be decreasing while still being concave up.",

        "",

        "These describe two completely different properties.",

        "",

        "### Four Possible Combinations",

        "1. Increasing and Concave Up",

        "The graph rises and becomes steeper.",

        "",

        "2. Increasing and Concave Down",

        "The graph rises but gradually becomes flatter.",

        "",

        "3. Decreasing and Concave Up",

        "The graph falls but gradually becomes less steep.",

        "",

        "4. Decreasing and Concave Down",

        "The graph falls and becomes even steeper downward.",

        "",

        "### Real-Life Example",

        "Imagine driving a car uphill.",

        "",

        "If the road becomes steeper and steeper,",

        "the road is concave up.",

        "",

        "If the road becomes flatter as you climb,",

        "the road is concave down.",

        "",

        "### Inflection Point",

        "Some graphs change from concave up to concave down.",

        "",

        "The point where this happens is called an inflection point.",

        "",

        "At an inflection point,",

        "the graph changes its bending direction.",

        "",

        "[IMAGE]",

        "",

        "### Memory Trick",

        "Concave Up",

        "Think of a CUP.",

        "A cup holds water.",

        "",

        "Concave Down",

        "Think of an upside-down CAP.",

        "A cap cannot hold water.",

        "",

        "### Common Mistakes",

        "❌ Thinking increasing automatically means concave up.",

        "It does not.",

        "",

        "❌ Thinking decreasing automatically means concave down.",

        "It does not.",

        "",

        "❌ Looking only at whether the graph goes up or down.",

        "Always look at the SHAPE as well.",

        "",

        "❌ Confusing a turning point with an inflection point.",

        "A turning point changes direction.",

        "An inflection point changes curvature.",

        "",

        "### EXAM TIP",

        "When asked about concavity, ignore whether the graph is going up or down.",

        "Instead ask:",

        "",

        "'Does the graph look like a cup or a cap?'",

        "",

        "PRACTICE",

        "1. Is y = x² concave up or concave down?",

        "2. Is y = -x² concave up or concave down?",

        "3. Explain why increasing does not always mean concave up.",

        "4. Explain the difference between a turning point and an inflection point.",
      ],
    );
  }
}