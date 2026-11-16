import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/services/firestore_notes_service.dart';

const String topicTitle = "Growth & Decay + Absolute Value";

const List<String> notes = [
  "### Growth & Decay + Absolute Value",

  "This set combines two units: Unit 3.4 (doubling time and half-life for exponential growth/decay) and Unit 3.5 (the absolute value function). They use different tools, but Worked Example 5 at the end shows how they connect directly back to ln x from Unit 3.3 — read the whole set in order.",

  "",

  "═══════════════════════════════",

  "### PART A — UNIT 3.4: Exponential Growth & Decay",

  "═══════════════════════════════",

  "",

  "### Doubling Time and Half-Life — Definitions",

  "The doubling time of an exponentially growing quantity is the time required for it to double in size.",

  "The half-life of an exponentially decaying quantity is the time required for it to be reduced to exactly half its size.",

  "",

  "Critical fact: for a true exponential function, doubling time (or half-life) is CONSTANT — it does not matter what value you start at. A population doubles in the same amount of time whether it starts at 100 or at 1 000 000. This only works because exponential growth is multiplicative, not additive.",

  "",

  "### Deriving the Doubling Time Formula (Continuous Model)",

  "Start from the continuous model P = P0 e^(kt) from Unit 3.3, and set P equal to double the starting value:",

  r"MATH:P_0 e^{kT} = 2P_0",

  "Divide both sides by P0, then take ln of both sides:",

  r"MATH:e^{kT} = 2 \quad \Rightarrow \quad kT = \ln 2 \quad \Rightarrow \quad T = \frac{\ln 2}{k}",

  "",

  "MEMORY TRICK: Doubling time = ln 2 divided by the rate. Half-life = ln 2 divided by the SIZE of the (negative) rate. Same formula, just take the absolute value of k for decay.",

  "",

  r"MATH:T_{double} = \frac{\ln 2}{k} \quad (k>0) \qquad \qquad T_{half} = \frac{\ln 2}{|k|} \quad (k<0)",

  "",

  "For a discrete model Q = Q0 a^t (annual, hourly, or any fixed period), the same idea gives:",

  r"MATH:a^{T} = 2 \quad \Rightarrow \quad T = \frac{\ln 2}{\ln a} \qquad (a>1,\ \text{growth})",

  r"MATH:a^{T} = 0.5 \quad \Rightarrow \quad T = \frac{\ln(0.5)}{\ln a} \qquad (0<a<1,\ \text{decay})",

  "",

  "### Worked Example 1: Doubling Time (Continuous Growth)",

  "Find the doubling time of a quantity growing at a continuous rate of 15% per year.",

  "Here k = 0.15:",

  r"MATH:T = \frac{\ln 2}{0.15} \approx 4.62 \text{ years}",

  "That is about 4 years and 7.5 months (0.62 × 12 ≈ 7.4 months).",

  "",

  "### Worked Example 2: Half-Life (Discrete Rate)",

  "Find the half-life of a quantity decreasing at a rate of 15% per hour. Use the form Q0·aᵗ.",

  "A 15% decrease per hour means each hour the quantity is multiplied by (1 − 0.15) = 0.85:",

  r"MATH:Q = Q_0(0.85)^t",

  "Set Q0(0.85)^T equal to half of Q0:",

  r"MATH:T = \frac{\ln(0.5)}{\ln(0.85)} \approx 4.27 \text{ hours}",

  "That is about 4 hours and 16 minutes.",

  "",

  "### Worked Example 3: Nicotine Decay",

  "The half-life of nicotine is about 2 hours. You smoked one cigarette at 07:00.",

  "",

  "Part i — When will there be 30% of the nicotine left?",

  "First convert the half-life into a continuous rate k, using the doubling/half-life formula in reverse:",

  r"MATH:e^{2k} = 0.5 \quad \Rightarrow \quad k = \frac{\ln(0.5)}{2} \approx -0.3466 \text{ per hour}",

  "Now solve Q/Q0 = e^(kt) = 0.30 for t:",

  r"MATH:t = \frac{\ln(0.30)}{k} \approx 3.474 \text{ hours} \approx 3\text{ h }28\text{ min}",

  "3 hours 28 minutes after 07:00 is approximately 10:28.",

  "",

  "Part ii — What percentage of the nicotine is left after 12 hours?",

  "12 hours is a clean multiple of the 2-hour half-life (12 ÷ 2 = 6 half-lives), so you don't need k here — just halve 6 times:",

  r"MATH:\frac{Q}{Q_0} = \left(\frac{1}{2}\right)^{6} = \frac{1}{64} = 0.015625 \approx 1.56\%",

  "EXAM TIP: If the elapsed time is an exact multiple of the half-life, use (1/2)ⁿ directly — it's faster and avoids rounding error from computing k. Only fall back on the continuous formula e^(kt) when the time given is NOT a clean multiple of the half-life, like in Part i.",

  "",

  "### Worked Example 4: Doubling Time for Compound Interest",

  "What is the doubling time for an investment with an annual interest rate of 4.8%, compounded monthly?",

  "'Compounded monthly' means the period is one month, so first convert the annual rate to a monthly rate:",

  r"MATH:r_{month} = \frac{0.048}{12} = 0.004",

  "Now apply the discrete doubling-time formula with a = 1 + r_month = 1.004, and n counted in MONTHS:",

  r"MATH:(1.004)^n = 2 \quad \Rightarrow \quad n = \frac{\ln 2}{\ln(1.004)} \approx 173.63 \text{ months}",

  "Convert back to years by dividing by 12:",

  r"MATH:173.63 \div 12 \approx 14.47 \text{ years}",

  "",

  "### Common Misconceptions — Unit 3.4",

  "•  Thinking doubling time depends on the starting amount. It does not — that's the whole point of a constant percentage rate. A population doubles in the same time whether it starts at 10 or 10 000.",

  "•  Treating 'decreasing at 15% per hour' (a discrete, per-period rate) as the same number as a continuous rate k = −0.15. They are different models. If you need the continuous rate, convert using k = ln(a) from Unit 3.3.",

  "•  Assuming the half-life formula can be applied to any elapsed time. It can only be used directly when the elapsed time is a whole-number multiple of the half-life (Example 3 Part ii). Otherwise, convert to the continuous e^(kt) form first (Example 3 Part i).",

  "",

  "### Common Mistakes to Avoid — Unit 3.4",

  "•  Plugging a negative k straight into T = ln2/k without taking the absolute value — this gives a negative 'time', which is meaningless. For decay, use T = ln2/|k|.",

  "•  Forgetting to convert an annual rate to the correct compounding period (monthly, hourly, etc.) before using it as a in Q0·aᵗ — always match the rate's period to the units of t.",

  "•  Rounding k or r too early. In Example 4, rounding r_month to 0.004 is fine, but rounding n before converting to years compounds the error — carry extra decimal places until the final answer.",

  "",

  "═══════════════════════════════",

  "### PART B — UNIT 3.5: The Absolute Value Function",

  "═══════════════════════════════",

  "",

  "### Definition: Absolute Value of a Number",

  "The absolute value of a real number a, denoted |a|, is the distance from a to 0 on the number line.",

  "Distance is never negative — so |−2| = 2, NOT −2. The bars strip away the sign and leave only the size.",

  "",

  "### Definition: The Absolute Value Function",

  "For a real number x, the absolute value function f(x) = |x| is defined piecewise:",

  r"MATH:|x| = \begin{cases} x & x \geq 0 \\ -x & x < 0 \end{cases}",

  "•  Domain: (−∞, ∞) — every real number has an absolute value.",

  "•  Range: [0, ∞) — an absolute value is never negative.",

  "•  f(x) = |x| is continuous everywhere on (−∞, ∞).",

  "•  f(x) = |x| is NOT differentiable at x = 0, because the graph has a sharp corner there — the slope jumps from −1 (just left of 0) to +1 (just right of 0).",

  "",

  "EXAM TIP: Continuous does NOT mean differentiable. |x| is the textbook counter-example — smooth everywhere except one sharp corner. Keep this picture in mind for Worked Example 5 below.",

  "",

  "### Worked Example 1: Evaluating Absolute Values",

  "Use the definition to calculate the following.",

  "1. |14 − 2|",

  r"MATH:|14-2| = |12| = 12",

  "2. |−3 − 14|",

  r"MATH:|-3-14| = |-17| = 17",

  "3. |−2| − |−14|",

  r"MATH:|-2| - |-14| = 2 - 14 = -12",

  "Look closely at part 3 — it is NOT the same calculation as |−2 − (−14)| = |12| = 12. Taking the absolute value of each number FIRST and then subtracting gives a completely different (and here, negative) answer than subtracting first and taking the absolute value of the result. |a| − |b| and |a − b| are two different expressions — never assume they're equal.",

  "",

  "### Rewriting Expressions Without the Absolute Value Sign",

  "Method: find where the expression INSIDE the bars equals zero, then split into two cases — the expression is positive on one side of that point and negative on the other.",

  "",

  "Represent |1 − x| without absolute value bars.",

  "Inside expression 1 − x is zero at x = 1; it is positive for x ≤ 1 and negative for x > 1:",

  r"MATH:|1-x| = \begin{cases} 1-x & x \leq 1 \\ x-1 & x > 1 \end{cases}",

  "",

  "Represent |−2 − x| without absolute value bars.",

  "Inside expression −2 − x is zero at x = −2; it is positive for x ≤ −2 and negative for x > −2:",

  r"MATH:|-2-x| = \begin{cases} -2-x & x \leq -2 \\ x+2 & x > -2 \end{cases}",

  "",

  "Represent |−2x + 4| without absolute value bars.",

  "Inside expression −2x + 4 is zero at x = 2; it is positive for x ≤ 2 and negative for x > 2:",

  r"MATH:|-2x+4| = \begin{cases} -2x+4 & x \leq 2 \\ 2x-4 & x > 2 \end{cases}",

  "",

  "Represent |x² − 4| without absolute value bars.",

  "Inside expression x² − 4 is zero at x = ±2; it is non-negative for x ≤ −2 or x ≥ 2, and negative for −2 < x < 2:",

  r"MATH:|x^2-4| = \begin{cases} x^2-4 & x \leq -2 \text{ or } x \geq 2 \\ 4-x^2 & -2 < x < 2 \end{cases}",

  "",

  "### Properties of Absolute Values",

  "Let x and a be real numbers with a ≥ 0:",

  "1. |x| ≥ 0 for all values of x.",

  "2. |x| = 0 if and only if x = 0.",

  "3. |x| = a if and only if x = ±a.",

  "",

  "Additional properties you should know, used constantly in later calculus courses:",

  r"MATH:|ab| = |a||b| \qquad \left|\frac{a}{b}\right| = \frac{|a|}{|b|} \ (b \neq 0) \qquad |a+b| \leq |a|+|b|",

  "",

  "### Worked Example 2: Solving Absolute Value Equations",

  "Solve the equations below.",

  "1. |x − 8| = 0",

  r"MATH:x - 8 = 0 \quad \Rightarrow \quad x = 8",

  "2. |x| = 5",

  r"MATH:x = \pm 5",

  "3. |x| = −5",

  "The right-hand side is negative, and an absolute value can never equal a negative number. NO SOLUTION.",

  "4. |x − 8| = 2",

  r"MATH:x-8 = \pm 2 \quad \Rightarrow \quad x = 10 \ \text{ or } \ x = 6",

  "5. |2x − 3| = 7",

  r"MATH:2x-3 = \pm 7 \quad \Rightarrow \quad x = 5 \ \text{ or } \ x = -2",

  "",

  "### Graphing y = |f(x)| from y = f(x)",

  r"MATH:|f(x)| = \begin{cases} f(x) & f(x) \geq 0 \\ -f(x) & f(x) < 0 \end{cases}",

  "The procedure:",

  "1. Sketch y = f(x) normally first.",

  "2. Wherever f(x) ≥ 0 (the graph is on or above the x-axis), leave that part exactly as it is.",

  "3. Wherever f(x) < 0 (the graph is below the x-axis), reflect ONLY that part upward across the x-axis.",

  "",

  "Powerful shortcut: the corners of y = |f(x)| occur exactly at the ROOTS of f(x) — the points where the original graph crosses the x-axis. Nowhere else.",

  "",

  "### Worked Example 3: Sketching Absolute Value Graphs",

  "Sketch f(x) = |−2x + 4|.",

  "The inside line −2x + 4 has a root at x = 2. For x ≤ 2 the line is above the axis, so keep it: −2x + 4. For x > 2 the line is below the axis, so reflect it: 2x − 4. Result: a V-shape with its vertex at (2, 0) — sloping down at −2 on the left of x = 2, sloping up at +2 on the right.",

  "",

  "Sketch g(x) = |−x² + 2x + 8|.",

  "The inside expression −x² + 2x + 8 is a downward parabola. Find its roots by solving −x² + 2x + 8 = 0, i.e. x² − 2x − 8 = 0, which factors as (x − 4)(x + 2) = 0, giving roots at x = −2 and x = 4. Its vertex is at x = 1 (the midpoint of the roots), where −x² + 2x + 8 = 9.",

  "Between the roots (−2 < x < 4) the parabola is above the axis, so g matches it exactly: a hump reaching a maximum of 9 at x = 1, touching zero at x = −2 and x = 4.",

  "Outside the roots (x < −2 or x > 4) the parabola is below the axis, so g reflects it: g(x) = x² − 2x − 8, an upward-curving branch on each side.",

  "The result has two corners, at x = −2 and x = 4 — exactly where the original parabola crossed the x-axis, confirming the shortcut above.",

  "",

  "### Inequalities and Absolute Values",

  "Let a be a positive number and f(x) any expression:",

  r"MATH:|f(x)| < a \quad \Longleftrightarrow \quad -a < f(x) < a",

  r"MATH:|f(x)| \leq a \quad \Longleftrightarrow \quad -a \leq f(x) \leq a",

  r"MATH:|f(x)| > a \quad \Longleftrightarrow \quad f(x) > a \ \text{ or } \ f(x) < -a",

  r"MATH:|f(x)| \geq a \quad \Longleftrightarrow \quad f(x) \geq a \ \text{ or } \ f(x) \leq -a",

  "",

  "EXAM TIP: '<' and '≤' give ONE combined interval (an AND / 'sandwich' inequality). '>' and '≥' give TWO separate rays (an OR statement, never a single sandwich). Mixing these two structures up is the single most common error on absolute value inequalities.",

  "",

  "### Worked Example 4: Solving Absolute Value Inequalities",

  "1. |x| > 3",

  r"MATH:x > 3 \ \text{ or } \ x < -3",

  "2. |x| > −5",

  "The left side is always ≥ 0, and 0 is always greater than −5. This is true for every real number, no matter what x is. Solution: ALL real numbers.",

  "3. |x| < −3",

  "The left side can never be negative, so it can never be less than −3. NO SOLUTION.",

  "4. |x − 1| ≤ 2",

  r"MATH:-2 \leq x-1 \leq 2 \quad \Rightarrow \quad -1 \leq x \leq 3",

  "5. |2x + 5| > 11",

  r"MATH:2x+5 > 11 \ \text{ or } \ 2x+5 < -11 \quad \Rightarrow \quad x > 3 \ \text{ or } \ x < -8",

  "6. −3|x − 5| + 15 < −15",

  "Isolate the absolute value first:",

  r"MATH:-3|x-5| < -30",

  "Divide both sides by −3 — and FLIP the inequality sign because you're dividing by a negative number:",

  r"MATH:|x-5| > 10 \quad \Rightarrow \quad x > 15 \ \text{ or } \ x < -5",

  "",

  "### Worked Example 5: Continuity and Differentiability of |ln x| — The Keystone Problem",

  "Find the interval(s) on which f(x) = |ln x| is continuous and differentiable.",

  "This problem uses ln x from Unit 3.3 AND the corner behaviour of absolute value from this unit — it's the perfect check that you actually understand both.",

  "",

  "Step 1 — Domain: ln x requires x > 0, so the domain of f is (0, ∞) before you even apply the absolute value.",

  "",

  "Step 2 — Find where the inside expression is zero. ln x = 0 exactly at x = 1 (since ln 1 = 0). This is the ONLY candidate corner — not x = 0, because x = 0 isn't even in the domain.",

  r"MATH:f(x) = |\ln x| = \begin{cases} \ln x & x \geq 1 \\ -\ln x & 0 < x < 1 \end{cases}",

  "",

  "Step 3 — Continuity: ln x is continuous on (0, ∞), and the absolute value function is continuous everywhere, so their composition |ln x| is continuous on the entire domain:",

  r"MATH:f \text{ is continuous on } (0, \infty)",

  "",

  "Step 4 — Differentiability: check the derivative from each side of the candidate corner, x = 1.",

  "For x > 1: f(x) = ln x, so f'(x) = 1/x, giving f'(1⁺) = 1.",

  "For 0 < x < 1: f(x) = −ln x, so f'(x) = −1/x, giving f'(1⁻) = −1.",

  r"MATH:f'(1^{-}) = -1 \neq 1 = f'(1^{+})",

  "The left- and right-hand derivatives disagree, so f is NOT differentiable at x = 1 — exactly the same corner behaviour as |x| at x = 0, just relocated to wherever the inside function crosses zero.",

  "",

  r"MATH:f \text{ is differentiable on } (0,1) \cup (1, \infty)",

  "",

  "MEMORY TRICK: for y = |g(x)|, the graph is smooth everywhere except at the ROOTS of g(x) — that's where corners appear, whether g(x) = x, g(x) = ln x, or anything else.",

  "",

  "### Common Misconceptions — Unit 3.5",

  "•  Believing |a| − |b| = |a − b|. Worked Example 1 Part 3 is a built-in counter-example: |−2| − |−14| = −12, but |−2 − (−14)| = 12. They are not the same.",

  "•  Assuming |x| = a always has two solutions. It has two solutions only if a > 0; exactly one (x = 0) if a = 0; and none if a < 0.",

  "•  Believing continuous automatically means differentiable. |x| and |ln x| are both continuous on their full domain but each has one point where they are not differentiable.",

  "•  Solving |f(x)| > a the same way as |f(x)| < a. The '>' case needs an OR / two separate rays, never a single sandwiched interval.",

  "",

  "### Common Mistakes to Avoid — Unit 3.5",

  "•  Only checking x = 0 for corners, out of habit. The corner is wherever the INSIDE expression equals zero — that could be x = 1, x = 2, x = ±2, or anywhere else, depending on the function.",

  "•  Forgetting to flip the inequality sign when multiplying or dividing an absolute value inequality by a negative number (Example 4, part 6).",

  "•  Sketching y = |f(x)| by reflecting the ENTIRE graph instead of only the part below the x-axis — always leave the part that's already above the axis untouched.",

  "•  Dropping the negative sign when rewriting the negative branch of a piecewise expression — always distribute the minus sign across the WHOLE bracket, e.g. −(x² − 4) = −x² + 4 = 4 − x², not −x² − 4.",

  "",

  "### Mastery Checklist",

  "Before your test, confirm you can do ALL of the following without help:",

  "1.  Derive T = ln2/k for doubling time and T = ln2/|k| for half-life from P = P0e^(kt), starting from scratch.",

  "2.  Find a doubling time or half-life from a continuous rate, and from a discrete per-period rate.",

  "3.  Convert an annual rate to the correct period (monthly, hourly) before using it in a discrete model.",

  "4.  Solve a decay problem for a non-whole-number multiple of the half-life using the continuous model, AND for a whole-number multiple using direct halving.",

  "5.  State the piecewise definition of |x|, its domain, range, continuity, and the one point where it isn't differentiable.",

  "6.  Rewrite any |expression| as a piecewise function by finding where the inside equals zero.",

  "7.  Solve |x| = a for all three cases: a > 0, a = 0, a < 0.",

  "8.  State which absolute value inequalities give a sandwiched interval (<, ≤) versus an OR / two rays (>, ≥).",

  "9.  Solve an absolute value inequality that requires isolating |f(x)| first, including flipping the sign when dividing by a negative.",

  "10. Sketch y = |f(x)| from y = f(x) by identifying roots and reflecting only the negative portion.",

  "11. Find the corner(s) of y = |g(x)| for ANY g(x), not just g(x) = x — including g(x) = ln x.",

  "12. Determine continuity and differentiability of a function like |ln x| from first principles, checking left- and right-hand derivatives.",

  "",

  "PRACTICE: Test yourself on the problems below before checking back through your notes. Recognizing a method is not the same as being able to execute it under exam pressure.",

  "1.  Find the half-life of a substance decaying at a continuous rate of 8% per hour.",

  "2.  An investment doubles every 9 years under continuous compounding. Find its continuous annual growth rate k.",

  "3.  Rewrite |3x + 6| as a piecewise function, and state where its corner is.",

  "4.  Solve |4x − 1| ≥ 9.",

  "5.  Find the interval(s) on which h(x) = |x² − 1| is differentiable.",
];

const List<String> images = [];

class ExponentialGrowthDecayAndAbsoluteValueScreen extends StatelessWidget {
  const ExponentialGrowthDecayAndAbsoluteValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>?>(
      future: FirestoreNotesService.getNote(
        module: 'WTW134',
        theme: 'theme3_exponential_and_logarithmic_functions',
        subtopic: 'growth_decay_and_absolute_value',
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Growth & Decay + Absolute Value'),
            ),
            body: Center(
              child: Text(
                'Failed to load notes:\n${snapshot.error}',
                textAlign: TextAlign.center,
              ),
            ),
          );
        }

        final data = snapshot.data;

        if (data == null) {
          return const Scaffold(
            body: Center(
              child: Text(
                'No notes were found in Firebase.',
              ),
            ),
          );
        }

        final title =
            data['title'] as String? ?? topicTitle;

        final notesFromFirebase =
        List<String>.from(data['notes'] ?? []);

        final imagesFromFirebase =
        List<String>.from(data['images'] ?? []);

        return MathNotesScreen(
          title: title,
          notes: notesFromFirebase,
          images: imagesFromFirebase,
        );
      },
    );
  }
}