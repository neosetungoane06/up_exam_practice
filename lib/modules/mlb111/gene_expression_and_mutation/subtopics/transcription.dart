import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class TranscriptionScreen extends StatelessWidget {
  const TranscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NotesScreen(
      title: "Transcription",
      images: [
        "assets/modules/mlb111/Transcription_until_Proteins.png",
        "assets/modules/mlb111/Initiators_Promoters.png",
        "assets/modules/mlb111/Initiators_Promoters.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Transcription",
      ),
      notes: [

        "Transcription is the first stage of gene expression. During transcription, the information stored inside DNA is copied into a molecule called messenger RNA (mRNA). DNA never leaves the nucleus, so the cell creates an RNA copy that can carry the genetic instructions to the ribosome where proteins are built.",

        "[IMAGE]",

        "### Why Transcription Is Necessary",

        "DNA is the permanent storage molecule of genetic information. Because DNA is extremely important, cells protect it inside the nucleus instead of allowing it to travel throughout the cell.",

        "Instead of moving DNA, the cell makes a temporary working copy called messenger RNA (mRNA).",

        "This is similar to using the original textbook only to make photocopies for students instead of giving everyone the original book.",

        "• DNA remains protected inside the nucleus.",
        "• mRNA carries the information outside the nucleus.",
        "• Ribosomes use the mRNA instructions to build proteins.",
        "• This prevents damage to the original DNA.",

        "EXAM TIP: DNA stores information permanently, while mRNA carries temporary copies of that information.",

        "",

        "### Where Transcription Occurs",

        "In eukaryotic cells, transcription occurs inside the nucleus because that is where DNA is located.",

        "After transcription is complete, the newly produced mRNA leaves the nucleus through nuclear pores and travels into the cytoplasm to begin translation.",

        "• DNA stays inside the nucleus.",
        "• mRNA leaves the nucleus.",
        "• Translation occurs on ribosomes in the cytoplasm.",

        "",

        "### The Goal of Transcription",

        "The objective of transcription is not to produce proteins directly. Instead, its purpose is to produce an accurate RNA copy of one gene.",

        "Only one gene is copied at a time. Cells do not copy the entire DNA molecule because different proteins are needed at different times.",

        "This allows cells to carefully regulate which proteins are produced and when they are produced.",

        "• Only the required gene is copied.",
        "• Not every gene is active at the same time.",
        "• Different cells express different genes.",
        "• Gene expression allows specialised cell functions.",

        "",

        "### The Transcription Machinery",

        "[IMAGE]",

        "Before RNA Polymerase can begin making RNA, the cell must identify exactly where the gene starts.",

        "Several DNA sequences and proteins work together to ensure that the correct gene is copied.",

        "",

        "### The Initiator",

        "The initiator is a short DNA sequence located near the beginning of a gene.",

        "Its role is to recruit proteins that assemble the transcription machinery at the correct location.",

        "Without the initiator, the proteins responsible for transcription would struggle to locate the correct gene.",

        "• Located near the beginning of a gene.",
        "• Helps recruit transcription proteins.",
        "• Assists transcription initiation.",

        "",

        "### The Promoter",

        "The promoter is a specialised DNA sequence where RNA Polymerase binds before transcription begins.",

        "Think of the promoter as the gene's starting line. It tells RNA Polymerase exactly where transcription should begin.",

        "Promoters also help regulate whether a gene should be expressed. Some promoters are highly active, while others are only activated under specific conditions.",

        "• RNA Polymerase binds here.",
        "• Marks the beginning of transcription.",
        "• Helps regulate gene expression.",
        "• Found upstream of the gene.",

        "MEMORY TRICK: Promoter = Parking place for RNA Polymerase.",


        "",

        "### RNA Polymerase",

        "RNA Polymerase is the main enzyme responsible for transcription. It performs a role similar to DNA Polymerase during DNA replication, but instead of making DNA, it builds RNA.",

        "RNA Polymerase binds to the promoter, separates a small section of the DNA strands, reads the template strand, and joins together RNA nucleotides to produce an mRNA molecule.",

        "Unlike DNA Polymerase, RNA Polymerase does not require a primer to begin synthesis. It can start building RNA immediately after binding to the promoter.",

        "• Binds to the promoter.",
        "• Opens a small section of DNA.",
        "• Reads the template strand.",
        "• Synthesises RNA in the 5' → 3' direction.",
        "• Stops when it reaches the terminator.",

        "PRACTICE: Compare DNA Polymerase and RNA Polymerase. Ask yourself what each enzyme builds, where each process occurs, and whether each enzyme requires a primer.",

        "",

        "### Which DNA Strand Is Read?",

        "Although DNA consists of two complementary strands, RNA Polymerase only reads ONE strand during transcription.",

        "This strand is called the template strand (also called the antisense strand).",

        "The second strand is called the coding strand (or sense strand). Although RNA Polymerase does not read it directly, its sequence is almost identical to the mRNA that will be produced.",

        "The only difference is that DNA contains Thymine (T), while RNA contains Uracil (U).",

        "• Template strand = read by RNA Polymerase.",
        "• Coding strand = not read directly.",
        "• mRNA is complementary to the template strand.",
        "• mRNA matches the coding strand except U replaces T.",

        "EXAM TIP: Students often confuse the coding strand and template strand. Remember: RNA Polymerase ALWAYS reads the template strand.",

        "",

        "### Why Is It Called The Coding Strand?",

        "The coding strand is called the coding strand because its sequence represents the genetic code that will eventually determine the amino acid sequence of the protein.",

        "Even though RNA Polymerase does not read it directly, the mRNA produced has almost exactly the same sequence as the coding strand.",

        "Example:",

        "Coding DNA:",
        "A T G C C T A",

        "Template DNA:",
        "T A C G G A T",

        "mRNA:",
        "A U G C C U A",

        "Notice that the mRNA is identical to the coding strand except that every T has become U.",

        "MEMORY TRICK: Coding strand = looks like the mRNA. Template strand = builds the mRNA.",

        "",

        "### RNA Base Pairing",

        "RNA follows complementary base pairing rules while it is being synthesised.",

        "Because RNA contains Uracil instead of Thymine, one pairing rule changes.",

        "DNA A → RNA U",
        "DNA T → RNA A",
        "DNA C → RNA G",
        "DNA G → RNA C",

        "As RNA Polymerase moves along the template strand, each exposed DNA base attracts its complementary RNA nucleotide. RNA Polymerase then joins these nucleotides together to form the growing RNA molecule.",

        "• DNA A pairs with RNA U.",
        "• DNA T pairs with RNA A.",
        "• DNA C pairs with RNA G.",
        "• DNA G pairs with RNA C.",

        "EXAM TIP: During transcription, NEVER pair DNA with DNA rules. Always remember RNA uses Uracil (U) instead of Thymine (T).",

        "",
        "### Promoter",

        "The promoter is a specific DNA sequence located just before the beginning of a gene. It does not code for a protein. Instead, it acts as the recognition and binding site for RNA polymerase and transcription factors.",

        "Without a promoter, RNA polymerase would not know where a gene begins. As a result, the correct gene would never be transcribed.",

        "[IMAGE]",

        "The promoter therefore acts like a start signal that tells the transcription machinery:",

        "• This is the correct gene.",
        "• Start transcription here.",
        "• Use the correct DNA strand as the template.",

        "Every gene has its own promoter, allowing different genes to be turned on or off depending on the needs of the cell.",

        "",
        "RNA polymerase binds to the promoter with the help of transcription factors. Once attached, the DNA double helix opens and transcription begins.",

        "",
        "MEMORY TRICK: Promoter = Promotes the START of transcription.",

        "",
        "### Terminator",

        "The terminator is a DNA sequence found at the end of a gene. Like the promoter, it does not code for a protein. Its function is to tell RNA polymerase where transcription must stop.",

        "When RNA polymerase reaches the terminator sequence, it receives a stop signal.",

        "At this point:",

        "• RNA polymerase stops building RNA.",
        "• The newly formed RNA molecule is released.",
        "• RNA polymerase detaches from the DNA.",
        "• The DNA strands join back together.",

        "",
        "The terminator is extremely important because it prevents RNA polymerase from copying DNA that does not belong to the gene.",

        "If there were no terminator, RNA polymerase would continue copying DNA beyond the gene, producing RNA molecules that are too long and contain incorrect genetic information.",

        "",
        "Think of the promoter and terminator as the punctuation marks of a gene:",

        "• Promoter = 'Start reading here.'",
        "• Terminator = 'Stop reading here.'",

        "",
        "EXAM TIP: RNA polymerase binds at the promoter and stops at the terminator.",

        "",
        "After transcription ends, the RNA molecule produced is called the **primary transcript (pre-mRNA)**. This RNA is not yet ready to make a protein because it still contains non-coding regions called introns.",

        "In the next subtopic (**RNA Processing**), you will learn how the primary transcript is modified through the addition of the **5' cap**, **poly-A tail**, and **RNA splicing**, where introns are removed and exons are joined together to produce a mature mRNA ready for translation."
      ],
    );
  }
}