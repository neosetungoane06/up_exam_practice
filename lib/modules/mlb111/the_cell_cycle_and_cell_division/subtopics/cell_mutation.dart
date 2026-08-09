import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';

const List<String> notes = [

"Mutations are one of the most important concepts in Biology because they explain why organisms are different from one another, why evolution occurs, and why some diseases such as cancer and sickle-cell anaemia develop.",

"",

"A mutation is simply **a permanent change in the DNA sequence**.",

"",

"Most people think mutations are always harmful, but this is not true.",

"",

"Some mutations have no effect at all, some are beneficial, while others can be harmful.",

"",

"### What is a Mutation?",

"A mutation occurs when the order of nucleotides (A, T, C and G) in DNA changes.",

"",

"[IMAGE]",

"",

"Remember that DNA is like an instruction manual used to build proteins.",

"",

"If the instructions change, the protein being built may also change.",

"",

"Think about the sentence:",

"",

"THE CAT ATE THE RAT",

"",

"If one letter changes:",

"",

"THE BAT ATE THE RAT",

"",

"The sentence still makes sense, but its meaning has changed.",

"",

"DNA mutations work in a very similar way.",

"",

"EXAM TIP: A mutation changes the DNA sequence. It does NOT always change the protein.",

"",

"### How Do Mutations Occur?",

"Mutations can happen naturally or be caused by external factors.",

"",

"Natural causes include:",

"",

"• Mistakes during DNA replication.",

"• Errors during cell division.",

"",

"Environmental causes (mutagens) include:",

"",

"• Ultraviolet (UV) radiation.",

"• X-rays.",

"• Cigarette smoke.",

"• Certain chemicals.",

"• Some viruses.",

"",

"The body has repair enzymes that fix most DNA mistakes, but some mutations escape repair.",

"",

"### Are All Mutations Harmful?",

"No.",

"",

"There are three possible outcomes.",

"",

"• Harmful mutations.",

"• Beneficial mutations.",

"• Neutral mutations.",

"",

"#### Harmful Mutations",

"These reduce an organism's ability to survive or function normally.",

"",

"Examples include:",

"",

"• Sickle-cell disease.",

"• Cystic fibrosis.",

"• Some cancers.",

"",

"#### Beneficial Mutations",

"These improve survival or provide an advantage.",

"",

"Examples include:",

"",

"• Antibiotic resistance in bacteria.",

"• Lactose tolerance in some human populations.",

"• Improved disease resistance.",

"",

"#### Neutral Mutations",

"These produce no noticeable effect.",

"",

"They may occur in DNA regions that do not affect proteins or they may change DNA without changing the amino acid produced.",

"",

"MEMORY TRICK:",

"Harmful → Causes disease",

"Beneficial → Improves survival",

"Neutral → No observable effect",

"",

"### Major Types of DNA Mutations",

"There are three main DNA mutations that every Biology student must understand.",

"",

"• Substitution",

"• Insertion",

"• Deletion",

"### Substitution Mutation",

"A substitution mutation occurs when **one nucleotide is replaced by another**.",

"",

"For example:",

"",

"A-T-G-C-C-A",

"↓",

"A-T-A-C-C-A",

"",

"Only one nucleotide changes.",

"",

"Depending on where the change occurs, three outcomes are possible:",

"",

"• **Silent mutation** – the amino acid remains the same because of the redundancy of the genetic code.",

"• **Missense mutation** – one amino acid changes, which may alter the protein's function.",

"• **Nonsense mutation** – the mutation creates a STOP codon too early, producing a shortened protein that usually cannot function properly.",

"",

"### Insertion Mutation",

"An insertion mutation occurs when one or more nucleotides are added into the DNA sequence.",

"",

"This shifts how every codon after the insertion is read.",

"",

"Because codons are read in groups of three, inserting a single nucleotide changes every codon after the mutation.",

"",

"### Deletion Mutation",

"A deletion mutation occurs when one or more nucleotides are removed from the DNA sequence.",

"",

"Like insertion, deleting a nucleotide also changes the reading frame of the gene.",

"",

"This often produces a completely different protein.",

"",

"### Frameshift Mutation",

"Insertions and deletions usually cause a **frameshift mutation**.",

"",

"Think of a sentence where every three letters form a word:",

"",

"THE CAT ATE THE RAT",

"",

"Remove the first 'C' and read again:",

"",

"THE ATA TET HER AT",

"",

"The entire message changes.",

"",

"The same thing happens in DNA. One missing or extra nucleotide changes how every codon afterwards is read.",

"",

"EXAM TIP: Frameshift mutations are usually much more severe than substitution mutations because they affect many amino acids instead of just one.",

"",

"### Why Should We Study Mutations?",

"Mutations are not only associated with disease—they are also the source of **genetic variation**.",

"",

"Without mutations:",

"",

"• There would be no evolution.",

"• Species could not adapt to changing environments.",

"• Natural selection would have nothing to act upon.",

"",

"At the same time, harmful mutations remind us why DNA replication, repair enzymes and cell-cycle checkpoints are so important.",

"",

"They protect our cells from accumulating dangerous mutations that may eventually lead to diseases such as cancer.",

"",

"### What You Must Remember for Exams",

"• A mutation is a permanent change in the DNA sequence.",

"• Mutations may be harmful, beneficial or neutral.",

"• Substitution = one nucleotide is replaced.",

"• Insertion = nucleotide(s) added.",

"• Deletion = nucleotide(s) removed.",

"• Insertions and deletions usually cause frameshift mutations.",

"• Silent mutations do not change the amino acid.",

"• Missense mutations change one amino acid.",

"• Nonsense mutations create a premature STOP codon.",

"• Mutations are the source of genetic variation but can also cause genetic diseases and cancer."

];

const List<String> images = [
  "assets/modules/mlb111/Types_of_Mutation.png",
];

class CellMutationScreen extends StatelessWidget {
  const CellMutationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Mutations",
      notes: notes,
      images: images,
    );
  }
}