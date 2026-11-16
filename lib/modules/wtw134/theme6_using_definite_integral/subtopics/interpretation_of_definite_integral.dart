import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/services/firestore_notes_service.dart';

const String topicTitle = "Interpretations of the Definite Integral";

const List<String> notes = [
  // 0 - intro (plain text, NO "### " prefix -- index 0 gets special title treatment)
  "The Definite Integral as Area taught you to read a definite integral geometrically, as a shape's size. This unit teaches you to read the exact same integral a second way: as a real quantity changing over time. Same symbol, same Fundamental Theorem underneath, completely different question being answered.",

  "",

  "### Why This Topic Exists",

  "A definite integral without units is just a number. Give it units, and it becomes litres pumped, degrees lost, kilometres travelled, rand earned. This unit is about extracting that meaning correctly, every time, instead of stopping at the number.",

  "",

  "### The Units Rule",

  "The units of a definite integral are the units of f multiplied by the units of x.",

  "",

  r"MATH:\int_a^b f(x)\,dx",

  "",

  "Think back to where that integral came from: a sum of thin rectangles, each one f(xᵢ) times a small width. Multiply units through a rectangle and you get (units of f) times (units of width). That never changes, no matter how thin the rectangles get.",

  "",

  "If a rate is in litres per minute and time is in minutes, the integral is in litres. If a rate is in metres per second and time is in seconds, the integral is in metres. The rate's time unit always cancels with dt, leaving you with the accumulated quantity.",

  "",

  "[IMAGE]",

  "",

  "### Total Change: What The Integral Really Means",

  "Let F be some real, measurable quantity, a volume, a temperature, a population. Let f be its rate of change, so f = F prime. The total change in F between t = a and t = b is:",

  "",

  r"MATH:\Delta F = F(b) - F(a) = \int_a^b f(t)\,dt",

  "",

  "Look closely: that's The Fundamental Theorem, unchanged. Only the labels are new. F used to be an abstract antiderivative. Now it's a real quantity. f used to be just a function. Now it's a rate you can measure with a stopwatch.",

  "",

  "MEMORY TRICK: Rate in, total change out. The integral of a rate is never the final amount by itself, it's how much that amount moved.",

  "",

  "### The Recipe",

  "1. Identify the quantity F and confirm f is its rate, f = F prime.",

  "",

  "2. State the units of the integral before you compute anything.",

  "",

  "3. Find the antiderivative of f.",

  "",

  "4. Evaluate F(b) minus F(a). This number is the total change.",

  "",

  "5. If you're asked for a final amount, add the total change to the starting amount you were given. If you're only asked for the change, stop at step 4.",

  "",

  "### Worked Example: Filling a Reservoir",

  "Water flows into a reservoir at a rate, in litres per minute, of:",

  "",

  r"MATH:r(t) = 5\sqrt{t}",

  "",

  "where t is the number of minutes since the valve opened. The reservoir already held 200 litres when the valve was opened. Find the units of the integral below, evaluate it, and use it to find how much water is in the reservoir after 9 minutes.",

  "",

  r"MATH:\int_0^9 r(t)\,dt",

  "",

  "Step 1: State the units. r(t) is in litres per minute, dt is in minutes, so the integral is in litres.",

  "",

  "Step 2: Find the antiderivative.",

  "",

  r"MATH:R(t) = \frac{10}{3}t^{3/2}",

  "",

  "Step 3: Evaluate over [0, 9]. This is the total change, the water added.",

  "",

  r"MATH:\int_0^9 r(t)\,dt = R(t)\,|_0^9 = 90",

  "",

  "[IMAGE]",

  "",

  "Step 4: Add to the starting amount, because the question asked for the amount in the tank, not just the change.",

  "",

  r"MATH:200 + 90 = 290",

  "",

  "After 9 minutes there are 290 litres in the reservoir. Notice the two different answers living in this one problem: 90 litres is the total change, 290 litres is the final amount. Mixing those up is the single most common mistake in this topic.",

  "",

  "### Worked Example: A Cooling Cup Of Coffee",

  "A cup of coffee is poured at 90 degrees Celsius. From that moment, its temperature changes at a rate, in degrees per minute, of:",

  "",

  r"MATH:T'(t) = -4e^{-0.1t}",

  "",

  "Find the coffee's temperature after 10 minutes.",

  "",

  "The negative sign is doing real work here, it says temperature is falling, not rising. Leave it in.",

  "",

  "Step 1: Find the antiderivative.",

  "",

  r"MATH:T(t) = 40e^{-0.1t}",

  "",

  "Step 2: Evaluate the total change over [0, 10].",

  "",

  r"MATH:\int_0^{10} T'(t)\,dt = T(t)\,|_0^{10} = 40e^{-1} - 40 \approx -25.28",

  "",

  "Step 3: Add the total change to the starting temperature.",

  "",

  r"MATH:90 + (-25.28) \approx 64.72",

  "",

  "After 10 minutes the coffee is at about 64.72 degrees Celsius. The total change came out negative, exactly as it should for something that's cooling, and adding a negative number is still just addition.",

  "",

  "### Worked Example: A Rising Water Level",

  "The depth of a river channel changes at a rate, in metres per hour, of:",

  "",

  r"MATH:d'(t) = -1.8\cos(\frac{\pi}{8}t)",

  "",

  "where t is hours after midnight. At 04:00 the depth was 6.4 metres. Find the depth at 12:00.",

  "",

  "Step 1: Set up the integral over the correct interval. 04:00 to 12:00 is t = 4 to t = 12.",

  "",

  r"MATH:\int_4^{12} d'(t)\,dt",

  "",

  "Step 2: Find the antiderivative.",

  "",

  r"MATH:D(t) = -\frac{14.4}{\pi}\sin(\frac{\pi}{8}t)",

  "",

  "Step 3: Evaluate the total change.",

  "",

  r"MATH:\int_4^{12} d'(t)\,dt = D(t)\,|_4^{12} = \frac{144}{5\pi} \approx 9.17",

  "",

  "Step 4: Add the total change to the depth you were given at t = 4.",

  "",

  r"MATH:6.4 + 9.17 \approx 15.57",

  "",

  "The channel is about 15.57 metres deep at 12:00. Notice the starting value here wasn't at t = 0, it was given at t = 4. The integral only ever measures change across the interval you set up, so the interval has to match the two times in the question, not default to zero.",

  "",

  "### Common Mistakes",

  "• Reporting the integral's value as the final answer when the question asked for a final amount, not the change.",

  "",

  "• Leaving out units entirely, or guessing them instead of multiplying (units of f) by (units of x).",

  "",

  "• Setting up the interval from 0 instead of from whatever time the starting value was actually given at.",

  "",

  "• Dropping a negative sign on a rate that represents a decrease, cooling, draining, slowing down all need that sign to survive into the integral.",

  "",

  "### Cheat Sheet",

  "Here's the whole method on one page.",

  "",

  "[IMAGE]",

  "",

  "EXAM TIP: Before you touch the antiderivative, write down the units in words. It takes five seconds and it's often worth a mark on its own.",

  "",

  "EXAM TIP: Underline the starting value and the starting time the moment you see them. It's the detail students lose track of under pressure, and it's exactly what separates 'total change' from 'final amount'.",

  "",

  "### Try It Yourself",

  "A bacteria population grows at a rate, in bacteria per hour, of:",

  "",

  r"MATH:p'(t) = 200e^{0.05t}",

  "",

  "There were 5000 bacteria at t = 0. Find the population after 6 hours.",

  "",

  "PRACTICE: State the units first. Then find the antiderivative of p prime, evaluate it over [0, 6] to get the total change, and finally decide whether the question wants that change on its own or added to the starting population.",
];

const List<String> images = [
  "assets/modules/wtw134/theme6/total_change_strip_diagram.png",
  "assets/modules/wtw134/theme6/reservoir_total_change_example.png",
  "assets/modules/wtw134/theme6/interpretations_cheatsheet.png",
];

class InterpretationsDefiniteIntegralScreen extends StatelessWidget {
  const InterpretationsDefiniteIntegralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>?>(
      // NOTE TO NEO: theme + subtopic keys below are an unconfirmed assumption,
      // same as flagged on every prior unit. Confirm these match your actual
      // Firestore structure for Theme 6 before deploying.
      future: FirestoreNotesService.getNote(
        module: 'WTW134',
        theme: 'theme6_area_and_applications',
        subtopic: 'interpretations_of_the_definite_integral',
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
              title: const Text('Interpretations of the Definite Integral'),
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