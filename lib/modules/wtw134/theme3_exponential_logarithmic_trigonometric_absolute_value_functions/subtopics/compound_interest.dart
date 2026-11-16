import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/services/firestore_notes_service.dart';

const String topicTitle = "Compound Interest and the Number e";

const List<String> notes = [
  "### Compound Interest and the Number e",

  "This unit builds directly on Unit 3.1. There, a was a fixed growth factor applied once per time period. Here, that same idea gets applied MULTIPLE times within a single year — and pushing that idea to its extreme is exactly where the number e comes from.",

  "",

  "### What Is Compound Interest, Really?",

  "Compound interest means you earn interest not only on your original deposit, but also on the interest you already earned. This is different from simple interest, where you only ever earn interest on the original amount.",

  "",

  "A tiny concrete example makes this exact: deposit R100 at 10% annual interest.",

  "",

  "Year 1:",
  r"MATH:R100 \times 1.10 = R110",
  "You earned R10 interest.",

  "",

  "Year 2:",
  r"MATH:R110 \times 1.10 = R121",
  "You earned R11 interest this time — one rand more than last year.",

  "",

  "That extra R1 is interest earned on last year's R10 of interest. That is the entire idea of compound interest, in one small number. Over many years and larger amounts, this small extra effect compounds on itself and becomes very large.",

  "### The Compound Interest Formula",

  "Assume an initial deposit of B0 rand, at an annual interest rate r, compounded n times a year. The balance B after t years is",

  "",

  r"MATH:B = B_0\left(1+\frac{r}{n}\right)^{nt}",

  "",

  "Each symbol matters, so be precise about all four:",

  "",

  "•  B0 is the initial deposit.",

  "•  r is the ANNUAL rate, always written as a decimal — 5.4% means r = 0.054, never r = 5.4.",

  "•  n is the number of times per year the interest is compounded.",

  "•  t is the number of years.",

  "",

  "A quick reference for n, since misreading this word is a common mistake:",

  "",

  "•  annually → n = 1",
  "•  semi-annually → n = 2",
  "•  quarterly → n = 4",
  "•  monthly → n = 12",
  "•  weekly → n = 52",
  "•  daily → n = 365",

  "### Worked Example — Comparing Compounding Frequencies",

  "You deposit R10 000 at an annual rate of 6% for 5 years. Find the balance if interest is compounded annually, monthly, and daily.",

  "",

  "Compounded annually, n = 1:",

  "",

  r"MATH:B = 10\,000\left(1+\frac{0.06}{1}\right)^{1 \times 5} = 10\,000(1.06)^5",

  "",

  r"MATH:B \approx R13\,382.26",

  "",

  "Compounded monthly, n = 12:",

  "",

  r"MATH:B = 10\,000\left(1+\frac{0.06}{12}\right)^{12 \times 5} = 10\,000(1.005)^{60}",

  "",

  r"MATH:B \approx R13\,488.50",

  "",

  "Compounded daily, n = 365:",

  "",

  r"MATH:B = 10\,000\left(1+\frac{0.06}{365}\right)^{365 \times 5}",

  "",

  r"MATH:B \approx R13\,498.26",

  "",

  "Notice the balance keeps increasing as n increases, but by smaller and smaller amounts each time — from annual to monthly gains about R106, but monthly to daily only gains about R9.76. That shrinking gain is not a coincidence — it is exactly what leads to the next section.",

  "### The Irrational Number e",

  "What happens if you keep compounding more and more often — not just daily, but every hour, every second, every possible instant?",

  "",

  "As n gets larger and larger, the extra gain keeps shrinking, and the balance approaches a specific limiting value. There exists an irrational number e such that",

  "",

  r"MATH:\lim_{n\to\infty}\left(1+\frac{r}{n}\right)^n = e^r",

  "",

  r"MATH:\lim_{n\to\infty}\left(1+\frac{r}{n}\right)^{nt} = e^{rt}",

  "",

  "Use your calculator to find the value of e:",

  "",

  r"MATH:e = e^1 \approx 2.71828",

  "",

  "e is not something you compute from a formula involving r — it is a single fixed constant, the same way pi is a fixed constant. It just happens to arise naturally as the limit of this exact compounding process.",

  "### Continuous Compounding",

  "If the annual interest rate is r, expressed as a decimal, and interest is compounded continuously, the balance B after t years is",

  "",

  r"MATH:B = B_0 e^{rt}",

  "",

  "with B0 the initial amount. This is simply the n → infinity limit of the compound interest formula, applied directly.",

  "### Worked Example — Continuous Compounding",

  "What is the balance after 5 years if you deposit R10 000 at an annual rate of 6%, compounded continuously?",

  "",

  r"MATH:B = 10\,000 e^{0.06 \times 5} = 10\,000 e^{0.3}",

  "",

  r"MATH:B \approx R13\,498.59",

  "### Comparing All Four Methods, Side by Side",

  "Same R10 000, same 6% annual rate, same 5 years — only the compounding method changes:",

  "",

  "•  Annually (n = 1): R13 382.26",
  "•  Monthly (n = 12): R13 488.50",
  "•  Daily (n = 365): R13 498.26",
  "•  Continuously: R13 498.59",

  "",

  "[IMAGE]",

  "",

  "The gain from annual to monthly is about R106.24. The gain from monthly to daily is about R9.75. The gain from daily to continuous is only about R0.33. Continuous compounding is the absolute ceiling — no compounding frequency, however extreme, can ever push the balance any higher than the continuous value for the same rate.",

  "### Effective Annual Interest Rate",

  "The rate r in the formula is called the NOMINAL rate — the rate as officially stated. It is usually NOT the rate you actually earn over a year once compounding is taken into account. The rate you actually earn is called the effective annual rate.",

  "",

  "To find it, calculate the balance after exactly one year, using B0 = 1, and read off the growth factor.",

  "",

  "Example: the annual rate is 4.5%, compounded monthly.",

  "",

  r"MATH:B = B_0\left(1+\frac{r}{n}\right)^{nt} = B_0\left(1+\frac{0.045}{12}\right)^{12} = B_0(1.04593)",

  "",

  "The effective annual interest rate is 0.04593, which is 4.593%. Notice this is already higher than the nominal 4.5% — that gap is entirely the effect of compounding within the year.",

  "### Worked Example — Effective Rate, Continuous Compounding",

  "If the annual interest rate is 4.5%, find the effective annual interest rate if the interest is compounded continuously.",

  "",

  r"MATH:B = B_0 e^{rt} = B_0 e^{0.045 \times 1} = B_0 e^{0.045}",

  "",

  r"MATH:e^{0.045} \approx 1.04603",

  "",

  "The effective annual interest rate is approximately 4.603%.",

  "### The Same Nominal Rate, Two Different Effective Rates",

  "Both examples above start from the exact same nominal rate, 4.5% — only the compounding method differs:",

  "",

  "•  Compounded monthly: effective rate ≈ 4.593%",
  "•  Compounded continuously: effective rate ≈ 4.603%",

  "",

  "Continuous compounding always produces the highest possible effective rate for a given nominal rate — it is the same ceiling effect seen in the four-way balance comparison above, just expressed as a rate instead of a rand amount.",

  "### Common Mistakes and What Students Miss in Exams",

  "1. Confusing the nominal rate r with the effective annual rate — they are only equal when n = 1. State clearly which one a question is asking for before you answer.",

  "2. Writing r as a whole number instead of a decimal — 5.4% must become 0.054 in the formula, not 5.4.",

  "3. Miscounting n — using 30 for monthly instead of 12, or 4 for quarterly instead of confirming it against the reference list above. Always double-check n against how many times a YEAR the compounding happens, not how many days are in the period.",

  "4. Using n or t alone in the exponent instead of the product nt — the exponent is always n multiplied by t, never just one of them.",

  "5. Using the discrete formula B0(1+r/n)^{nt} for a problem that says \"compounded continuously\" — that phrase is your signal to switch to B0 e^{rt} directly, not to guess a very large value of n.",

  "6. Rounding too early — rounding (1+r/n) to 2 or 3 decimal places before raising it to a large power. Small rounding errors get magnified enormously by a large exponent. Keep full calculator precision until the very last step.",

  "7. Computing the effective rate but reporting the wrong number — the effective rate is the GROWTH FACTOR MINUS 1, not the full balance. If B0(1.04593), the effective rate is 0.04593, not 1.04593.",

  "8. Forgetting to convert the final effective-rate decimal back into a percentage, or forgetting to convert a final balance back into rand with correct rounding to the cent.",

  "9. Mixing up B0 (initial amount) with B (final balance) inside a longer multi-part problem, especially when a later part of the question reuses an earlier calculated balance as its new B0.",

  "",

  "### Practice Questions",

  "",

  "1. You deposit R5 000 at an annual rate of 8%, compounded quarterly, for 3 years. Find the balance.",

  "",

  "2. You deposit R8 000 at an annual rate of 5%, compounded continuously, for 10 years. Find the balance.",

  "",

  "3. Find the effective annual interest rate if the nominal rate is 6%, compounded monthly.",

  "",

  "4. Find the effective annual interest rate if the nominal rate is 6%, compounded continuously.",

  "",

  "5. A problem states an account earns 12% per year, compounded semi-annually. State the values of r and n you would use in the formula.",

  "",

  "### Answers",

  "",

  "Answer 1:",
  r"MATH:B = 5\,000\left(1+\frac{0.08}{4}\right)^{4\times3} = 5\,000(1.02)^{12}",
  r"MATH:B \approx R6\,341.21",

  "",

  "Answer 2:",
  r"MATH:B = 8\,000 e^{0.05\times10} = 8\,000e^{0.5}",
  r"MATH:B \approx R13\,189.77",

  "",

  "Answer 3:",
  r"MATH:B_0\left(1+\frac{0.06}{12}\right)^{12} \approx B_0(1.06168)",
  "Effective rate ≈ 6.168%.",

  "",

  "Answer 4:",
  r"MATH:B_0 e^{0.06} \approx B_0(1.06184)",
  "Effective rate ≈ 6.184%.",

  "",

  "Answer 5: r = 0.12, n = 2, since semi-annually means twice a year.",

  "### Mastery Checklist",

  "You have mastered this unit if you can:",

  "",

  "•  Explain, in plain words, what makes compound interest different from simple interest.",

  "•  State the compound interest formula B = B0(1+r/n)^{nt} and correctly identify B0, r, n, and t from a word problem.",

  "•  Correctly translate compounding-frequency words — annually, quarterly, monthly, daily — into the correct value of n.",

  "•  Explain where the number e comes from, as the limit of compounding infinitely often.",

  "•  State and apply the continuous compounding formula B = B0 e^{rt}.",

  "•  Calculate an effective annual interest rate from a nominal rate, for both discrete and continuous compounding.",

  "•  Explain why continuous compounding always produces the highest possible balance and the highest possible effective rate for a given nominal rate.",

  "•  Avoid every mistake listed above, especially early rounding and confusing the nominal rate with the effective rate.",

];

const List<String> images = [
  "assets/modules/wtw134/theme3_exponential_functions/compounding_frequency_comparison.png",
];

class CompoundInterestScreen extends StatelessWidget {
  const CompoundInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>?>(
      future: FirestoreNotesService.getNote(
        module: 'WTW134',
        theme: 'theme3_exponential_functions',
        subtopic: 'compound_interest_and_e',
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
              title: const Text('Compound Interest and the Number e'),
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