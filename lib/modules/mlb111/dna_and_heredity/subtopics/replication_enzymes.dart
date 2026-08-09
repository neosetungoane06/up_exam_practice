import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class ReplicationEnzymesScreen extends StatelessWidget {
  const ReplicationEnzymesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "DNA Replication Enzymes",
      images: [
        "assets/modules/mlb111/Helicase_to_Ligase.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Replication Enzymes",
      ),
      notes: [

        "DNA replication is impossible without specialised proteins called enzymes. Every enzyme performs one specific task. Think of DNA replication like building a house. One worker cannot do every job. Instead, different specialists work together in the correct order. DNA replication works exactly the same way.",

        "",

        "### Why Are Replication Enzymes Needed?",

        "DNA is an extremely stable molecule. The two strands are tightly held together, protected and organised. Before DNA can be copied, the molecule must first be opened, stabilised, copied, checked for mistakes and finally sealed together.",

        "No single enzyme can perform all these tasks.",

        "Instead, several enzymes cooperate as a replication team.",

        "EXAM TIP: Each replication enzyme has ONE specialised function. Together they produce an accurate copy of DNA.",

        "",

        "[IMAGE]",

        "",

        "### The Replication Team",

        "The major replication enzymes are:",

        "• Helicase",
        "• Topoisomerase",
        "• Single-Stranded Binding Proteins (SSBs)",
        "• Primase",
        "• DNA Polymerase III",
        "• DNA Polymerase I",
        "• DNA Ligase",

        "Each enzyme arrives at the replication fork in a particular order.",

        "",

        "### 1. Helicase – The DNA 'Unzipper'",

        "Helicase is usually the first enzyme students remember, but understanding WHY it is needed is far more important.",

        "DNA consists of two strands joined together by hydrogen bonds.",

        "Before DNA can be copied, those two strands must first separate.",

        "Helicase performs this job.",

        "It moves along the DNA molecule breaking the hydrogen bonds between complementary bases.",

        "As these hydrogen bonds break, the two DNA strands separate.",

        "This creates the replication fork where DNA synthesis occurs.",

        "Helicase DOES NOT cut phosphodiester bonds.",

        "It ONLY breaks hydrogen bonds.",

        "Without Helicase:",

        "• DNA remains closed.",
        "• DNA Polymerase cannot access the template strand.",
        "• Replication cannot begin.",

        "Real-life example:",

        "Imagine trying to photocopy pages from a closed textbook.",

        "Until someone opens the book, copying cannot start.",

        "Helicase is the person opening the textbook.",

        "MEMORY TRICK: Helicase = Helicopter opening the DNA zip.",

        "",

        "### 2. Topoisomerase – The Stress Reliever",

        "Many students stop thinking after Helicase opens DNA.",

        "However, opening DNA creates another problem.",

        "DNA is a twisted double helix.",

        "When Helicase opens one section, the DNA ahead becomes tightly twisted.",

        "This twisting is called SUPERCOILING.",

        "Imagine twisting one end of a rope.",

        "The rest of the rope becomes tighter and tighter.",

        "Exactly the same thing happens to DNA.",

        "Topoisomerase prevents this problem.",

        "It temporarily cuts one DNA strand, allows the DNA to rotate and remove the tension, then seals the strand again.",

        "Without Topoisomerase:",

        "• DNA becomes too tightly twisted.",
        "• Helicase cannot continue moving.",
        "• Replication eventually stops.",

        "Topoisomerase therefore protects DNA from breaking during replication.",

        "EXAM TIP: Topoisomerase removes supercoiling ahead of Helicase.",

        "",

        "### 3. Single-Stranded Binding Proteins (SSBs)",

        "After Helicase separates the DNA strands, another problem appears.",

        "Separated DNA strands naturally want to pair together again.",

        "If they rejoin, replication immediately stops.",

        "Single-Stranded Binding Proteins solve this problem.",

        "These proteins attach to each separated strand and keep the DNA open.",

        "Think of them as tiny clamps holding the DNA apart.",

        "Without SSB proteins:",

        "• DNA strands rejoin.",
        "• DNA Polymerase loses access.",
        "• Replication stops.",

        "Real-life example:",

        "Imagine opening a zip while someone keeps closing it behind you.",

        "SSB proteins are the clips holding the zip open.",

        "",

        "### How These Three Enzymes Work Together",

        "Notice that DNA Polymerase has still NOT started making DNA.",

        "The first three enzymes simply prepare the DNA.",

        "Step 1:",
        "Helicase opens the DNA.",

        "Step 2:",
        "Topoisomerase removes twisting ahead of Helicase.",

        "Step 3:",
        "SSB proteins prevent the strands from joining together again.",

        "Only after these steps are complete can DNA synthesis begin.",

        "",

        "PRACTICE QUESTION:\nExplain why Helicase alone cannot complete DNA replication. In your answer include the roles of Topoisomerase and Single-Stranded Binding Proteins.",

        "",

        "### 4. Primase",

        "DNA Polymerase cannot start building a new DNA strand by itself.",

        "It can only ADD nucleotides onto an already existing strand. This creates a problem because when replication begins there is no strand available to extend.",

        "The enzyme that solves this problem is Primase.",

        "Primase produces a short RNA primer that gives DNA Polymerase a starting point.",

        "Think of Primase as laying the first brick before builders can continue constructing a wall.",

        "Without that first brick, construction cannot begin.",

        "Primase performs three important jobs:",

        "• Synthesises a short RNA primer.",
        "• Provides a free 3' OH group for DNA Polymerase.",
        "• Allows DNA replication to begin.",

        "",

        "Why is the primer made from RNA instead of DNA?",

        "RNA primers are quick to produce and are only temporary. Once DNA Polymerase has copied enough DNA, the RNA primer is removed and replaced with DNA.",

        "",

        "What happens if Primase is absent?",

        "• No RNA primer is produced.",
        "• DNA Polymerase has nowhere to begin.",
        "• DNA replication cannot start.",
        "• No daughter DNA molecules can be formed.",

        "",

        "MEMORY TRICK: Primase is the STARTER of DNA replication.",

        "",

        "### 5. DNA Polymerase III",

        "Once Primase has produced an RNA primer, DNA Polymerase III begins building the new DNA strand.",

        "DNA Polymerase III is the MAIN DNA-building enzyme during replication.",

        "Its job is to add DNA nucleotides one at a time using complementary base pairing.",

        "For example:",

        "Template DNA: A T G C",

        "DNA Polymerase III builds:",

        "T A C G",

        "",

        "DNA Polymerase III performs several important functions:",

        "• Reads the template strand.",
        "• Adds complementary DNA nucleotides.",
        "• Synthesises DNA only in the 5' → 3' direction.",
        "• Proofreads newly synthesised DNA for mistakes.",

        "",

        "Think of DNA Polymerase III as the main construction worker building the new DNA strand brick by brick.",

        "",

        "Why can it only work in the 5' → 3' direction?",

        "The enzyme's active site is designed so that new nucleotides can only be attached to the free 3' OH end of a growing strand.",

        "Because of this, every new DNA strand always grows from 5' toward 3'.",

        "",

        "What happens if DNA Polymerase III is missing?",

        "• DNA cannot be copied.",
        "• New strands cannot be synthesised.",
        "• DNA replication stops completely.",
        "• Cells cannot divide successfully.",

        "",

        "EXAM TIP: DNA Polymerase III is the MAIN enzyme responsible for DNA synthesis.",

        "",

        "### 6. DNA Polymerase I",

        "After DNA Polymerase III has copied most of the DNA, one problem remains.",

        "The RNA primers placed by Primase are still present inside the DNA molecule.",

        "RNA cannot remain there permanently because the final DNA molecule must contain ONLY DNA.",

        "DNA Polymerase I solves this problem.",

        "It removes the RNA primer and replaces it with DNA nucleotides.",

        "Its functions are:",

        "• Removes RNA primers.",
        "• Replaces RNA with DNA.",
        "• Helps produce a complete DNA strand.",

        "",

        "Imagine painting a wall after removing masking tape.",

        "Primase temporarily placed the masking tape (RNA primer).",

        "DNA Polymerase I removes it and fills the remaining gap with the final paint (DNA).",

        "",

        "What happens if DNA Polymerase I is absent?",

        "• RNA primers remain inside DNA.",
        "• DNA molecules remain incomplete.",
        "• DNA becomes unstable.",
        "• Replication cannot finish correctly.",

        "",

        "MEMORY TRICK: Polymerase III BUILDS. Polymerase I CLEANS UP.",

        "",

        "### 7. DNA Ligase",

        "Even after DNA Polymerase I replaces every RNA primer, the lagging strand is still not completely continuous.",

        "Remember that the lagging strand was produced as many Okazaki fragments.",

        "Each fragment is complete, but they are not yet connected.",

        "DNA Ligase acts like molecular glue.",

        "It joins neighbouring Okazaki fragments together by forming phosphodiester bonds.",

        "DNA Ligase performs three important functions:",

        "• Seals gaps between Okazaki fragments.",
        "• Forms phosphodiester bonds.",
        "• Produces one continuous DNA strand.",

        "",

        "Think about repairing a broken necklace.",

        "Each bead already exists, but the necklace is useless until someone reconnects all the pieces.",

        "DNA Ligase reconnects those DNA pieces.",

        "",

        "What happens if DNA Ligase is absent?",

        "• Okazaki fragments remain separate.",
        "• The lagging strand stays broken.",
        "• DNA replication remains incomplete.",
        "• Chromosomes become unstable.",

        "",

        "EXAM TIP: DNA Ligase joins Okazaki fragments by forming phosphodiester bonds.",

        "",

        "### Putting the Enzymes Together",

        "DNA replication only succeeds because every enzyme performs a different job.",

        "1. Helicase opens the DNA double helix.",
        "2. Topoisomerase relieves twisting ahead of Helicase.",
        "3. SSB proteins keep the strands separated.",
        "4. Primase lays down RNA primers.",
        "5. DNA Polymerase III builds the new DNA strands.",
        "6. DNA Polymerase I removes RNA primers and replaces them with DNA.",
        "7. DNA Ligase seals the remaining gaps between Okazaki fragments.",

        "",

        "Notice that no enzyme can replace another.",

        "Each one performs a specialised task that the others cannot perform.",

        "",

        "PRACTICE QUESTION:\nA scientist removes Primase from a cell but leaves every other replication enzyme intact. Explain why DNA replication still cannot occur. Then explain what would happen if DNA Ligase alone were removed instead.",

      ],
    );
  }
}