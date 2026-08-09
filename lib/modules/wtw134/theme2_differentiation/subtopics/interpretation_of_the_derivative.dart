import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class InterpretationsOfTheDerivativeScreen extends StatelessWidget {
const InterpretationsOfTheDerivativeScreen({super.key});

@override
Widget build(BuildContext context) {
return const MathNotesScreen(
title: "Interpretations of the Derivative",

location: StudyLocation(
module: "WTW134",
topic: "Theme 2 Differentiation",
subtopic: "Interpretations of the Derivative",
),

images: [
"assets/modules/wtw134/theme2/flat_vector_illustration.png",
],

notes: [
  "## Interpretations of the Derivative",

  "This unit has no algebra shortcuts to hide behind. Units 2.1 and 2.2 tested whether you could compute a derivative — this unit tests whether you actually understand what the number means. It is the unit where students who only memorised formulas lose the easiest marks on the paper, so read it slower than the others.",

  "",

  "### Notation",

  r"MATH:f'(x) = \frac{dy}{dx} = \frac{d}{dx}y = \frac{d}{dx}f(x) = Df(x) = y'",

  "",

  r"The derivative at a specific point a is written",
  "MATH:\left.\dfrac{dy}{dx}\right|_{x=a} = f'(a).",


      "### The One Principle This Whole Unit Is Built On",

  "Two facts, and every question in this unit reduces to one or both of them:",

  "",

  r"1. Units — the units of",
  "MATH:f'(x)=\dfrac{dy}{dx}",
  "are (units of y) per (units of x).",

  r"2. Meaning — if the derivative does not change much near a point,",
  "MATH:\dfrac{dy}{dx}\approx\dfrac{\Delta y}{\Delta x}\approx\Delta y",
  "when",
  "MATH:\Delta x=1.",
  "In words: increasing x by one unit changes y by approximately f'(x) units. The sign of f' tells you the direction.",


  "### Worked Example — Units and Interpretation",

  r"MATH:N=f(h) = number of fish species at depth $h$ metres below the surface.",

  "",

  r":f(2)=15: at a depth of 2 metres, there are 15 species of fish.",

  "",

  r"Units of f'(2): species per metre.",

  "",

  r'''f'(2)=-4: "at a depth of 2 metres, the number of fish species is decreasing at a rate of 4 species per metre. If depth increases from 2 m to 3 m, the number of species drops by approximately 4."''',

  "",

  "Notice the structure of that last answer: state the quantity, its value, the direction of change, and the rate — in that exact order, with units. That is the structure examiners are marking for.",

  "### Tangent Line Approximation",

  r"Given a point (a,f(a)) and the derivative f'(a) there — even without knowing the formula for f — you can estimate nearby function values:",

  r"MATH:$$f(x) \approx f(a) + f'(a)(x-a)$$",

  "",

  r"This is exact at", "MATH:x=a","and gets less accurate the further","MATH:x","is from", "MATH:a",". The tangent line only hugs the curve near the point of tangency — further away, curvature pulls the true graph away from the straight line.",

  "",

  "### Seeing the Approximation Error Grow — A Concrete Check",

  "[IMAGE]",

  r"Take","MATH:f(x)=x^2","at","a=2: f(2)=4 and f'(2)=4, so the tangent line is L(x)=4+4(x-2).",

  "",

  r"Close to","a: L(2.1)=4+4(0.1)=4.4. The actual value is f(2.1)=2.1²=4.41 — an error of only 0.01.",
  "",

  r"Further from","a: L(3)=4+4(1)=8. The actual value is","MATH:f(3)=3^2=9","— an error of 1, a hundred times larger.",

  "",

  "This is exactly what your lecturer's graph of \"exact value vs estimation\" is showing: the tangent line and the true curve start together at a, then peel apart — slowly at first, faster as you move away. Always sanity-check how far your estimate point is from a before trusting the approximation.",

  "### Worked Example — Estimation",

  r"N=f(w): thousands of items produced per day by","MATH:w","hundred workers. Given f'(25)=15, f(25)=160.",

  "",

  r"Units of f'(25): thousands of items per day, per hundred workers.",

  "",

  "Interpretation: \"at 2500 workers, hiring 100 more workers increases daily production by approximately 15,000 items.\"",

  "",

  r"Estimate production at 2000 workers ($w=20$):",
  r"MATH:$$f(20) \approx f(25) + f'(25)(20-25) = 160 + 15(-5) = 160-75 = 85$$",
  "Approximately 85,000 items per day.",

  "### Relative Rate of Change",

  r"Relative change from $P_0$ to $P_1$ is $\dfrac{P_1-P_0}{P_0}$. For $y=f(t)$, the relative rate of change at t=a is",
  r"MATH:$$\frac{f'(a)}{f(a)}$$",
  r"interpreted as a percentage growth or decay rate — note this requires","MATH:f(a) \neq 0.",

  "### Worked Example — The Elegant Exponential Result",

  r"MATH:$P=f(t)=13(1.03)^t$",", population in millions,","MATH:t","years since 2000. Find the relative rate of change in 2011 (t=11).",

  r"MATH:$$f'(t) = 13(\ln1.03)(1.03)^t$$",
  r"MATH:$$\frac{f'(t)}{f(t)} = \frac{13(\ln1.03)(1.03)^t}{13(1.03)^t} = \ln(1.03) \approx 0.0296$$",

  "",

  r"This is worth understanding, not just computing:","MATH:t","cancelled completely. For any exponential model","MATH:f(t)=P_0a^t","the relative rate of change is","MATH:\ln a","— a constant, every year, not just in 2011. Interpretation: the population grows at a constant relative rate of approximately 2.96% per year.",

  "### Absolute Rate vs Relative Rate — Do Not Confuse Them",

  r"Suppose f(10)=200 and f'(10)=8.",

  "",

  r"Absolute rate f'(10)=8: the quantity is increasing by about 8 units per unit time at t=10 — this HAS units.",

  "",

  r"Relative rate","MATH:\dfrac{f'(10)}{f(10)}=\dfrac{8}{200}=0.04=4%",": the quantity is growing at 4% per unit time at t=10 — this is UNITLESS, a percentage.",

  "",

  "Same data, two completely different answers depending on which one the question actually asked for. Read the question carefully before you decide which one to compute.",

  "### Full Worked Exam-Style Question",

  r"V(t) = value in rand of an investment after t years. Given $V(5)=12\,000$ and $V'(5)=900$:",

  "",

  "(a) Interpret V(5) = 12 000.",
  "(b) State the units of V'(5).",
  "(c) Interpret V'(5) = 900.",
  "(d) Estimate V(6).",
  "(e) Find and interpret the relative rate of change at t = 5.",

  "",

  "Model answers:",

  "",

  "(a) \"After 5 years, the investment is worth R12 000.\"",

  "",

  "(b) Rand per year.",

  "",

  "(c) \"After 5 years, the investment value is increasing at a rate of R900 per year — over the next year the value is expected to increase by approximately R900.\"",

  "",

  r"(d) $$V(6) \approx V(5)+V'(5)(6-5) = 12\,000+900(1) = 12\,900$$",
  "\"The investment is estimated to be worth approximately R12 900 after 6 years.\"",

  "",

  r"(e) $$\frac{V'(5)}{V(5)} = \frac{900}{12\,000} = 0.075 = 7.5\%$$",
  "\"At t = 5, the investment is growing at a relative rate of approximately 7.5% per year.\"",

  "### Common Mistakes",

  "1. Giving the units of y or x alone instead of the ratio \"(units of y) per (units of x)\".",
  r"2. Forgetting to state the direction in words — a negative $f'(a)$ means decreasing, and this must be said explicitly, not left as a bare negative sign.",
  r"3. Using $f'(a)$ to estimate $f(x)$ far from $a$ — the approximation degrades quickly outside a small neighbourhood.",
  r"4. Confusing $f'(a)$, an absolute rate with units, with the relative rate $f'(a)/f(a)$, a unitless percentage.",
  "5. Computing x − a with the wrong sign in the estimation formula — it is always new point minus reference point, never the reverse.",
  r"6. Confusing $f(a)$, a value, with $f'(a)$, a rate — answering the wrong question entirely.",
  r"7. Forgetting that the relative rate of change requires $f(a) \neq 0$.",

  "",

  "### Practice Questions",

  "",

  r"1. $C(x)$ = cost in rand to produce $x$ units, $C'(50)=8$. Interpret this.",
  r"2. $T(h)$ = temperature in °C at $h$ hours after midnight. Given $T(6)=15$, $T'(6)=2$, estimate $T(8)$.",
  r"3. $P(t)=500(1.05)^t$, population $t$ years after 2020. Find and interpret the relative rate of change.",
  r"4. $A(t)$ = amount of drug in mg in the bloodstream $t$ hours after injection. Given $A(3)=40$, $A'(3)=-5$, state the units of $A'(3)$ and interpret it.",
  r"5. $R(x)$ = revenue in rand from selling $x$ units, $R(200)=45\,000$, $R'(200)=150$. Find and interpret the relative rate of change at $x=200$.",
  r"6. Estimate $f(23)$ given $f(20)=500$ and $f'(20)=-10$.",

  "",

  "### Answers",

  "",

  "1. \"At a production level of 50 units, cost is increasing at R8 per additional unit — producing the 51st unit costs approximately R8 more.\"",

  r"2. $T(8)\approx T(6)+T'(6)(8-6) = 15+2(2) = 19°C$",

  r'''3. $\frac{f'(t)}{f(t)}=\ln(1.05)\approx0.0488$ — "the population grows at a constant relative rate of approximately 4.88% per year."''',

  "4. Units: mg per hour. \"Three hours after injection, the amount of drug in the bloodstream is decreasing at 5 mg per hour — over the next hour it is expected to decrease by approximately 5 mg.\"",

  r'''5. $\frac{150}{45\,000}\approx0.0033=0.33\%$ — "at 200 units sold, revenue is growing at a relative rate of approximately 0.33% per additional unit sold."''',

  r"6. $f(23)\approx f(20)+f'(20)(23-20) = 500+(-10)(3) = 470$",

  "",
  "EXAM TIP:",
  "",
  "Whenever a derivative interpretation question appears, immediately ask yourself:",
  "",
  "• What are the units?",
  "• Is the quantity increasing or decreasing?",
  "• What happens if x increases by one unit?",
  "",
  "If you answer those three questions correctly, your interpretation will almost always earn full marks.",
  "",


  "### Mastery Checklist",

  "You have mastered this unit if you can:",

  "",

  "✓ State the units of a derivative correctly, every time, without hesitation.",
  "✓ Interpret a derivative in a full sentence: quantity, value, direction, rate — in that order.",
  "✓ Use the tangent line approximation to estimate a nearby function value, and know when it stops being reliable.",
  "✓ Calculate and interpret a relative rate of change as a percentage.",
  r"✓ Explain why the relative rate of change of any exponential model $P_0a^t$ is always $\ln a$, constant, regardless of $t$.",
  r"✓ Never confuse $f(a)$ with $f'(a)$, or $f'(a)$ with $f'(a)/f(a)$.",
  "✓ Answer a full multi-part interpretation question — value, units, interpretation, estimation, relative rate — without missing a part.",

],
);
}
}