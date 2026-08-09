import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';

const List<String> notes = [

"Chromosomes and chromatids are among the most tested concepts in Cell Biology. Many students confuse these terms because they look similar, but they describe different structures at different stages of the cell cycle.",

"",

"The key to understanding this topic is remembering that DNA changes its appearance depending on what the cell is doing. Most of the time DNA is loose and called chromatin. Just before cell division, it becomes tightly packed into chromosomes.",

"",

"### From DNA to Chromosome",

"DNA inside the nucleus is organised in several levels so that it can fit into a tiny space while still being accessible when needed.",

"",

"• DNA is the genetic material that stores hereditary information.",

"• DNA wraps around histone proteins.",

"• DNA + Histone proteins form chromatin.",

"• Chromatin coils and folds further to form chromosomes before cell division.",

"",

"Think of packing a long rope into a small backpack. If the rope remains loose, it becomes tangled. By coiling and folding it neatly, it occupies much less space. DNA behaves in exactly the same way.",

"",

"[IMAGE]",

"",

"EXAM TIP: Chromosomes are simply highly condensed chromatin that forms when the cell prepares to divide.",

"",

"### What Is a Chromosome?",

"A chromosome is a highly condensed structure made mainly of DNA and proteins. Chromosomes protect DNA during cell division and ensure that genetic information is distributed accurately to daughter cells.",

"",

"Each chromosome contains thousands of genes that carry instructions for building proteins and controlling cell activities.",

"",

"• A chromosome is made of DNA and histone proteins.",

"• Chromosomes become visible only when DNA condenses during cell division.",

"• Humans have 46 chromosomes in most body cells (23 pairs).",

"",

"Real-Life Example:",

"Imagine moving to another house. You would pack your clothes neatly into boxes before transporting them. Chromosomes are like those packed boxes—they protect DNA while it is being moved during cell division.",

"",

"### DNA Replication",

"Before a cell divides, it enters the S phase (Synthesis phase) of Interphase, where every DNA molecule is copied.",

"",

"After replication, the amount of DNA doubles, but the chromosome number does NOT double.",

"",

"For example:",

"• Before DNA replication: 46 chromosomes, each made of one DNA molecule.",

"• After DNA replication: Still 46 chromosomes, but each chromosome now consists of TWO identical DNA molecules.",

"",

"These identical DNA molecules are called sister chromatids.",

"",

"PRACTICE: Why does the chromosome number remain 46 after DNA replication even though the DNA amount doubles?",

"",

"### What Are Sister Chromatids?",

"Sister chromatids are two IDENTICAL copies of a chromosome that are produced during DNA replication.",

"",

"Because they were copied from the same DNA molecule, sister chromatids contain exactly the same genes and DNA sequence.",

"",

"• They are genetically identical.",

"• They remain attached until cell division.",

"• Eventually they separate so each daughter cell receives one complete chromosome.",

"",

"Think of making two identical photocopies of an important document. Both copies contain exactly the same information. Sister chromatids are identical biological copies of DNA.",

"",

"### What Holds Sister Chromatids Together?",

"Many students think sister chromatids simply 'stick together'. In reality, specialised proteins hold them together.",

"",

"The most important protein complex responsible for joining sister chromatids is called **cohesin**.",

"",

"• Cohesin forms a ring-like protein complex.",

"• It surrounds both sister chromatids.",

"• It prevents them from separating too early.",

"",

"Near the centre of the chromosome, cohesin is especially concentrated around the centromere.",

"",

"During anaphase, another protein called **separase** cuts the cohesin proteins, allowing the sister chromatids to separate and move to opposite poles of the cell.",

"",

"EXAM TIP: Cohesin holds sister chromatids together until anaphase.",

"",

"### What Is the Centromere?",

"The centromere is the specialised region where sister chromatids remain joined together.",

"",

"It is NOT glue and it is NOT another chromosome. It is simply a specific region of DNA where important proteins assemble.",

"",

"The centromere performs several important functions:",

"",

"• Keeps sister chromatids connected.",

"• Provides the attachment site for spindle fibres.",

"• Ensures chromosomes move correctly during cell division.",

"",

"### The Kinetochore",

"The kinetochore is a protein structure that forms on each side of the centromere.",

"",

"Spindle fibres do NOT attach directly to DNA. Instead, they attach to the kinetochore.",

"",

"Sequence to remember:",

"DNA → Centromere → Kinetochore → Spindle Fibre",

"",

"Real-Life Example:",

"Imagine two train carriages connected by a coupling. The coupling is like the centromere. The hooks where the locomotive pulls the train are like the kinetochores because that is where the pulling force is applied.",

"",

"### What Happens During Cell Division?",

"When the cell reaches anaphase of mitosis:",

"",

"• Cohesin proteins are broken.",

"• Sister chromatids separate.",

"• Each chromatid moves toward opposite poles of the cell.",

"",

"Once sister chromatids separate, each chromatid is no longer called a chromatid.",

"It is now considered an individual chromosome.",

"",

"MEMORY TRICK: Together = Sister Chromatids. Separated = Chromosomes.",

"",

"### Common Student Mistakes",

"• Thinking chromatin and chromatids are the same thing.",

"• Thinking chromosomes only contain one DNA molecule all the time.",

"• Thinking sister chromatids are different chromosomes.",

"• Thinking the centromere is what physically glues chromatids together instead of cohesin proteins.",

"• Thinking spindle fibres attach directly to DNA instead of the kinetochore.",

"",

"### What You Should Remember",

"• DNA wraps around histones to form chromatin.",

"• Chromatin condenses to form chromosomes.",

"• DNA replication produces sister chromatids.",

"• Sister chromatids are identical copies of one chromosome.",

"• Cohesin proteins hold sister chromatids together.",

"• The centromere is the joining region.",

"• The kinetochore is where spindle fibres attach.",

"• During anaphase, cohesin is broken and sister chromatids separate.",

"• Once separated, each chromatid becomes an individual chromosome.",

];

const List<String> images = [
  "assets/modules/mlb111/chromosome_chromatids.png",
];

class ChromatinAndChromatidsScreen extends StatelessWidget {
  const ChromatinAndChromatidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Chromosomes and Sister Chromatids",
      notes: notes,
      images: images,
    );
  }
}