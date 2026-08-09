import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class SemiConservativeScreen extends StatelessWidget {
  const SemiConservativeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Semi-Conservative DNA Replication",
      images: [
        "assets/modules/mlb111/Semi_Conservative_Replication.png",
        "assets/modules/mlb111/Anti_Parallel_DNA.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Semi-Conservative",
      ),
      notes: [

        "DNA replication has now started at the Origin of Replication. The replication bubble has formed and the replication forks are moving in opposite directions. The next question is: How does the cell make an exact copy of DNA?",

        "",

        "### What Does 'Semi-Conservative' Mean?",

        "Scientists once believed DNA replication might work in different ways. They asked an important question:",

        "\"After replication, what happens to the original DNA strands?\"",


        "Three possible models were proposed:",

        "• Conservative Replication",
        "• Semi-Conservative Replication",
        "• Dispersive Replication",

        "Experiments later proved that DNA replication is SEMI-CONSERVATIVE.",

        "[IMAGE]",

        "",

        "### Understanding Semi-Conservative Replication",

        "The word 'conserve' means 'to keep'.",

        "'Semi' means 'half'.",

        "Therefore:",

        "Semi-Conservative = Half of the original DNA molecule is kept.",

        "When DNA replication finishes:",

        "• Each daughter DNA molecule contains ONE original (parental) strand.",
        "• Each daughter DNA molecule contains ONE newly synthesised strand.",

        "The original DNA molecule therefore produces TWO identical DNA molecules.",

        "Each new DNA molecule contains:",
        "• 50% original DNA",
        "• 50% newly made DNA",

        "EXAM TIP: Semi-conservative replication means each daughter DNA molecule consists of ONE old strand and ONE newly synthesised strand.",

        "",

        "### Why Is Semi-Conservative Replication Important?",

        "This method makes DNA replication extremely accurate.",

        "The original strand acts as a TEMPLATE.",

        "The template tells the cell exactly which nucleotide should be added next.",

        "Because the original strand already contains the correct sequence, the newly made strand automatically becomes an exact copy.",

        "Without the original strand acting as a template:",

        "• The cell would have no instructions.",
        "• Wrong nucleotides could be added.",
        "• Genetic information would quickly be lost.",

        "Think of tracing a picture.",

        "Instead of drawing from memory, you place tracing paper over the original image and copy every line exactly.",

        "DNA replication works in exactly the same way.",

        "",

        "### DNA Is Anti-Parallel",

        "One of the most confusing concepts for students is that the two DNA strands run in opposite directions.",

        "[IMAGE]",

        "",

        "Every DNA strand has two ends:",

        "• 5' (Five Prime)",
        "• 3' (Three Prime)",

        "One strand runs:",

        "5' → 3'",

        "The opposite strand runs:",

        "3' → 5'",

        "This opposite arrangement is called ANTI-PARALLEL.",

        "The two strands are therefore not pointing in the same direction.",

        "MEMORY TRICK: Anti = Opposite. Parallel = Side-by-side. Anti-parallel = Side-by-side but facing opposite directions.",

        "",

        "### Why Are DNA Strands Anti-Parallel?",

        "The structure of DNA only remains stable when the sugar-phosphate backbones face opposite directions.",

        "This arrangement allows:",

        "• Correct hydrogen bond formation.",
        "• Stable double-helix formation.",
        "• Accurate DNA replication.",
        "• Proper functioning of replication enzymes.",

        "Without the anti-parallel arrangement:",

        "• Complementary bases could not align properly.",
        "• The double helix would become unstable.",
        "• DNA Polymerase could not copy DNA correctly.",

        "",

        "### DNA Polymerase Can Only Work One Way",

        "Now comes one of the most important ideas in DNA replication.",

        "DNA Polymerase can ONLY build DNA in ONE direction:",

        "5' → 3'",

        "It cannot synthesise DNA from 3' → 5'.",

        "This is NOT because DNA Polymerase chooses to.",

        "Its enzyme structure physically prevents it from adding nucleotides in the opposite direction.",

        "Because DNA is anti-parallel:",

        "• One template strand is already in the correct direction.",
        "• The other template strand is facing the opposite direction.",

        "This creates a problem that the cell must solve.",

        "That problem leads to the formation of:",

        "• The Leading Strand",
        "• The Lagging Strand",

        "These two strands are copied differently, even though they both end up producing identical DNA.",

        "",

        "### Why Students Confuse This",

        "Many students think:",

        "\"If DNA Polymerase only works 5' → 3', then how is the other strand copied?\"",

        "That is exactly the question the next section answers.",

        "The cell has developed an ingenious solution using RNA primers, Okazaki fragments and several specialised enzymes.",

        "",

        "PRACTICE QUESTION:\nExplain why DNA replication is called semi-conservative. Then explain why the anti-parallel arrangement of DNA creates a problem that requires the formation of a leading strand and a lagging strand.",

      ],
    );
  }
}