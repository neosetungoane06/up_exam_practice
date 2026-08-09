import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class TheSecondDerivativeScreen extends StatelessWidget {
const TheSecondDerivativeScreen({super.key});

@override
Widget build(BuildContext context) {
return const MathNotesScreen(
title: "The Second Derivative",

location: StudyLocation(
module: "WTW134",
topic: "Theme 2 Differentiation",
subtopic: "The Second Derivative",
),

images: [

"assets/modules/wtw134/theme2/U_shape_and_bowl_shape.png",
  "assets/modules/wtw134/theme2/Practice_sketching.png",
],

notes: [

  "### WTW134 — Unit 2.4",
  "## The Second Derivative",

  "Unit 2.1 taught you that the sign of f' tells you whether f is increasing or decreasing. This unit asks a simple follow-up question: what happens if you differentiate again? The answer connects directly back to that same theorem, one level up.",

  "",

  "### Notation",

  r"$$f''(x) = \frac{d}{dx}f'(x) = \frac{d^2y}{dx^2}$$",

  "",

  r"The second derivative is just the derivative of the derivative — differentiate $f$ once to get $f'$, then differentiate $f'$ again to get $f''$.",

  "### A Real Example — Velocity and Acceleration",

  r"If $s=f(t)$ is the distance in metres travelled by an object at time $t$ in seconds:",

  "",

  r"$v=\dfrac{ds}{dt}=f'(t)$ is the velocity, in metres per second.",

  "",

  r"$a=\dfrac{dv}{dt}=\dfrac{d^2s}{dt^2}=f''(t)$ is the acceleration, in metres per second per second (m/s²).",

  "",

  "This is the cleanest way to think about a second derivative: it measures how fast the rate of change itself is changing.",

  "### What Does \"f' is Increasing\" Actually Mean?",

  r"From Unit 2.1: $f'(x)>0$ on an interval $I$ means $f$ is increasing on $I$. Apply that exact same theorem one derivative up: $f''(x)>0$ on $I$ means $f'$ is increasing on $I$.",

  "",

  "But what does f' increasing actually look like on a graph? It means the slopes of the tangent lines are climbing as x increases. Picture a cup-shaped curve: on the left the tangent lines are steeply negative, and moving right they become less negative, then zero, then increasingly positive — the slope value climbs the whole way across. That climbing-slope behaviour is exactly what \"concave up\" means. A cap-shaped curve does the reverse: slopes start positive and fall — that is \"concave down\".",

  "### The Theorem",

  r"$$f \text{ concave up on } I \iff f''(x)>0 \text{ on } I$$",
  r"$$f \text{ concave down on } I \iff f''(x)<0 \text{ on } I$$",

  "",

  "Memory trick: concave up \"holds water\" — think of a cup, a ∪ shape. Concave down \"spills water\" — think of a cap, a ∩ shape.",

  "[IMAGE]",

  "### Definition — Inflection Point",

  "An inflection point is a point where the concavity of the graph changes — from concave up to concave down, or the reverse. Your lecture slides use this idea without ever stating it this cleanly, so make sure this definition is solid before you continue: an inflection point is about concavity changing, not about the function increasing or decreasing.",

  "### Reading Concavity and Monotonicity From a Graph",

  "This is the skill your lecturer tests with a set of small unlabelled graphs, asking you to state the sign of f' and f'' from the shape alone. Six shapes cover every case you will see:",

  "",

  "• Rising and getting steeper → increasing, concave up.",
  "• Rising but flattening out → increasing, concave down.",
  "• Rising in a straight line → increasing, and f'' = 0 (neither concave up nor down).",
  "• Falling but flattening out → decreasing, concave up.",
  "• Falling and getting steeper → decreasing, concave down.",
  "• Falling in a straight line → decreasing, and f'' = 0.",

  "[IMAGE]",
  "",

  "Practice this by sketching each of the six shapes yourself and labelling the sign of f' and f'' on each — that active recall is what the exam question actually tests.",

  "### Full Analysis and Sketching Checklist",

  "1. Find the domain of the function.",
  "2. Find f', factor it, and run the Unit 2.1 number-line method to get intervals of increasing/decreasing and locate turning points — remember, only a sign change in f' counts as a turning point.",
  "3. Find f'', factor it, and run the same number-line method to get intervals of concave up/down and locate inflection points — only a sign change in f'' counts as an inflection point.",
  "4. Evaluate f at every critical x-value found in steps 2 and 3.",
  "5. Sketch: mark the turning points and inflection points, match the curve's bending direction to the concavity intervals, and match rising/falling to the monotonicity intervals.",

  "",

  "### Full Worked Synthesis — Where Everything Meets",

  r"$$f(x)=x^4-2x^3+1$$",

  "",

  r"Monotonicity (from Unit 2.1): $f'(x)=4x^3-6x^2=2x^2(2x-3)$, decreasing on $(-\infty,\frac32)$, increasing on $(\frac32,\infty)$.",

  "",

  r"Concavity: $$f''(x) = 12x^2-12x = 12x(x-1)$$",

  r"Zeros at $x=0,\ 1$.",

  "",

  r'''```
   (+)        (–)        (+)
◄──────●──────────●──────────►
       0          1
```''',

  "",

  r"Concave up on $(-\infty,0)\cup(1,\infty)$, concave down on $(0,1)$.",

  "",

  "Now put it together — this is the level of reasoning a distinction answer shows:",

  "",

  r"At $x=\frac32$: $f'$ changes sign, negative to positive → local minimum. Check concavity there: $f''(\frac32)=12(\frac32)(\frac12)=9>0$ — concave up, consistent with a minimum.",

  "",

  r'''At $x=0$: $f'(0)=0$ but $f'$ does NOT change sign — negative on both sides, because it is a repeated root (the Unit 2.1 subtlety). So x = 0 is NOT a turning point. But $f''(0)=0$ AND concavity DOES change there, up to down — so x = 0 IS an inflection point. A horizontal tangent with no extremum, sitting exactly where concavity flips, is called a stationary inflection point — it is the flat "shoulder" you would see on the graph just before it continues down to the true minimum.''',

  "",

  r"At $x=1$: $f'(1)=-2\neq0$, so the function is still decreasing there — but $f''(1)=0$ and concavity changes, down to up — a second inflection point, this time not stationary.",

  "",

  r"Function values for the sketch: $f(0)=1$, $f(1)=0$, $f(\frac32)=-\frac{11}{16}$.",

  "",

  "This is the exact contrast a distinction answer needs to catch: not every zero of f' is a turning point, and the zero that isn't can still be an inflection point in its own right.",

  "### Common Mistakes",

  r"1. Assuming every zero of $f'$ is a local max or min — it only is if $f'$ actually changes sign there.",
  r"2. Assuming every zero of $f''$ is an inflection point without checking that concavity actually changes sign either side.",
  "3. Confusing \"f' is increasing\" with \"f is increasing\" — these are statements about two different functions.",
  "4. Assuming a turning point and an inflection point must occur near each other — they come from different derivatives and do not have to coincide.",
  r"5. Sketching concavity backwards — drawing concave-down where $f''>0$. Always re-check the sign against the theorem before you draw anything.",
  "6. In velocity/acceleration problems, forgetting that a negative value means direction, not necessarily slowing down — read the sign in context.",

  "",

  "### Practice Questions",

  "",

  r"1. $f(x)=x^3-3x^2$ — find the intervals of concavity and any inflection point.",
  r"2. $f(x)=x^4-6x^2$ — find the intervals of concavity and all inflection points.",
  r"3. $s(t)=t^3-6t^2+9t$ is the position in metres of an object at time $t$ seconds. Find the velocity and acceleration functions, and the time interval during which the velocity is increasing.",
  r"4. $f(x)=x^4-4x^3$ — find the intervals of increasing/decreasing, the intervals of concavity, all turning points, and all inflection points.",

  "",

  "### Answers",

  "",

  r"1. $f''(x)=6x-6=6(x-1)$. Concave down on $(-\infty,1)$, concave up on $(1,\infty)$. Inflection point at $x=1$.",

  r"2. $f''(x)=12x^2-12=12(x-1)(x+1)$. Concave up on $(-\infty,-1)\cup(1,\infty)$, concave down on $(-1,1)$. Inflection points at $x=-1$ and $x=1$.",

  r"3. $v(t)=s'(t)=3t^2-12t+9$. $a(t)=v'(t)=6t-12$. Velocity is increasing where $a(t)>0$, i.e. $6t-12>0 \Rightarrow t>2$. So velocity is increasing on $(2,\infty)$ and decreasing on $(0,2)$ — this is just the concave-up/concave-down theorem applied to the position function.",

  r'''4. $f'(x)=4x^3-12x^2=4x^2(x-3)$ — decreasing on $(-\infty,3)$, increasing on $(3,\infty)$, with $x=0$ a repeated root that does NOT change sign (not a turning point). Local minimum at $x=3$, $f(3)=-27$. $f''(x)=12x^2-24x=12x(x-2)$ — concave up on $(-\infty,0)\cup(2,\infty)$, concave down on $(0,2)$. Inflection points at $x=0$ (stationary — same "flat shoulder" pattern as the worked example above) and $x=2$ (non-stationary, since $f'(2)=-16\neq0$).''',

  "### Mastery Checklist",

  "You have mastered this unit if you can:",

  "",

  "✓ State the second derivative notation and compute f'' correctly.",
  "✓ Explain in your own words what \"f' is increasing\" means in terms of tangent-line slopes.",
  "✓ State and apply the concave up/down theorem, using the holds-water/spills-water intuition if it helps.",
  "✓ Read a small unlabelled graph and correctly state the sign of both f' and f'' from its shape.",
  "✓ Define an inflection point correctly — a change in concavity, not a change in direction.",
  "✓ Run the full 5-step analysis-and-sketch checklist on an unfamiliar polynomial without guidance.",
  "✓ Correctly identify a stationary inflection point — a horizontal tangent with no extremum, where concavity still changes. This is the single trickiest case in the whole unit.",
  "✓ Apply the second derivative to a velocity/acceleration scenario and interpret the result correctly.",

],
);
}
}