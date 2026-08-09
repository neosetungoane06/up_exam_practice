import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class BasicDifferentiationRulesScreen extends StatelessWidget {
const BasicDifferentiationRulesScreen({super.key});

@override
Widget build(BuildContext context) {
return const MathNotesScreen(
title: "Basic Differentiation Rules",

location: StudyLocation(
module: "WTW134",
topic: "Theme 2 Differentiation",
subtopic: "Basic Differentiation Rules",
),

images: [

"assets/modules/wtw134/theme2/differentiation_rules_summary.png",
  "assets/modules/wtw134/theme2/power_rule_graph.png",
  "assets/modules/wtw134/theme2/product_rule_rectangle.png",
  "assets/modules/wtw134/theme2/quotient_rule_memory.png",
  "assets/modules/wtw134/theme2/tangent_line_definition.png",
  "assets/modules/wtw134/theme2/sign_chart_increasing_decreasing.png",


],

notes: [

"## Differentiation Formulas and Rules",

"Differentiation is one of the most important topics in first-year calculus. It allows us to determine how quickly one quantity changes with respect to another, calculate the slope of graphs, analyse motion, solve optimisation problems and study the behaviour of functions.",

"",

"### What is a Derivative?",

  "",
  "### Recognition Box",
  "",
  "Before differentiating any expression, first identify what type of function you are looking at.",
  "",
  "Use this checklist:",
  "",
  "• Only powers of x",
  "MATH:x^n",
  "→ Power Rule",

  "• Constants only",
  "→ Constant Rule",

  "MATH:e^x",
  "→ Exponential Rule",

  "MATH:a^x",
  "→ General Exponential Rule",

  "MATH:\ln(x)",
  "→ Natural Log Rule",

  "MATH:\sin(x) \\text{ or } \cos(x)",
  "→ Trigonometric Rules",

  "• Addition or subtraction",
  "→ Sum / Difference Rule",

  "• Multiplication of functions",
  "→ Product Rule",

  "• Division of functions",
  "→ Quotient Rule",

  "",


  "EXAM TIP:",
  "Always identify the rule before writing anything. Students who recognise the correct rule immediately solve differentiation questions much faster and make fewer mistakes.",
  "",

"The derivative of a function at a particular point represents the instantaneous rate of change of the function at that point. Geometrically, the derivative is the slope of the tangent line drawn to the graph at that point.",

"",

  "The derivative may be written using several different, interchangeable notations:",

  r"MATH:f'(x)=\frac{dy}{dx}=\frac{d}{dx}f(x)=Dy",

  "",

  "All of these notations mean exactly the same thing, and you should become comfortable recognising each one.",

  r"MATH:\frac{d}{dx}",

  "notation is called the differentiation operator — it is an operator, not an ordinary fraction, so you should never cancel pieces of it as though it were algebra.",
"",

"### Why do we use differentiation?",

"Differentiation allows us to:",

"• Find the slope of a graph.",
"• Determine the equation of a tangent.",
"• Calculate rates of change.",
"• Identify increasing and decreasing intervals.",
"• Locate turning points.",
"• Solve optimisation problems.",
"• Model scientific and economic systems.",

"",
"[IMAGE]",

"### Important Note",

"In WTW134 you are generally not expected to derive every differentiation formula from first principles during examinations. Instead, you are expected to recognise the correct formula immediately and apply it accurately. Understanding where a rule comes from, however, helps prevent memorisation errors and develops mathematical intuition — which is exactly what the next example does.",

"",

"### Example: The Power Rule Explained",

r"Consider the function",
r"MATH:f(x)=\frac{1}{x}=x^{-1}.",
r" Using the limit definition of the derivative gives",

  r"MATH:f'(x)=\lim_{h\to0}\frac{\frac1{x+h}-\frac1x}{h}",
"After simplifying the algebra, the result becomes",
r"MATH:f'(x)=-\frac1{x^2}",

"",

r"Notice something important: this is exactly what the Power Rule predicts when the exponent is -1. This shows that ",
r"MATH:\frac{d}{dx}\left(\frac1x\right)",
r"is not a completely separate formula — it is simply another application of the general Power Rule.",

"",

"### The Power Rule",

r"MATH:\frac{d}{dx}[x^n]=nx^{\,n-1}",

"This formula works for every real exponent n, including:",

"• Positive integers",
"• Zero",
"• Negative integers",
"• Fractions",
"• Decimal exponents (where defined)",

"",

"### Very Important Distinction",

"Students often confuse the Power Rule with the definition of a polynomial. The Power Rule applies to any real exponent, but a polynomial only allows non-negative integer exponents.",

"",



  r"For example, ",
r"MATH:x^{1/2}+x^3",
r"can be differentiated using the Power Rule — but it is NOT a polynomial, because one of its exponents is not a non-negative integer.",


  "### The Seven Core Differentiation Formulas",

"These are the fundamental differentiation formulas that you must know before solving more advanced problems.",

"",

"### 1. Constant Rule",

"The derivative of any constant is always zero.",
r"MATH:\frac{d}{dx}[k]=0,\qquad k\in\mathbb{R}",
"A constant graph is a horizontal line, and every horizontal line has a slope of zero.",

"",

r"Example:",
  r"MATH:\frac{d}{dx}[8]=0 \quad\text{and}\quad \frac{d}{dx}[-15]=0",

"",

"### 2. Power Rule",

r"MATH:\frac{d}{dx}[x^n]=nx^{\,n-1}",

"This is the most frequently used differentiation formula in calculus. It works for positive, negative and fractional exponents, provided the function is defined.",

"",

"Examples:",
r"MATH:\frac{d}{dx}[x^3]=3x^2",
r"MATH:\frac{d}{dx}[x^{-2}]=-2x^{-3}=-\frac2{x^3}",
r"MATH:\frac{d}{dx}[\sqrt{x}]=\frac{d}{dx}[x^{1/2}]=\frac12x^{-1/2}=\frac1{2\sqrt{x}}",

  r"MATH:\frac{d}{dx}[x^7]=7x^6",
  "",
  r"MATH:\frac{d}{dx}[x^{-5}]=-5x^{-6}=-\frac5{x^6}",
  "",
  r"MATH:\frac{d}{dx}[x^{1/3}]=\frac13x^{-2/3}",
  "",

"",
"[IMAGE]",


  "### Domain Reminder",

"Always consider where the original function exists. Negative exponents exclude x = 0. Fractional exponents may require x > 0 depending on the expression.",

"",


  "### 3. Exponential Rule",

r"The exponential function ",
r"MATH:e^x",
r"is unique because its derivative is exactly the same as the original function.",

  r"MATH:\frac{d}{dx}[e^x]=e^x",

"",

r"Example: "
r"MATH:\\frac{d}{dx}[5e^x]=5e^x",

"",

"### Why is this special?",

"No other elementary function has this property. This is why exponential functions appear naturally in population growth, radioactive decay, finance and many scientific models.",

"",

"### 4. General Exponential Rule",

  "",
  "### Calculator Tip",
  "",
  "Scientific calculators evaluate exponential functions very quickly.",
  "",
  "Example:",
  r"To evaluate: ",
  r"MATH:3^{2.7}",
  "",

  "Use:",
  "SHIFT + LN",
  "",
  "or rewrite it as",
  r"MATH:e^{2.7\ln3}",
  "",
  "Learning to evaluate these efficiently saves valuable examination time.",
  "",

"For any positive base a:",
r"MATH:\frac{d}{dx}[a^x]=(\ln a)a^x,\qquad a>0",

"",

r"Notice that an additional factor of",
    "MATH:ln(a)",
  "always appears.",

"",

r"Example: ",
r"MATH:\frac{d}{dx}[3^x]=(\ln3)3^x",

"",

r"Sanity check: if ",
r"MATH:a=e",
r" then ",
r"MATH:\ln(e)=1",
r" which gives",
r"MATH:\frac{d}{dx}[e^x]=e^x",
r"— exactly as expected.",

"",

"### Common Mistake",

  "",
  "### EXAM PITFALL",
  "",
  "Students frequently confuse the following derivatives:",
  "",

  "Correct:",
  r"MATH:\frac{d}{dx}[e^x]=e^x",
  "",
  r"MATH:\frac{d}{dx}[a^x]=(\ln a)a^x",
  "",

  "Wrong:",
  r"MATH:\frac{d}{dx}[3^x]=3^x",
  "",
  "This answer loses marks because every exponential function with a base other than e must include the factor ln(a).",
  "",
  "Always ask yourself:",
  "",
  "• Is the base e?",
  "• Or is it another number?",
  "",


  r"Students often forget the",
  r"MATH:\ln(a)",
  r"factor when differentiating ",
  r"MATH:a^x.",
  r"•Always ask yourself: is the base",
  r"MATH:e",
  r", or is it another number?",

"",

"### 5. Natural Logarithm Rule",

r"MATH:\frac{d}{dx}[\ln x]=\frac1x,\qquad x>0",

"",

r"Remember that",
  "MATH:ln x",
  "is only defined for positive values of x.",

"",

r"Example: ",
r"MATH:\frac{d}{dx}[5\ln x]=\frac5x",

"",

"### 6. Sine Rule",

r"MATH:\frac{d}{dx}[\sin x]=\cos x",

"",

r"Example: ",
r"MATH:\frac{d}{dx}[7\sin x]=7\cos x",

"",

"### 7. Cosine Rule",

r"MATH:\frac{d}{dx}[\cos x]=-\sin x",

"",

"Notice the negative sign. This is one of the most common mistakes students make in tests and examinations.",

"",

r"Example: ",
r"MATH:\frac{d}{dx}[4\cos x]=-4\sin x",

"",

"### Exam Tip",

"Before attempting any differentiation question, first identify whether the function matches one of these seven formulas. Correctly recognising the function is often the most important step in obtaining the correct derivative.",

"### The Five Differentiation Rules",

"Many functions are combinations of simpler functions. The five differentiation rules allow us to differentiate these combinations correctly.",

"",

"### 1. Constant Multiple Rule",

r"MATH:\frac{d}{dx}[cf(x)]=cf'(x)",
"A constant can be kept outside while differentiating the rest of the function.",

"",

r"Example: ",
r"MATH:\frac{d}{dx}[7x^4]=7\left(\frac{d}{dx}[x^4]\right)=7(4x^3)=28x^3",

"",

"Memory tip: \"keep the constant, differentiate the function.\"",

"",

"### 2. Sum Rule",

r"MATH:\frac{d}{dx}[f(x)+g(x)]=f'(x)+g'(x)",
"Differentiate each term separately and keep the plus sign.",

"",

r"Example: "
r"MATH:\\frac{d}{dx}[x^3+e^x]=3x^2+e^x",

"",

"### 3. Difference Rule",

r"MATH:\frac{d}{dx}[f(x)-g(x)]=f'(x)-g'(x)",
"Differentiate each term separately and keep the minus sign.",

"",

r"Example: ",
r"MATH:\frac{d}{dx}[x^4-\ln x]=4x^3-\frac1x",

"",

"### 4. Product Rule",

"When two functions are multiplied together, you CANNOT differentiate each one separately — instead, use the Product Rule.",

"",

r"MATH:\frac{d}{dx}[f(x)g(x)]=f'(x)g(x)+f(x)g'(x)",

"",

"Notice there are TWO terms in the answer. Each function is differentiated once while the other remains unchanged.",

"",

"Worked Example:",
r"MATH:f(x)=x^3\cos x",
r"Differentiate each part: ",
r"MATH:\frac{d}{dx}[x^3]=3x^2 ",
r"and",
r"MATH:\frac{d}{dx}[\cos x]=-\sin x ",

r"Apply the Product Rule:",
  r"MATH:f'(x)=3x^2\cos x+x^3(-\sin x)=3x^2\cos x-x^3\sin x",

"",

  "",
  "### How Marks Are Awarded",
  "",
  "\"Example:\"",
  r"Differentiate ",
  "MATH:\\frac{x^3}{cos x}",

  "",
  "Typical marking scheme:",
  "",
  "• 1 mark — recognising the Product Rule",
  "• 1 mark — differentiating x³ correctly",
  "• 1 mark — differentiating cos(x) correctly",
  "• 1 mark — correct final expression",
  "",
  "Never skip steps during tests. Even if the final answer is incorrect, correct working often earns partial marks.",
  "",

"### Rectangle Interpretation",

r"Imagine the product",
r"MATH:f(x)g(x)",
r" as the area of a rectangle. If both sides change slightly, both contribute to the change in area — that is why the derivative contains TWO terms rather than one.",

"",

"### Common Mistake",

r"Students sometimes write",
r"MATH:f'(x)g'(x)",
r" This is incorrect — always differentiate ONE function at a time while leaving the other unchanged.",

"",
"[IMAGE]",

"### 5. Quotient Rule",

"When one function is divided by another, use the Quotient Rule.",

"",

r"MATH:\frac{d}{dx}\left(\frac{f(x)}{g(x)}\right)=\frac{f'(x)g(x)-f(x)g'(x)}{[g(x)]^2}",

"",

"Notice the denominator is ALWAYS squared.",

"",

  "Worked Example:",

  "MATH:f(x)=\\frac{2-e^x}{3x+\\sin x}",

  "Let",

  "MATH:u=2-e^x,\\quad u'=-e^x",

  "and let",

  "MATH:v=3x+\\sin x,\\quad v'=3+\\cos x",

  "Substitute into the Quotient Rule:",

  "MATH:f'(x)=\\frac{(-e^x)(3x+\\sin x)-(2-e^x)(3+\\cos x)}{(3x+\\sin x)^2}",

"",

"Notice that nothing has been simplified. This is exactly how many examination questions expect the answer to be left.",

"",

"Quotient Rule memory trick: \"low·d-high minus high·d-low, over low squared\" — low = denominator, high = numerator.",

"",
"[IMAGE]",



  "### Exam Tip",

"If the lecturer specifically says \"do not simplify your answer,\" leave the expression exactly as it comes from the Product Rule or Quotient Rule. Examiners often award marks for applying the rule correctly rather than for algebraic simplification.",

"### Choosing the Right Rule",

"When you see an unfamiliar expression, work through these questions in order:",

"",

"1. Is it just a number? → Constant Rule.",
"2. Is it x raised to a power, with any real exponent? → Power Rule.",
  "3. Is any of the following on its own?",

  r"MATH:e^x,\quad a^x,\quad \ln x,\quad \sin x,\quad \cos x",

  "→ the matching core formula.","4. Is a constant multiplying the whole thing? → pull it out, then look at what remains.",
"5. Are terms joined by + or −? → differentiate each term separately.",
"6. Are two functions multiplied together, with no clean way to split them by addition? → Product Rule.",
"7. Is one function divided by another? → Quotient Rule.",

"",

  r"A habit that prevents mistakes: before differentiating, rewrite roots and reciprocals as powers (e.g.",
  "MATH:\\sqrt{x}\to x^{1/2}, \frac{1}{x^3}\to x^{-3}",
  ")",
  "— it makes the correct rule much easier to spot.",

"### Fully Worked Combined Examples",

"These combine several formulas and rules in one problem — this is the difficulty level a real test uses, so make sure you can reproduce every step below without help.",

"",

r"MATH:f(x) = \sqrt{x} + \frac{1}{x^2} + x^3 + 7",
r"Rewrite as ",
r"MATH:f(x)=x^{1/2}+x^{-2}+x^3+7",",",
r" then differentiate term by term:",
r"MATH:f'(x) = \frac{1}{2\sqrt{x}} - \frac{2}{x^3} + 3x^2",

"",

r"MATH:g(x) = x^5+5x+5e^x+5\ln x",
r"MATH:g'(x) = 5x^4+5+5e^x+\frac{5}{x}",

"",
  "Find",
  "MATH:f'(\\pi)",
  "for",
  "MATH:f(z)=\\frac{8}{\\cos z}-\\frac{2}{\\sin z}",
  ":",

  "MATH:f'(z)=-8\\sin z-2\\cos z\\;\\Rightarrow\\;f'(\\pi)=-8(0)-2(-1)=2",

"",

"Preview — a Product Rule wrapped around a piece you will fully justify once you cover the Chain Rule in Unit 2.2:",
  "MATH:h(x)=x^4\\ln(6x+1)",
  "MATH:h'(x)=4x^3\\ln(6x+1)+x^4\\cdot\\frac{6}{6x+1}",

  "### Application: Tangent Lines",

  "One of the most important applications of differentiation is finding the slope of a tangent line — the derivative evaluated at a specific point gives the slope of the tangent line at that point.",

  "",

  "Example: for",

  "MATH:f(z)=z^4",

  "the derivative is",

  "MATH:f'(z)=4z^3",

  "Evaluating at z=-2 gives",

  "MATH:f'(-2)=4(-2)^3=4(-8)=-32",

  "— the slope of the tangent line is -32.",

"",

"### Horizontal Tangents",

r"A horizontal tangent has a slope of zero, so we solve f'(x)=0.",

"",

r"Example: for ",
r"MATH:p(x)=9x+3x^2-x^3",
r" ,the derivative is",
r"MATH:p'(x)=9+6x-3x^2",

r"Setting this equal to zero:",
r"MATH:9+6x-3x^2=0 \;\Rightarrow\; x^2-2x-3=0 \;\Rightarrow\; x=3,\ x=-1",
r"The graph has horizontal tangents at x=-1 and x=3.",

"### Increasing and Decreasing Functions",

r"The sign of the derivative tells us whether a function is increasing or decreasing: if f'(x)>0 the function is increasing, and if f'(x)<0 the function is decreasing.",

"",

"### Five-Step Number Line Method",

"1. Determine the domain of the function.",
"2. Differentiate the function.",
"3. Factorise the derivative completely.",
"4. Mark all critical numbers on a number line.",
"5. Test one value in every interval to determine the sign of the derivative.",

"",

"### Example with a Repeated Root",

r"MATH:f(x)=x^4-2x^3+1",
r"Differentiate:",
  "MATH:f'(x)=4x^3-6x^2=2x^2(2x-3)",
  ".",
  "Critical numbers: x=0 and",
  "MATH:x=\\frac{3}{2}",
  ".",

"",

r'''
        (–)         (–)         (+)
◄────────────●────────────●────────────►
             0           3/2
''',

"",

r"Testing:",
  r"MATH:f'(-1)=2(1)(-5)=-10<0,\quad f'(1)=2(1)(-1)=-2<0,\quad f'(2)=2(4)(1)=8>0.",
"",

r"So f is decreasing on",
r"MATH:(-\infty,\frac32)",

r" and increasing on ",
r"MATH:(\frac32,\infty)",

"",

r"Notice that x=0 is a repeated (double) root — the derivative touches zero there but does not change sign, so it does NOT split the increasing/decreasing intervals on its own. Always check the sign on both sides of a zero; do not just count zeros.",

"",


"### Example with Three Critical Numbers",

r"MATH:f(t)=2t^4-t^2",
  r"Differentiate: ",
  r"MATH:f'(t)=8t^3-2t=2t(2t-1)(2t+1)",
  ". Critical numbers:",
  r"MATH:t=-\frac{1}{2},\ 0,\ \frac{1}{2}.",

"",

r'''
  (–)    (+)      (–)      (+)
◄─────●────────●────────●────────►
    -1/2       0       1/2
''',

"",

  r"Testing: ",
  r"MATH:f'(-1)=-6<0,\ f'(-0.25)=0.375>0,\ f'(0.25)=-0.375<0,\ f'(1)=6>0.",

  "",

  r"So f is increasing on ",
  r"MATH:\left(-\frac{1}{2},0\right)\cup\left(\frac{1}{2},\infty\right)",
  r"and decreasing on",
  r"MATH:\left(-\infty,-\frac{1}{2}\right)\cup\left(0,\frac{1}{2}\right).",

"### Common Differentiation Mistakes",

"1. Forgetting to reduce the exponent by one in the Power Rule.",
"2. Forgetting the negative sign when differentiating cosine.",
  "MATH:3.\\ Treating\\ \\frac{1}{x}\\ as\\ a\\ special\\ case\\ instead\\ of\\ writing\\ x^{-1}.",
  "4. Using the Product Rule when the Sum Rule should be used, or vice versa.",
"5. Forgetting one term when differentiating long expressions.",
r"6. Forgetting the ",
r"MATH:\ln(a)",
r" factor when differentiating",
r"MATH:a^x.",
"7. Reversing the numerator order in the Quotient Rule.",
"8. Simplifying when the question specifically says not to simplify.",
"9. Assuming every zero of the derivative changes sign — always check both sides.",
r"10. Ignoring domain restrictions, such as ",
r"MATH:\ln(x)",
r" requiring x>0.",

  "",
  "### How to Know You Used the Wrong Rule",
  "",
  "If your answer does not look reasonable, check these clues:",
  "",
  "• Two terms in the answer usually indicate the Product Rule.",
  "",
  "• A denominator squared usually indicates the Quotient Rule.",
  "",
  "• Every term differentiated separately usually indicates the Sum or Difference Rule.",
  "",
  "• If an exponential function has base a (not e), your answer should contain ln(a).",
  "",
  "• If differentiating cosine, check that the negative sign is present.",
  "",
  "Learning to recognise these patterns helps you detect mistakes before submitting your paper.",
  "",

"",
  "",
  "### One-Minute Revision",
  "",
  "•Constant Rule",
  r"MATH:\frac{d}{dx}[k]=0",
  "",

  "•Power Rule",
  r"MATH:\frac{d}{dx}[x^n]=nx^{n-1}",
  "",

  "•Product Rule",
  r"MATH:u'v+uv'",
  "",

  "•Quotient Rule",
  r"MATH:\frac{u'v-uv'}{v^2}",
  "",

  "•Exponential Rule",
  r"MATH:\frac{d}{dx}[e^x]=e^x",
  "",

  "•Natural Log Rule",
  r"MATH:\frac{d}{dx}[\ln x]=\frac1x",
  "",
  "Spend one minute reviewing these before every differentiation exercise.",
  "",


"### Practice Questions",

"Differentiate the following:",

"",

r"1. ",
r"MATH:4e^x-3\ln(x)",

  r"2.",
  r"MATH: 2^t+t^4",

  r"3.",
  r"MATH:\sin(x)+\cos(x)",

  r"4.",
  r"MATH:\frac{x^2}{\sin(x)}",

  r"5.",
  r"MATH:\frac{\ln(x)}{x}",

  r"6.",
  r"MATH:\frac{e^x}{\cos(x)}",
  r"7.",
  r"MATH:\frac{x^2+1}{x-3}",

"",

"Application Questions:",
r"8. Find the slope of the tangent to ",
r"MATH:f(x)=2x^3-x",
  "at x=2.",

  r"9. Find all x values where ",
  r"MATH:f(x)=x^3-3x",
  r" has a horizontal tangent.",

  r"10. Determine the intervals where",
  r"MATH:f(x)=x^3-3x",
  "is increasing and decreasing.",

"",

"### Answers",

  "1.",
  "MATH:4e^x-\\frac{3}{x}",

  "2.",
  "MATH:(\\ln 2)2^t+4t^3",

  "3.",
  "MATH:\\cos x-\\sin x",

  "4.",
  "MATH:2x\\sin x+x^2\\cos x",

  "5.",
  "MATH:\\frac{1-\\ln x}{x^2}",

  "6.",
  "MATH:e^x(\\cos x-\\sin x)",

  "7.",
  "MATH:\\frac{x^2-6x-1}{(x-3)^2}",

  "8.",
  "MATH:f'(x)=6x^2-1\\Rightarrow f'(2)=23",

  "9.",
  "MATH:f'(x)=3(x-1)(x+1)\\Rightarrow x=1,\\ x=-1",

  "10. Same f' as Q9 — increasing on",

  "MATH:(-\\infty,-1)\\cup(1,\\infty)",

  "decreasing on (-1,1). This pairing is exactly how tangent-line and monotonicity questions connect on a real test.",
"### Mastery Checklist",

"You have mastered this unit if you can:",

"",

"✓ Apply all seven differentiation formulas correctly.",
"✓ Apply all five differentiation rules confidently.",
"✓ Choose the correct rule immediately after seeing a function.",
"✓ Differentiate products and quotients without confusing the formulas.",
"✓ Solve a fully combined, multi-formula problem, not just single-rule questions.",
"✓ Find tangent slopes and horizontal tangents.",
"✓ Determine increasing and decreasing intervals using the Number Line Method, including handling a repeated root correctly.",
"✓ Avoid the common examination mistakes listed above.",

],
);
}
}

