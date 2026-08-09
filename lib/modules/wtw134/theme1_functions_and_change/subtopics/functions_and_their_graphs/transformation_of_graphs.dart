import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Transformations of Graphs";

const List<String> notes = [


  "### Transformations of Graphs",

  "Graph transformations are one of the most important ideas in mathematics because they allow us to draw complicated graphs without starting from scratch.",

  "Instead of plotting many points every time we are given a new equation, we begin with a graph that we already know and then move, stretch or reflect that graph according to the equation.",

  "Almost every graph you will encounter in Calculus is simply a transformed version of a basic graph.",

  "For this reason, understanding transformations is essential before studying differentiation and integration.",

  "",

  "### What is a Transformation?",

  "A transformation is any change that alters the position, orientation or size of a graph while still preserving its overall shape.",

  "Transformations can:",

  "• Move a graph left or right.",
  "• Move a graph up or down.",
  "• Stretch a graph.",
  "• Compress a graph.",
  "• Reflect a graph across an axis.",
  "• Combine several of these changes together.",

  "",

  "The most important skill is learning to recognise what each part of an equation is doing to the original graph.",

  "",

  "### Parent Functions",

  "Every transformed graph begins with a parent function.",

  "A parent function is the simplest version of a function before any transformations have been applied.",

  "Examples include:",

  "Linear:",
  "MATH:y = x",

  "",

  "Quadratic:",
  "MATH:y = x^2",

  "",

  "Cubic:",
  "y = x^3",

  "",


  "Square Root:",
  "y = \\sqrt{x}",

  "",


  "Absolute Value:",
  "MATH:y = |x|",

  "",


  "Exponential:",
  "y = 2ˣ",

  "",

  "Each of these graphs has its own unique shape.",

  "Once you know these shapes, every transformed graph becomes much easier to understand.",

  "",

  "[IMAGE]",

  "",

  "### Why Parent Functions Matter",

  "Suppose you are asked to sketch",

  "MATH:y = (x − 3)² + 5",

  "",

  "If you already know the graph of",

  "MATH:y = x^2",

  "",

  "then you do NOT need to calculate many coordinate points.",

  "Instead, you simply move the entire parabola to its new position.",

  "",

  "This saves time during tests and examinations.",

  "",

  "### Vertical Translation",

  "A vertical translation moves the graph upward or downward.",

  "The shape of the graph NEVER changes.",

  "Only its vertical position changes.",

  "",

  "Vertical translations happen when a constant is added or subtracted OUTSIDE the function.",

  "",

  "General form:",

  "MATH:y = f(x) + k",

  "",

  "where k is a constant.",

  "",


  "Rules:",

  "If k is positive:",
  "The graph moves UP by k units.",

  "",

  "If k is negative:",
  "The graph moves DOWN by |k| units.",

  "",

  "Notice that x does not change.",

  "Only the y-values become larger or smaller.",

  "",

  "### Example 1",

  "Original graph:",

  "MATH:y = x^2",

  "",

  "New graph:",

  "MATH:y = x^2 + 3",

  "",

  "Every point moves upward by exactly 3 units.",

  "",

  "Old vertex:",
  "MATH:(0 ; 0)",

  "",

  "New vertex:",
  "MATH:(0 ; 3)",

  "",

  "Nothing else changes.",

  "",

  "[IMAGE]",

  "",

  "### Example 2",

  "Original graph:",

  "MATH:y = x^2",

  "",


  "New graph:",

  "MATH:y = x² − 4",

  "",

  "Every point moves downward by 4 units.",

  "",

  "Old vertex:",
  "MATH:(0 ; 0)",

  "",

  "New vertex:",
  "MATH:(0 ; -4)",

  "",

  "Again, the shape of the parabola remains exactly the same.",

  "",

  "### Understanding Why",

  "Consider the point (2 ; 4) on",

  "MATH:y = x^2",

  "",

  "For",

  "MATH:y = x^2 + 3",

  "",

  "the x-coordinate stays at 2.",

  "Only the y-value changes.",

  "",

  "Old point:",
  "MATH:(2 ; 4)",

  "",

  "New point:",
  "MATH:(2 ; 7)",

  "",

  "Every single point on the graph behaves exactly like this.",

  "",

  "### Key Observation",

  "Whenever a constant is added outside the brackets:",

  "Only the y-values change.",

  "The x-values remain exactly the same.",

  "",

  "This is why the graph moves vertically instead of horizontally.",

  "",

  "MEMORY TRICK:",

  "Numbers OUTSIDE the function move the graph UP or DOWN.",

  "",

  "EXAM TIP:",

  "Students sometimes think adding +3 makes the graph move right by 3 units. This is incorrect. A number added outside the function ALWAYS changes the y-values, so the graph moves vertically.",


"### Horizontal Translation",

"A horizontal translation moves the graph to the left or to the right.",

"Unlike a vertical translation, the constant is placed INSIDE the brackets with x.",

"",

"General form:",

"MATH:y = f(x - h)",

"",

"where h is a constant.",

"",

"Rules:",

"If the equation is",

"x - h",

"the graph moves RIGHT by h units.",

"",

"If the equation is",

"x + h",

"the graph moves LEFT by h units.",

"",

"This rule feels backwards to many students at first, so it must be memorised.",

"",

"### Why does it seem backwards?",

"Suppose we have",

"MATH:y = (x - 2)^2",

"",

"To make the bracket equal zero,",

"x must equal 2.",

"",

"Therefore the vertex moves from",

"MATH:(0 ; 0)",

"to",

"MATH:(2 ; 0).",

"",

"The graph therefore moves to the RIGHT.",

"",


  "### Example 1",

"Parent graph:",

"MATH:y = x^2",

"",

"Transformed graph:",

"MATH:y = (x - 3)^2",

"",

"The graph shifts 3 units to the right.",

"",

"Old vertex:",

"MATH:(0 ; 0)",

"",

"New vertex:",

"MATH:(3 ; 0)",

"",

"[IMAGE]",

"",

"### Example 2",

"Parent graph:",

"MATH:y = x^2",

"",

"Transformed graph:",

"MATH:y = (x + 4)^2",

"",

"The graph shifts 4 units to the left.",

"",

"Old vertex:",

"MATH:(0 ; 0)",

"",

"New vertex:",

"MATH:(-4 ; 0)",

"",

"Again, the shape does not change.",

"Only the position changes.",

"",

"### Understanding the Coordinates",

"Take the point",

"MATH:(1 ; 1)",

"on",

"MATH:y = x^2",

"",

"After applying",

"MATH:y = (x - 2)^2",

"",

"the point becomes",

"MATH:(3 ; 1)",

"",

"Notice that the y-coordinate stayed exactly the same.",

"Only the x-coordinate changed.",

"",

"This is why the graph moves horizontally.",

"",

"### Comparing Vertical and Horizontal Translation",

"Vertical Translation",

"• Constant outside the function.",
"• y-values change.",
"• Graph moves up or down.",

"",


  "Horizontal Translation",

"• Constant inside the brackets.",
"• x-values change.",
"• Graph moves left or right.",

"",


  "### Vertical Stretch",

"Sometimes the graph does not move at all.",

"Instead, it becomes taller or flatter.",

"",

"This is called a vertical stretch or vertical compression.",

"",

"General form:",

"MATH:y = a f(x)",

"",

"where a is any constant.",

"",

"Rules:",

"If |a| > 1",

"the graph stretches vertically.",

"",

"The graph becomes steeper.",

"",

"If 0 < |a| < 1",

"the graph compresses vertically.",

"",

"The graph becomes flatter.",

"",

"### Example 1",

"Parent graph:",

"MATH:y = x^2",

"",

"Transformed graph:",

"MATH:y = 3x^2",

"",

"Every y-value becomes three times larger.",

"",



  "Example:",

"Original point:",

"MATH:(2 ; 4)",

"",

"New point:",

"MATH:(2 ; 12)",

"",

"The graph becomes much narrower.",

"",

"[IMAGE]",

"",



  "### Example 2",

"Parent graph:",

"MATH:y = x^2",

"",

"Transformed graph:",

"y = ½x²",

"",

"Every y-value becomes half its original value.",

"",

"Original point:",

"MATH:(2 ; 4)",

"",

"New point:",

"MATH:(2 ; 2)",

"",

"The graph becomes much wider.",

"",



  "### Why does this happen?",

"The x-values never change.",

"Only the y-values are multiplied by the constant a.",

"",

"Large values of a pull the graph upward faster.",

"Small values of a keep the graph closer to the x-axis.",

"",

"### Important Observation",

"Vertical stretches DO NOT move the graph.",

"They only change its steepness.",

"",

"The vertex remains in exactly the same position.",

"",

"MEMORY TRICK:",

"Multiply OUTSIDE → Stretch or Compress.",

"",

"EXAM TIP:",

"Do not confuse a vertical stretch with a vertical translation. A stretch changes the distance of points from the x-axis, while a translation moves the entire graph without changing its shape.",

  "### Reflection in the x-axis",

  "A reflection in the x-axis flips the graph upside down.",

  "Every positive y-value becomes negative, while every negative y-value becomes positive.",

  "",

  "General form:",

  "MATH:y = -f(x)",

  "",

  "The negative sign is OUTSIDE the function.",

  "",

  "Example:",

  "Parent graph:",

  "MATH:y = x^2",

  "",

  "Reflected graph:",

  "MATH:y = -x^2",

  "",

  "The parabola now opens downward instead of upward.",

  "",

  "[IMAGE]",

  "",

  "### Reflection in the y-axis",

  "A reflection in the y-axis flips the graph from left to right.",

  "The negative sign is placed INSIDE the brackets.",

  "",

  "General form:",

  "MATH:y = f(-x)",

  "",



  "Example:",

  "Parent graph:",

  "y = x³",

  "",

  "Reflected graph:",

  "MATH:y = (-x)^3",

  "",

  "Every x-value changes sign while the y-values remain unchanged.",

  "",

  "[IMAGE]",

  "",


  "### Comparing the Two Reflections",

  "Reflection in x-axis",

  "• Negative OUTSIDE.",
  "• y-values change sign.",
  "• Graph flips vertically.",

  "",



  "Reflection in y-axis",

  "• Negative INSIDE.",
  "• x-values change sign.",
  "• Graph flips horizontally.",

  "",


  "### Combining Transformations",

  "Most examination questions combine several transformations into one equation.",

  "Consider:",

  "MATH:y = -2(x - 1)^2 + 3",

  "",

  "Instead of trying to draw it immediately, apply one transformation at a time.",

  "",

  "\"Step 1\"",

  "Start with the parent graph",

  "MATH:y = x²",

  "",

  "\"Step 2\"",

  "MATH:x - 1",

  "Move the graph 1 unit to the right.",

  "",


  "\"Step 3\"",

  "Multiply by 2.",

  "Stretch the graph vertically.",

  "",



  "\"Step 4\"",

  "Negative outside.",

  "Reflect the graph in the x-axis.",

  "",

  "\"Step 5\"",

  "+3",

  "Move the graph upward by 3 units.",

  "",

  "[IMAGE]",

  "",


  "### Recommended Order",

  "Whenever several transformations appear together, use the following order:",

  "1. Draw the parent function.",
  "2. Apply horizontal translations.",
  "3. Apply reflections.",
  "4. Apply stretches or compressions.",
  "5. Apply vertical translations.",

  "",

  "Following the same order every time greatly reduces mistakes.",

  "",


  "### Common Mistakes",

  "•Mistake 1",

  "Thinking",

  "MATH:x - 2",

  "moves the graph left.",

  "",

  "Correct:",

  "x - 2 moves RIGHT.",

  "",



  "•Mistake 2",

  "Thinking",

  "+3",

  "outside the brackets stretches the graph.",

  "",

  "Correct:",

  "It only moves the graph upward.",

  "",



  "Mistake 3",

  "Forgetting that reflections require a negative sign.",

  "",

  "Always check whether the negative sign is inside or outside the brackets.",

  "",



  "### Summary",

  "Outside + or - → Up or Down.",

  "",

  "Inside + or - → Left or Right.",

  "",

  "Multiply outside → Stretch or Compress.",

  "",

  "Negative outside → Reflection in the x-axis.",

  "",

  "Negative inside → Reflection in the y-axis.",

  "",

  "Mastering these five rules allows you to sketch almost every transformed graph in this course.",

  "",



  "MEMORY TRICK:",

  "OUTSIDE changes HEIGHT.",

  "INSIDE changes POSITION.",

  "NEGATIVE flips the graph.",

  "",



  "EXAM TIP:",

  "Do not memorise transformed graphs individually. Learn the parent graph first and then apply the transformations one at a time. This method works for quadratics, cubics, exponentials, logarithms, trigonometric functions and many graphs you will study later in WTW134.",
];
const List<String> images = [
  "assets/modules/wtw134/functions_and_their_graphs/parent_function.png",
  "assets/modules/wtw134/functions_and_their_graphs/vertical_translation.png",
  "assets/modules/wtw134/functions_and_their_graphs/horizontal_translation.png",
  "assets/modules/wtw134/functions_and_their_graphs/vertical_stretch.png",
  "assets/modules/wtw134/functions_and_their_graphs/reflection_x_axis.png",
  "assets/modules/wtw134/functions_and_their_graphs/reflection_y_axis.png",
  "assets/modules/wtw134/functions_and_their_graphs/Combined_transformation.png",
];

class TransformationsOfGraphsScreen extends StatelessWidget {
  const TransformationsOfGraphsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "WTW134",
        topic: "Theme 1 Functions and Change",
        subtopic: "Transformations of Graphs",
      ),
    );
  }
}