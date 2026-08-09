import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';

const String topicTitle = "Function Composition";

const List<String> notes = [

  "### Function Composition",

  "Function composition means taking the output of one function and using it as the input of another function.",

  "In simple words, one function is performed first and its answer becomes the input of the next function.",

  "This is one of the most important concepts in WTW134 because it appears frequently in tests and exams.",

  "",

  "### Think About It",

  "Imagine you first wash a car and then polish it.",

  "You cannot polish the car before washing it.",

  "The first process must happen before the second.",

  "Functions work exactly the same way.",

  "",

  "[IMAGE]",

  "",

  "### Composite Functions",

  "If",

  "f(x) = first function",

  "and",

  "g(x) = second function",

  "then we can combine them into one new function.",

  "This new function is called a composite function.",

  "",

  "### Mathematical Notation",

  "The notation is",

  "MATH:(f ∘ g)(x)",

  "This is read as",

  "'f composed with g'.",

  "It DOES NOT mean multiplication.",

  "The small circle (∘) is called the composition symbol.",

  "",

  "EXAM TIP:",

  "The composition symbol (∘) NEVER means multiply.",

  "It only means that one function is performed after another.",

  "",

  "### Which Function Comes First?",

  "This is where most students lose marks.",

  "In",

  "MATH:(f ∘ g)(x)",

  "the function closest to x is ALWAYS performed first.",

  "So",

  "g(x) happens first.",

  "The answer from g(x) is then substituted into f(x).",

  "",

  "[IMAGE]",

  "",

  "### Memory Rule",

  "Always read compositions from RIGHT to LEFT.",

  "Look at the function touching x first.",

  "That function is always calculated first.",

  "",

  "Example:",

  "MATH:(f ∘ g)(x)",

  "•Step 1",

  "Calculate g(x).",

  "•Step 2",

  "Substitute that answer into f(x).",

  "",

  "### Think of Two Machines",

  "Imagine two machines connected together.",

  "The first machine is Machine G.",

  "It receives the number first.",

  "It changes the number and sends the answer to Machine F.",

  "Machine F then performs another operation.",

  "The final answer comes out after BOTH machines have finished.",

  "",

  "[IMAGE]",

  "",

  "### Example 1",

  "Suppose",

  "MATH:g(x)=x+4",

  "and",

  "MATH:f(x)=3x",


  "-We want to find",

  "MATH:(f ∘ g)(x).",

  "",


  "•Step 1",

  "Calculate g(x).",

  "MATH:g(x)=x+4",

  "",


  "•Step 2",

  "Replace x inside f(x) with (x+4).",


  "Since",

  "MATH:f(x)=3x",

  "we obtain",

  "MATH:f(g(x))",

  "MATH:=3(x+4)",

  "MATH:=3x+12",

  "",

  "Therefore",

  "MATH:(f ∘ g)(x)=3x+12",

  "",

  "Notice that we NEVER calculate f(x) first.",

  "The inside function always happens first.",

  "",

  "EXAM TIP:",

  "As soon as you see a composition question, ask yourself:",

  "'Which function is touching x?'",

  "That function is always performed first.",


  "### Example 2",

  "Suppose",

  "MATH:f(x)=x^2",

  "and",

  "MATH:g(x)=2x+1",


  "-Find",

  "MATH:(f ∘ g)(x).",

  "",


  "•Step 1",

  "Calculate g(x).",

  "MATH:g(x)=2x+1",

  "",


  "•Step 2",

  "Substitute (2x+1) into f(x).",


  "Since",

  "MATH:f(x)=x^2",

  "we obtain",

  "MATH:f(g(x))",

  "MATH:=(2x+1)^2",

  "MATH:=4x^2+4x+1",

  "",

  "Therefore",

  "MATH:(f ∘ g)(x)=4x^(2)+4x+1",

  "",

  "[IMAGE]",

  "",


  "### Example 3",

  "Now reverse the order.",

  "-Find",

  "MATH:(g ∘ f)(x).",

  "",


  "•Step 1",

  "Calculate f(x).",

  "MATH:f(x)=x^2",

  "",


  "•Step 2",

  " Substitute  x²  into  g(x).",


  "Since",

  "MATH:g(x)=2x+1",

  "we obtain",


  "MATH:g(f(x))",

  "MATH:=2(x^2)+1",

  "MATH:=2x^2+1",

  "",

  "Therefore",

  "MATH:(g ∘ f)(x)=2x^2+1",

  "",

  "Notice something important.",

  "MATH:(f ∘ g)(x)=4x^2+4x+1",

  "",

  "but",

  "MATH:(g ∘ f)(x)=2x^2+1",

  "",

  "They are NOT the same.",

  "",

  "[IMAGE]",

  "",

  "### Important Rule",

  "In general",

  "MATH:(f ∘ g)(x) ≠ (g ∘ f)(x)",

  "",

  "The order of composition matters.",

  "Changing the order usually changes the answer.",

  "",

  "### Composition Using Function Machines",

  "Think again about the machines.",

  "If you enter Machine G first and then Machine F, you get one answer.",

  "If you enter Machine F first and then Machine G, you usually get a completely different answer.",

  "",

  "[IMAGE]",

  "",

  "### Domain of Composite Functions",

  "The composite function only exists where BOTH functions are defined.",

  "You must check:",

  "1. The inside function is defined.",

  "2. The output of the inside function is allowed inside the outside function.",

  "",

  "Example",

  "Suppose",

  "MATH:f(x)=\\sqrt{x}",

  "MATH:g(x)=x−5",

  "",

  "Then",

  "MATH:(f ∘ g)(x)=\\sqrt{x-5}",

  "",

  "Since the square root cannot be negative,",

  "MATH:x−5 ≥ 0",

  "MATH:x ≥ 5",

  "",

  "So the domain is",

  "MATH:x ≥ 5",

  "",

  "[IMAGE]",

  "",

  "### How to Solve Any Composition Question",

  "•Step 1",

  "Identify the function touching x.",

  "",

  "•Step 2",

  "Calculate that function first.",

  "",

  "•Step 3",

  "Substitute the answer into the second function.",

  "",

  "•Step 4",

  "Simplify completely.",

  "",

  "•Step 5",

  "Check the domain if required.",

  "",

  "### Common Mistakes",

  "❌ Performing the outside function first.",

  "❌ Treating ∘ as multiplication.",

  "❌ Forgetting to substitute the ENTIRE expression into the second function.",

  "❌ Forgetting to expand brackets.",

  "❌ Forgetting domain restrictions.",

  "",

  "EXAM TIP:",

  "Whenever you see",

  "MATH:(f ∘ g)(x)",

  "draw a small arrow above it pointing from g to f.",

  "This immediately reminds you to work from RIGHT to LEFT.",

  "",

  "### Summary",

  "Function composition means one function is performed after another.",

  "The function closest to x always happens first.",

  "The answer is substituted into the second function.",

  "The order of composition matters.",

  "(f ∘ g)(x) is usually NOT equal to (g ∘ f)(x).",

  "Always substitute carefully and simplify your final answer.",

];

const List<String> images = [
  "assets/modules/wtw134/functions_and_their_graphs/composition_overview.png",
  "assets/modules/wtw134/functions_and_their_graphs/right_to_left.png",
  "assets/modules/wtw134/functions_and_their_graphs/function_machines.png",
  "assets/modules/wtw134/functions_and_their_graphs/composition_machines_order.png",

  "assets/modules/wtw134/functions_and_their_graphs/composition_example_square.png",

  "assets/modules/wtw134/functions_and_their_graphs/composition_order_difference.png",

  "assets/modules/wtw134/functions_and_their_graphs/composition_machines_order.png",

  "assets/modules/wtw134/functions_and_their_graphs/composition_domain_sqrt.png",
];


class FunctionCompositionScreen extends StatelessWidget {
  const FunctionCompositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MathNotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
    );
  }
}