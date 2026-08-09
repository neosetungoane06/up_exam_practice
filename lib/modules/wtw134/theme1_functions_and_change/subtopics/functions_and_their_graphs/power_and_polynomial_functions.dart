import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class PowerAndPolynomialFunctionsScreen extends StatelessWidget {
const PowerAndPolynomialFunctionsScreen({super.key});

@override
Widget build(BuildContext context) {
return const MathNotesScreen(
title: "Power and Polynomial",

location: StudyLocation(
module: "WTW134",
topic: "Theme 1 Functions and Change",
subtopic: "Power and Polynomial",
),

images: [
"assets/modules/wtw134/functions_and_their_graphs/power_function.png",
  "assets/modules/wtw134/functions_and_their_graphs/polynomial_function.png",
],

notes: [

  "### Power Functions",

  "A power function is a function where the variable is raised to a constant power.",

  "The general form is:",

  "y = xⁿ",

  "where n is a constant.",

  "",

  "[IMAGE]",

  "",

  "### Examples of Power Functions",

  "Examples include:",

  "• y = x",
  "• y = x²",
  "• y = x³",
  "• y = x⁴",
  "• y = x⁻¹",
  "MATH:• y = √x",

  "Each of these is a power function because x is raised to a fixed exponent.",

  "",

  "### Even Power Functions",

  "Examples:",

  "MATH:y = x^2",

  "MATH:y = x^4",



  "Characteristics:",

  "• Symmetric about the y-axis.",

  "• Minimum point at the origin.",

  "• Both ends point upward.",

  "• Domain: All real numbers.",

  "• Range: y ≥ 0.",

  "",


  "### Odd Power Functions",

  "Examples:",

  "MATH:y = x^3",

  "MATH:y = x^5",


  "\"Characteristics:\"",

  "• Symmetric about the origin.",

  "• Pass through (0,0).",

  "• Increasing for all x.",

  "• Domain: All real numbers.",

  "• Range: All real numbers.",

  "",


  "### Fractional Powers",

  "Fractional exponents represent roots.",

  "For example:",

  "MATH:x^(1/2) = \\sqrt{x}",

  "MATH:x^{1/3}=\\sqrt[3]{x}",

  "",

  "### Negative Powers",

  "A negative exponent means reciprocal.",

  "MATH:x⁻¹ = \\frac{1}{x}",

  "MATH:x⁻² = \\frac{1}{x²}",


  "",

  "### Behaviour of Power Functions",

  "As the exponent changes, the graph changes.",

  "Higher even powers become steeper.",

  "Higher odd powers also become steeper while keeping origin symmetry.",

  "",

  "### Applications",

  "Power functions appear in:",

  "• Geometry",

  "• Physics",

  "• Engineering",

  "• Economics",

  "• Biology",

  "",

  "### Common Mistakes",

  "Students often:",

  "• Confuse power functions with polynomial functions.",

  "• Forget negative exponents create fractions.",

  "• Forget square roots are fractional powers.",

  "",

  "### Memory Trick",

  "Even powers create U-shaped graphs.",

  "Odd powers create S-shaped graphs.",

  "",

  "### Big Picture",

  "Power functions are the building blocks of many other functions studied in calculus.",

  "",

  "EXAM TIP:",

  "Always determine whether the exponent is even, odd, negative or fractional before sketching the graph.",



  "### Polynomial Functions",

  "A polynomial function is a function made up of one or more power functions added or subtracted together.",

  "The general form is:",

  "f(x) = aₙxⁿ + aₙ₋₁xⁿ⁻¹ + ... + a₁x + a₀",

  "where:",

  "• n is a non-negative integer.",
  "• The coefficients (a) are real numbers.",
  "• The highest exponent determines the degree of the polynomial.",

  "",

  "[IMAGE]",

  "",

  "### Examples",

  "Examples of polynomial functions include:",

  "• y = x² + 3x + 2",

  "• y = 2x³ − 5x + 1",

  "• y = 4x⁴ − x² + 7",

  "• y = −3x⁵ + 2x³ − 8",

  "",

  "### Degree of a Polynomial",

  "The degree is the highest exponent of x.",

  "For example:",

  "MATH:y = 4x⁵ + 3x² − 6",

  "has degree 5.",

  "The degree tells us the overall shape of the graph.",

  "",

  "### Constant Term",

  "The constant term is the number without x.",

  "For example:",

  "MATH:y = 2x³ − 4x + 7",

  "The constant term is 7.",

  "It is also the y-intercept.",

  "",

  "### Leading Coefficient",

  "The leading coefficient is the coefficient of the highest power of x.",

  "For example:",

  "MATH:y = 5x⁴ − 3x² + 1",

  "The leading coefficient is 5.",

  "It determines how the graph behaves at large values of x.",

  "",

  "### Types of Polynomial Functions",

  "Degree 0 → Constant",

  "Degree 1 → Linear",

  "Degree 2 → Quadratic",

  "Degree 3 → Cubic",

  "Degree 4 → Quartic",

  "Degree 5 → Quintic",

  "",

  "### Domain",

  "The domain of every polynomial function is:",

  "All real numbers.",

  "",

  "### Range",

  "The range depends on the degree and shape of the polynomial.",

  "Some have all real numbers while others are restricted.",

  "",

  "### Graph Behaviour",

  "Polynomial graphs are smooth and continuous.",

  "They never contain breaks or gaps.",

  "They never have vertical asymptotes.",

  "",

  "### Turning Points",

  "Polynomials may have turning points.",

  "A polynomial of degree n has at most:",

  "n − 1 turning points.",

  "",

  "### End Behaviour",

  "The end behaviour depends on:",

  "• Degree",

  "• Leading coefficient",

  "For example:",

  "Even degree with positive leading coefficient:",

  "Both ends point upward.",

  "",

  "Odd degree with positive leading coefficient:",

  "Left end down, right end up.",

  "",

  "### Applications",

  "Polynomial functions are used in:",

  "• Engineering",

  "• Physics",

  "• Economics",

  "• Population modelling",

  "• Computer graphics",

  "",

  "### Common Mistakes",

  "Students often:",

  "• Confuse degree with the number of terms.",

  "• Forget that every exponent must be a whole number.",

  "• Forget that square roots are NOT polynomial terms.",

  "",

  "### Memory Trick",

  "The highest exponent tells the story.",

  "It determines the degree, end behaviour and maximum turning points.",

  "",

  "### Big Picture",

  "Polynomial functions are among the most important functions in calculus because they are easy to differentiate and integrate while modelling many real-world situations.",

  "",

  "EXAM TIP:",

  "When analysing a polynomial, always identify the degree and leading coefficient first. These immediately tell you the general shape of the graph.",



  "### Graph Behaviour of Power and Polynomial Functions",

  "Understanding the graph of a function is just as important as understanding its equation. In university mathematics, you are expected to analyse a graph before sketching it.",

  "",

  "### x-intercepts",

  "The x-intercepts are the points where the graph crosses the x-axis.",

  "They are found by setting:",

  "MATH:y = 0",

  "and solving for x.",

  "For example:",

  "MATH:x² − 4 = 0",

  "MATH:(x − 2)(x + 2) = 0",

  "x = −2 or x = 2",

  "",

  "### y-intercept",

  "The y-intercept is where the graph crosses the y-axis.",

  "It is found by substituting:",

  "x = 0",

  "",

  "For example:",

  "MATH:y = x³ − 4x + 5",

  "y = 5",

  "So the y-intercept is (0,5).",

  "",

  "### Multiplicity of Roots",

  "Some roots occur more than once.",

  "If a root has an even multiplicity, the graph touches the x-axis and turns around.",

  "If a root has an odd multiplicity, the graph crosses the x-axis.",

  "",

  "### Turning Points",

  "Turning points are where the graph changes direction.",

  "A polynomial of degree n has at most:",

  "n − 1 turning points.",

  "",

  "Examples:",

  "Quadratic → maximum 1 turning point.",

  "Cubic → maximum 2 turning points.",

  "Quartic → maximum 3 turning points.",

  "",

  "### Increasing and Decreasing Intervals",

  "A function is increasing when the graph rises from left to right.",

  "A function is decreasing when the graph falls from left to right.",

  "These intervals become especially important when studying derivatives.",

  "",

  "### End Behaviour",

  "End behaviour describes what happens as x becomes very large or very small.",

  "For even-degree polynomials:",

  "Positive leading coefficient → both ends up.",

  "Negative leading coefficient → both ends down.",

  "",

  "For odd-degree polynomials:",

  "Positive leading coefficient → left down, right up.",

  "Negative leading coefficient → left up, right down.",

  "",

  "### Smooth Curves",

  "Polynomial graphs are always smooth.",

  "They do not have:",

  "• Sharp corners.",

  "• Breaks.",

  "• Vertical asymptotes.",

  "• Gaps.",

  "",

  "### Sketching Strategy",

  "When sketching a polynomial graph, follow these steps:",

  "1. Determine the degree.",

  "2. Determine the leading coefficient.",

  "3. Find the x-intercepts.",

  "4. Find the y-intercept.",

  "5. Determine the end behaviour.",

  "6. Sketch a smooth curve through the intercepts while following the correct end behaviour.",

  "",

  "### Comparing Power and Polynomial Functions",

  "Power Functions:",

  "• Contain only one term.",

  "• Have one exponent.",

  "• Usually produce simple graph shapes.",

  "",



  "Polynomial Functions:",

  "• Contain several terms.",

  "• May have multiple turning points.",

  "• Produce more complex graphs.",

  "",

  "### Applications",

  "Power and polynomial functions are used in:",

  "• Projectile motion",

  "• Population growth models",

  "• Engineering design",

  "• Computer graphics",

  "• Economics",

  "• Physics",

  "",

  "### Common Mistakes",

  "Students often:",

  "• Forget to calculate the y-intercept.",

  "• Draw graphs with sharp corners.",

  "• Ignore the end behaviour.",

  "• Misidentify turning points.",

  "• Forget that repeated roots behave differently.",

  "",

  "### Memory Trick",

  "Always remember:",

  "Intercepts tell you WHERE the graph goes.",

  "Degree tells you HOW the graph behaves.",

  "Leading coefficient tells you WHICH WAY the graph finishes.",

  "",

  "### Big Picture",

  "Power and polynomial functions form the foundation of differential calculus. Nearly every differentiation technique introduced later in WTW134 begins with analysing these functions and their graphs.",

  "",

  "EXAM TIP:",

  "Before sketching any polynomial, write down its degree, leading coefficient, x-intercepts and y-intercept first. Doing this correctly earns easy marks before drawing the graph.",

],
);
}
}