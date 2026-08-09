import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class StrandsScreen extends StatelessWidget {
  const StrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Leading and Lagging Strands",
      images: [
        "assets/modules/mlb111/Leading_and_Lagging_Strands.png",

      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Strands",
      ),
      notes: [

        "The DNA molecule has now been opened by Helicase, the twisting has been relieved by Topoisomerase, and Single-Stranded Binding Proteins are keeping the DNA strands apart. The next step is copying the DNA. However, because DNA is anti-parallel, copying both strands is not as simple as it first appears.",

        "",

        "### The Problem",

        "Earlier you learnt two important facts:",

        "• DNA strands are anti-parallel.",
        "• DNA Polymerase can ONLY build DNA in the 5' → 3' direction.",

        "These two facts create one of the biggest challenges during DNA replication.",

        "One DNA template is facing the correct direction for DNA Polymerase.",

        "The other template faces the opposite direction.",

        "Since DNA Polymerase cannot work backwards, the cell must solve this problem using two different methods of DNA synthesis.",

        "This produces the Leading Strand and the Lagging Strand.",

        "EXAM TIP: The Leading and Lagging strands exist ONLY because DNA is anti-parallel and DNA Polymerase can only synthesise DNA in the 5' → 3' direction.",

        "",

        "[IMAGE]",

        "",

        "### The Leading Strand",

        "The Leading Strand is the easier strand to copy.",

        "Its template strand is already positioned so that DNA Polymerase can continuously build the new strand as Helicase opens the DNA.",

        "Characteristics of the Leading Strand:",

        "• Synthesised continuously.",
        "• DNA Polymerase never stops.",
        "• Only ONE RNA primer is required.",
        "• Built in the same direction as the replication fork.",

        "Imagine painting a straight road while someone keeps extending it in front of you.",

        "You simply keep painting without stopping.",

        "That is how the Leading Strand is synthesised.",

        "",

        "### The Lagging Strand",

        "The Lagging Strand is much more complicated.",

        "Its template strand faces the opposite direction.",

        "Since DNA Polymerase cannot synthesise DNA backwards, it must repeatedly stop and restart DNA synthesis.",

        "Instead of making one long DNA strand, it builds many small DNA pieces.",

        "These short DNA pieces are called OKAZAKI FRAGMENTS.",

        "",

        "",

        "### Okazaki Fragments",

        "Okazaki Fragments are short DNA segments produced on the Lagging Strand.",

        "Each fragment is produced separately.",

        "After one fragment is completed, DNA Polymerase starts another fragment closer to the replication fork.",

        "Eventually all the fragments are joined together to produce one complete DNA strand.",

        "Characteristics of Okazaki Fragments:",

        "• Found ONLY on the Lagging Strand.",
        "• Produced discontinuously.",
        "• Each fragment starts with its own RNA primer.",
        "• Joined together later by DNA Ligase.",

        "MEMORY TRICK: Lagging = Little pieces (Okazaki fragments).",

        "",

        "### Why Doesn't the Leading Strand Need Okazaki Fragments?",

        "This is a common exam question.",

        "The Leading Strand template is already orientated correctly.",

        "DNA Polymerase simply follows Helicase continuously.",

        "There is never a need to stop and restart.",

        "The Lagging Strand, however, constantly has to wait for Helicase to expose more DNA before another fragment can be made.",

        "",

        "### Comparing the Two Strands",

        "Leading Strand:",

        "• Continuous synthesis.",
        "• One RNA primer.",
        "• No Okazaki fragments.",
        "• Same direction as replication fork.",

        "",

        "Lagging Strand:",

        "• Discontinuous synthesis.",
        "• Many RNA primers.",
        "• Contains Okazaki fragments.",
        "• Opposite direction relative to the replication fork.",

        "",

        "### Why Is This Arrangement Still Efficient?",

        "Although the Lagging Strand appears slower, both strands are actually copied at almost the same overall rate.",

        "This is because DNA Polymerase rapidly produces one Okazaki fragment after another while the Leading Strand is being synthesised continuously.",

        "By the time replication finishes, both daughter DNA molecules are completed together.",

        "",

        "### What Still Needs to Happen?",

        "At this stage:",

        "• Helicase has opened the DNA.",
        "• Topoisomerase has relieved twisting.",
        "• SSB proteins keep strands apart.",
        "• Leading Strand is synthesised continuously.",
        "• Lagging Strand contains many Okazaki fragments.",

        "However, the DNA is STILL incomplete.",

        "Why?",

        "Because every new DNA fragment begins with an RNA primer, not DNA.",

        "Those RNA primers must still be removed, replaced with DNA, and all fragments permanently joined together.",

        "The next section explains how Primase, DNA Polymerase I and DNA Ligase complete DNA replication.",

        "",

        "PRACTICE QUESTION:\nExplain why Okazaki fragments are produced on the Lagging Strand but not on the Leading Strand. Your answer should include the anti-parallel structure of DNA and the direction in which DNA Polymerase synthesises DNA.",

      ],
    );
  }
}