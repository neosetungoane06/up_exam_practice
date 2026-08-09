import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class TelomeraseAndTelomereScreen extends StatelessWidget {
  const TelomeraseAndTelomereScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Telomeres and Telomerase",
      images: [
        "assets/modules/mlb111/Telomere_Telomerase.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Telomerase and Telomere",
      ),
      notes: [

        "During DNA replication, scientists discovered an interesting problem. Although DNA Polymerase copies almost the entire chromosome, it cannot completely copy the very end of a linear chromosome. This is called the End Replication Problem.",

        "",

        "### The End Replication Problem",

        "Earlier you learnt that DNA Polymerase can only build DNA in the 5' → 3' direction and that every new strand begins with an RNA primer.",

        "After replication finishes, the RNA primer found at the very end of the lagging strand is removed.",

        "Normally DNA Polymerase would replace that RNA primer with DNA.",

        "However, at the end of a chromosome there is no available DNA fragment in front of the primer for DNA Polymerase to attach to.",

        "As a result, that small section cannot be replaced.",

        "Therefore every time DNA replication occurs, the chromosome becomes slightly shorter.",

        "This does NOT mean DNA Polymerase is defective.",

        "It is simply a consequence of how DNA replication works on linear chromosomes.",

        "EXAM TIP: The chromosome shortens because the final RNA primer cannot be replaced with DNA.",

        "",

        "[IMAGE]",

        "",

        "### Why Is This a Problem?",

        "Imagine photocopying a page but every time you copy it, the last sentence is cut off.",

        "If you repeated this hundreds of times, eventually important information would disappear.",

        "Exactly the same problem would happen inside chromosomes.",

        "If important genes were located right at the chromosome ends, pieces of those genes would be lost after every cell division.",

        "Eventually the genes would no longer function correctly.",

        "Cells therefore need a way to protect their important genetic information.",

        "",

        "### Telomeres",

        "The solution is the TELomere.",

        "Telomeres are protective DNA regions found at BOTH ends of every linear chromosome.",

        "Instead of containing important genes, telomeres contain long repeating DNA sequences that do not code for proteins.",

        "These repeated sequences act as protective buffers.",

        "Whenever a chromosome shortens during replication, the telomere shortens first rather than important genes.",

        "Characteristics of Telomeres:",

        "• Located at the ends of chromosomes.",
        "• Consist of repetitive DNA sequences.",
        "• Do not contain essential protein-coding genes.",
        "• Protect chromosomes from losing important genetic information.",
        "• Gradually shorten after each cell division.",

        "MEMORY TRICK: Telomeres are the chromosome's safety buffer.",

        "",

        "### A Simple Analogy",

        "Think about a shoelace.",

        "At each end is a small plastic tip.",

        "That plastic tip prevents the lace from fraying.",

        "If the plastic tip wears away, eventually the shoelace begins to unravel.",

        "Telomeres perform exactly the same protective role for chromosomes.",

        "The telomere may shorten, but the important genes remain protected.",

        "",

        "### What Happens When Telomeres Become Too Short?",

        "Telomeres cannot protect chromosomes forever.",

        "After many rounds of cell division they eventually become critically short.",

        "Once this happens the cell recognises that the chromosome is no longer adequately protected.",

        "The cell usually responds by:",

        "• Stopping further cell division (cellular senescence).",
        "• Undergoing apoptosis if the damage is severe.",

        "This is one reason why normal body cells cannot divide indefinitely.",

        "",

        "### Telomerase",

        "If chromosomes always became shorter, how do stem cells continue dividing throughout life?",

        "The answer is an enzyme called TELOMERASE.",

        "Telomerase rebuilds telomeres by adding new repetitive DNA sequences back onto chromosome ends.",

        "This replaces much of the DNA that was lost during replication.",

        "In simple terms:",

        "Telomeres are the protective caps.",

        "Telomerase repairs those protective caps.",

        "Characteristics of Telomerase:",

        "• It is an enzyme.",
        "• Extends telomeres.",
        "• Adds repeated DNA sequences.",
        "• Reduces chromosome shortening.",
        "• Allows cells to continue dividing.",

        "",

        "### Where Is Telomerase Active?",

        "Not every cell contains active telomerase.",

        "High telomerase activity is found in:",

        "• Stem cells.",
        "• Germ (reproductive) cells.",
        "• Early embryonic cells.",

        "These cells need to divide many times, so maintaining telomeres is essential.",

        "Most ordinary body (somatic) cells contain very little or no active telomerase.",

        "Their telomeres therefore shorten gradually as they continue dividing throughout life.",

        "",

        "### Telomerase and Cancer",

        "Cancer cells behave differently.",

        "Normally, short telomeres eventually stop cell division.",

        "Many cancer cells solve this problem by switching telomerase back on.",

        "Because telomerase continually rebuilds their telomeres:",

        "• Their chromosomes remain protected.",
        "• They avoid normal ageing.",
        "• They continue dividing repeatedly.",

        "This is one reason cancer cells can become 'immortal'.",

        "EXAM TIP: High telomerase activity is a characteristic of many cancer cells.",

        "",

        "### Comparing Telomeres and Telomerase",

        "Telomeres:",

        "• Protective DNA sequences.",
        "• Located at chromosome ends.",
        "• Become shorter after replication.",
        "• Protect genes.",

        "",

        "Telomerase:",

        "• Enzyme.",
        "• Rebuilds telomeres.",
        "• Adds repetitive DNA.",
        "• Allows continued cell division.",

        "",

        "### Big Picture",

        "DNA replication is highly accurate, but the ends of linear chromosomes cannot be copied completely.",

        "Instead of losing important genes, cells sacrifice small pieces of telomere DNA after every replication.",

        "In specialised cells, telomerase restores these telomeres, allowing chromosomes to remain protected through many rounds of cell division.",

        "",

        "PRACTICE QUESTION:\nExplain why chromosomes become shorter after DNA replication. Describe the roles of BOTH telomeres and telomerase, and explain why high telomerase activity is commonly found in cancer cells.",

      ],
    );
  }
}
