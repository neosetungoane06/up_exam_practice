import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class LogarithmicAndTrigonometryFunctionsScreen extends StatelessWidget {
const LogarithmicAndTrigonometryFunctionsScreen({super.key});

@override
Widget build(BuildContext context) {
return const MathNotesScreen(
title: "Logarithmic and Trigonometry Functions",

location: StudyLocation(
module: "WTW134",
topic: "Theme 1 Functions and Change",
subtopic: "Logarithmic and Trigonometry Functions",
),

images: [
"assets/modules/wtw134/functions_and_their_graphs/logarithmic_function.png",
"assets/modules/wtw134/functions_and_their_graphs/trigonometric_function.png",
],

notes: [

"### Logarithmic Functions",

"A logarithmic function is the inverse of an exponential function. Instead of calculating powers, logarithms determine the exponent required to produce a given number.",

"For example:",

"MATH:2^3 = 8",

"is equivalent to",

"log₂(8) = 3",

"",

"[IMAGE]",

"",


  "### What is a Logarithm?",

"A logarithm answers the question:",

"'To what power must the base be raised to obtain the given number?'",

"For example:",

"log₁₀(100) = 2",

"because",

"MATH:10^2 = 100",

"",

"### General Form",

"A logarithmic function is written as:",

"logₐ(x)",

"where:",

"• a is the base",
"• x is the argument",
"• a > 0",
"• a ≠ 1",

"",



  "### Relationship with Exponential Functions",

"Every logarithmic function has a corresponding exponential function.",

"Exponential Form:",

"aʸ = x",

"Equivalent Logarithmic Form:",

"logₐ(x) = y",

"This relationship is extremely important because converting between these two forms is a common examination skill.",

"",


  "### Common Logarithms",

"There are two logarithms that appear most often.",

"1. Common logarithm",

   "log(x)",

   "has base 10.",

"2. Natural logarithm",

   "ln(x)",

   "has base e, where",

   "e ≈ 2.718",

"",


  "### Domain",

"The domain of every logarithmic function is:",

  "MATH:x > 0",

"This means zero and negative numbers cannot be used inside a logarithm.",

"",


  "### Range",

"The range of every logarithmic function is:",

"All real numbers.",

"The output can be any positive or negative value depending on x.",

"",


  "### Graph of a Logarithmic Function",

"The graph:",

"• has a vertical asymptote at x = 0.",
"• passes through (1,0).",
"• increases slowly as x becomes larger.",
"• never touches the y-axis.",

"",

"### Important Properties",

"Logarithmic functions:",

"• are increasing functions when the base is greater than 1.",
"• grow much slower than exponential functions.",
"• are the inverse of exponential graphs.",

"",

"### Real-Life Applications",

"Logarithms are used in:",

"• Earthquake measurements (Richter Scale).",
"• Sound intensity (Decibels).",
"• Acidity (pH Scale).",
"• Population growth.",
"• Computer science.",
"• Finance.",

"",

"### Common Mistakes",

"Students often:",

"• Use zero inside a logarithm.",
"• Use negative numbers inside a logarithm.",
"• Forget that logarithms and exponentials are inverse operations.",
"• Confuse the base with the argument.",

"",

"### Memory Trick",

"Exponentials ask:",

"'What is the answer?'",

"Logarithms ask:",

"'What power gives the answer?'",

"",

"### Big Picture",

"Logarithmic functions allow us to solve exponential equations and model situations involving rapid growth and decay. They are one of the most important inverse functions studied in university mathematics.",

"",

"EXAM TIP:",

"If you cannot solve a logarithm question immediately, first convert it into exponential form. This often makes the solution much easier.",



"### Trigonometric Functions",

"Trigonometric functions describe relationships between angles and sides of triangles. They are also used to model periodic phenomena such as waves, sound, electricity and circular motion.",

"",

"[IMAGE]",

"",

"### The Three Primary Trigonometric Functions",

"The three primary trigonometric functions are:",

"• Sine (sin)",
"• Cosine (cos)",
"• Tangent (tan)",

"These functions relate the sides of a right-angled triangle to one of its angles.",

"",

"### Right Triangle Ratios",

"For a right-angled triangle:",


  "MATH:sin(θ) = \\frac{Opposite}{Hypotenuse}",

  "MATH:cos(θ) = \\frac{Adjacent}{Hypotenuse}",

  "MATH:tan(θ) = \\frac{Opposite}{Adjacent}",
"",


  "### SOH CAH TOA",

"A simple memory trick is:",

"SOH → Sine = Opposite / Hypotenuse",

"CAH → Cosine = Adjacent / Hypotenuse",

"TOA → Tangent = Opposite / Adjacent",

"",


  "### The Unit Circle",

"Although trigonometric ratios begin with right triangles, university mathematics mainly uses the Unit Circle.",

"The Unit Circle has:",

"• Radius = 1",

"• Centre at the origin (0,0)",

"The coordinates of any point on the Unit Circle are:",

"(cos θ, sin θ)",

"",


  "### Graph of Sine",

"The sine graph:",

"• Oscillates smoothly.",

"• Has amplitude of 1.",

"• Has period of 2π.",

"• Passes through the origin.",

"",


  "### Graph of Cosine",

"The cosine graph:",

"• Also has amplitude of 1.",

"• Has period of 2π.",

"• Starts at y = 1 when x = 0.",

"",


  "### Graph of Tangent",

"The tangent graph:",

"• Has period of π.",

"• Contains vertical asymptotes.",

"• Increases continuously between asymptotes.",

"",


  "### Domain",


  "sin(x)",

"Domain: All real numbers.",

"",


  "cos(x)",

"Domain: All real numbers.",

"",


  "tan(x)",

"Domain: All real numbers except:",

  "MATH:x = \\frac{π}{2} + kπ ",


"where k is any integer.",

"",


  "### Range",


  "sin(x)",

"MATH:-1 ≤ sin(x) ≤ 1",

"",


  "cos(x)",

"-1 ≤ cos(x) ≤ 1",

"",


  "tan(x)",

"All real numbers.",

"",


  "### Amplitude",

"The amplitude measures the maximum distance from the centre line.",

"For the basic sine and cosine functions:",

"Amplitude = 1",

"",


  "### Period",

"The period is the length of one complete cycle.",

"For basic functions:",

"sin(x) → 2π",

"cos(x) → 2π",

"tan(x) → π",

"",


  "### Symmetry",


  "Sine is an odd function.",

"sin(-x) = -sin(x)",

"",


  "Cosine is an even function.",

"cos(-x) = cos(x)",

"",


  "Tangent is an odd function.",

"tan(-x) = -tan(x)",

"",


  "### Applications",

"Trigonometric functions are used in:",

"• Engineering",

"• Physics",

"• Navigation",

"• Sound waves",

"• Alternating current electricity",

"• Astronomy",

"• Computer graphics",

"",


  "### Common Mistakes",

"Students often:",

"• Forget to check whether the calculator is in degrees or radians.",

"• Confuse sine with cosine.",

"• Forget that tangent has asymptotes.",

"• Memorise graphs instead of understanding their behaviour.",

"",


  "### Memory Trick",

"Sine starts at 0.",

"Cosine starts at 1.",

"Tangent starts at 0 and has breaks (asymptotes).",

"",


  "### Big Picture",

"Trigonometric functions model repeating patterns. They are essential in calculus because their derivatives and integrals appear frequently in engineering, physics, economics and many scientific applications.",

"",


  "EXAM TIP:",

"Always identify whether angles are measured in degrees or radians before solving a trigonometric problem. Most university mathematics uses radians.",




  "### Logarithmic and Trigonometric Transformations",

"After understanding the basic logarithmic and trigonometric functions, the next step is learning how their graphs change when equations are transformed.",

"Transformations allow us to shift, stretch, compress or reflect graphs while preserving their overall shape.",

"",


  "### Vertical Translation",

"A vertical translation moves the graph up or down.",

"For a general function:",

"y = f(x) + c",

"• c > 0 moves the graph upward.",

"• c < 0 moves the graph downward.",

"",



  "Example:",

"MATH:y = log(x) + 2",

"moves the logarithmic graph two units upward.",

"",


  "### Horizontal Translation",

"A horizontal translation moves the graph left or right.",

"For a general function:",

"y = f(x - a)",

"• a > 0 moves the graph to the right.",

"• a < 0 moves the graph to the left.",

"",


  "Example:",

"y = sin(x - π)",

"moves the sine graph π units to the right.",

"",


  "### Reflection",

"A graph can also be reflected.",

"Reflection in the x-axis:",

"MATH:y = -f(x)",

"The graph flips upside down.",

"",

"Reflection in the y-axis:",

"MATH:y = f(-x)",

"The graph flips horizontally.",

"",

"### Vertical Stretch and Compression",

"Multiplying the function changes its height.",


  "y = af(x)",

"• |a| > 1 stretches the graph vertically.",

"• 0 < |a| < 1 compresses the graph vertically.",

"For trigonometric functions this changes the amplitude.",

"",



  "Example:",

"MATH:y = 3sin(x)",

"has an amplitude of 3 instead of 1.",

"",


  "### Horizontal Stretch and Compression",

"Changing the value inside the brackets changes the period.",

"MATH:y = sin(bx)",

"• b > 1 compresses the graph.",

"• 0 < b < 1 stretches the graph.",

"The period becomes:",

 "MATH:Period = \\frac{2π}{b}",


"",

"### Comparing Logarithmic and Trigonometric Functions",


  "Logarithmic Functions:",

"• Domain: x > 0",

"• Range: All real numbers",

"• Never repeats",

"• Always increasing when the base is greater than 1.",

"",



  "Trigonometric Functions:",

"• Repeat continuously.",

"• Have fixed periods.",

"• Oscillate between maximum and minimum values.",

"",


  "### Applications",

"Logarithmic transformations are used in:",

"• Earthquake magnitude",

"• pH calculations",

"• Population growth",

"",



  "Trigonometric transformations are used in:",

"• Sound waves",

"• Ocean tides",

"• Electrical engineering",

"• Signal processing",

"• Physics",

"",



  "### Common Examination Questions",

"You should be able to:",

"• Identify the domain and range.",

"• Sketch transformed graphs.",

"• Determine amplitude and period.",

"• Identify asymptotes.",

"• Convert between exponential and logarithmic forms.",

"• Interpret graphs correctly.",

"",



  "### Common Mistakes",

"Students often:",

"• Move graphs in the wrong direction.",

"• Forget that horizontal shifts work opposite to the sign inside the brackets.",

"• Forget that tangent has vertical asymptotes.",

"• Confuse amplitude with period.",

"",



  "### Memory Trick",

"Outside the brackets changes the graph vertically.",

"Inside the brackets changes the graph horizontally.",

"",



  "### Big Picture",

"Logarithmic and trigonometric functions are among the most important function families in university mathematics. Understanding their properties and transformations prepares you for differentiation, integration and many real-world applications.",

"",



  "EXAM TIP:",

"When sketching transformed graphs, always begin with the basic graph first. Then apply one transformation at a time instead of trying to draw the final graph immediately.",

],
);
}
}