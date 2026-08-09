import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class OriginScreen extends StatelessWidget {
  const OriginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Origin of DNA Replication",
      images: [
        "assets/modules/mlb111/Origin.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Origin",
      ),
      notes: [

        "DNA replication is one of the most important processes in biology because every new cell must receive a complete copy of the genetic information. Before a cell divides, its DNA must be copied accurately so that no genetic information is lost.",

        "",

        "### Why Must DNA Replicate?",

        "Imagine a teacher has only one textbook but needs to give identical textbooks to two students. Before handing them out, the teacher must first make an exact copy of the original book. If the book is not copied, only one student receives the information while the other has nothing.",

        "Cells face the same problem.",

        "Every time a cell divides, TWO daughter cells are produced.",

        "Each daughter cell needs a COMPLETE copy of DNA.",

        "If DNA were not copied before division:",
        "• One daughter cell might receive all the DNA.",
        "• The other daughter cell might receive incomplete DNA.",
        "• Important genes would be missing.",
        "• The daughter cell would probably die or function incorrectly.",

        "DNA replication ensures that genetic information is preserved from one generation of cells to the next. This preservation of genetic information is called genetic continuity.",

        "EXAM TIP: DNA replication ensures genetic continuity by producing identical copies of DNA before cell division.",

        "",

        "[IMAGE]",

        "",

        "### When Does DNA Replication Occur?",

        "DNA replication occurs during the S (Synthesis) Phase of Interphase.",

        "You learnt previously that the cell cycle consists of:",
        "• G₁ Phase",
        "• S Phase",
        "• G₂ Phase",
        "• Mitosis",

        "The S phase is called the Synthesis phase because NEW DNA is synthesised (copied).",

        "By the end of the S phase:",
        "• Every chromosome has been copied.",
        "• Every chromosome now consists of TWO identical sister chromatids.",
        "• The cell is fully prepared to enter mitosis.",

        "MEMORY TRICK: S Phase = Synthesis of DNA.",

        "",

        "### Where Does DNA Replication Begin?",

        "One common misunderstanding is that replication starts from one end of the chromosome and continues all the way to the other end.",

        "This is NOT true.",

        "Replication begins at special DNA sequences called ORIGINS OF REPLICATION.",

        "An Origin of Replication is a specific location on DNA where the replication machinery first assembles and begins copying DNA.",

        "Think of an origin as the 'starting line' of DNA replication.",

        "Without an origin:",
        "• Helicase would not know where to begin opening DNA.",
        "• DNA Polymerase would not know where to begin building DNA.",
        "• Replication could not start.",

        "EXAM TIP: Replication begins at Origins of Replication, not randomly along DNA.",

        "",

        "### Why Do Eukaryotes Have MANY Origins?",

        "Human DNA is extremely long.",

        "Each chromosome contains millions to billions of base pairs.",

        "If replication started from only ONE origin, copying the entire chromosome would take far too long.",

        "Instead, eukaryotic chromosomes contain MANY origins of replication.",

        "Each origin starts replication at the same time.",

        "This allows many different sections of the chromosome to be copied simultaneously.",

        "As a result:",
        "• DNA replication becomes much faster.",
        "• The entire genome can be copied before cell division.",

        "Real-life example:",

        "Imagine cleaning an entire football stadium.",

        "If only ONE cleaner works, the job takes many hours.",

        "If 500 cleaners start at different entrances simultaneously, the stadium is cleaned much faster.",

        "Multiple Origins of Replication work exactly the same way.",

        "",

        "### Replication Bubble",

        "When replication begins at an origin, Helicase starts separating the two DNA strands.",

        "This creates an open region in the DNA called the Replication Bubble.",

        "Inside this bubble, the DNA is temporarily unzipped so that each strand can be copied.",

        "The replication bubble continues growing larger as replication progresses.",

        "The bubble itself is not an enzyme.",

        "It is simply the region where DNA is currently being copied.",

        "EXAM TIP: Replication Bubble = region where DNA has opened for replication.",

        "",

        "### Replication Fork",

        "At BOTH ends of the replication bubble is a Y-shaped structure called the Replication Fork.",

        "This is where active DNA replication is taking place.",

        "Each replication bubble has TWO replication forks.",

        "At each fork:",
        "• Helicase continues separating DNA.",
        "• DNA Polymerase builds new DNA.",
        "• Other replication enzymes work together.",

        "Because there are two forks moving away from the origin, DNA replication occurs in TWO directions at the same time.",

        "This process is called Bidirectional DNA Replication.",

        "Bidirectional replication makes DNA copying much faster.",

        "Real-life example:",

        "Imagine opening a zip in the middle of a jacket.",

        "Both sides of the zip move away from the centre simultaneously.",

        "DNA replication works exactly the same way.",

        "MEMORY TRICK: One Origin → One Bubble → Two Replication Forks.",

        "",

        "### Why Is This Arrangement Important?",

        "Using many origins, replication bubbles and two replication forks allows cells to copy enormous amounts of DNA accurately and efficiently before mitosis begins.",

        "Everything that happens next (the enzymes, leading strand, lagging strand and semi-conservative replication) takes place at the replication forks.",

        "The next section explains exactly HOW DNA is copied once replication has begun.",

        "",

        "PRACTICE QUESTION:\nA chromosome has only one origin of replication. After Helicase begins opening the DNA, what structures are immediately formed? Explain why these structures are important before DNA Polymerase can begin DNA synthesis.",

      ],
    );
  }
}