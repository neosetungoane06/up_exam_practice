import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';

const List<String> notes = [

"Cells are the basic units of life, but they do not live forever. Throughout the life of an organism, cells continuously grow, perform specialised functions, repair damaged tissues and eventually divide to produce new cells. The orderly sequence of events that allows this to happen is called the cell cycle.",

"",

"The Cell Cycle is the series of events that takes place from the moment a cell is formed until it divides into two genetically identical daughter cells. Every stage of the cycle is carefully controlled to ensure that DNA is copied accurately and distributed equally.",

"",

"Understanding the cell cycle helps explain how organisms grow, how wounds heal, how reproduction occurs and why diseases such as cancer develop when the cycle is no longer properly regulated.",

"",

"[IMAGE]",

"",

"EXAM TIP: The Cell Cycle describes the complete life of a cell—from one cell division to the next.",

"",

"### Why Do Cells Divide?",

"Cells divide because living organisms constantly need new cells. Cell division is essential for maintaining life.",

"",

"• Growth – A fertilised egg develops into a baby because cells repeatedly divide.",

"• Repair – When you cut your finger, nearby cells divide to replace damaged tissue.",

"• Replacement – Millions of skin cells, blood cells and cells lining your digestive tract die every day and must be replaced.",

"• Reproduction – Single-celled organisms reproduce simply by dividing into two new organisms, while multicellular organisms produce specialised reproductive cells.",

"",

"Real-Life Example:",

"If you scrape your knee while playing soccer, the damaged skin cells cannot repair themselves. Instead, nearby healthy cells divide many times to replace the injured cells until the wound heals.",

"",

"### DNA Must Be Copied Before Cell Division",

"Every daughter cell must receive a complete set of genetic instructions. Before a cell divides, it first makes an exact copy of its DNA.",

"",

"If DNA were not copied first, one daughter cell might receive important genes while the other receives none. Such cells would not function normally and may eventually die.",

"",

"[IMAGE]",

"",

"• DNA stores the genetic instructions for the cell.",

"• DNA is copied before every cell division.",

"• Each daughter cell receives one complete copy of the DNA.",

"• Accurate DNA replication ensures that the new cells function correctly.",

"",

"Example:",

"Imagine a teacher making photocopies of an exam paper before giving one to every student. If only one copy existed, only one student could write the test. Cells face the same challenge with DNA—they must make copies before division.",

"",

"### How Is DNA Packaged?",

"Human DNA is extremely long. If the DNA from a single human cell were stretched out, it would measure approximately **2 metres** in length. Yet it fits inside a nucleus that is only a few micrometres wide.",

"",

"Cells solve this problem by wrapping DNA around proteins called histones. Together, the DNA and histone proteins form a structure known as chromatin.",

"",

"• DNA wraps around histone proteins.",

"• DNA + Histones = Chromatin.",

"• Chromatin is the relaxed form of DNA found during most of the cell's life.",

"• Before cell division, chromatin coils tightly to form chromosomes.",

"",

"When DNA is relaxed as chromatin, the cell can easily access genes to produce proteins. When the cell prepares to divide, the DNA becomes tightly packed into chromosomes so it can be moved safely without becoming tangled or broken.",

"",

"MEMORY TRICK: Chromatin = Relaxed DNA (working). Chromosomes = Condensed DNA (moving).",

"",

"### Big Picture",

"Before learning how cells divide, it is important to understand why they divide and how DNA is organised. In the next section, you will study **Interphase**, the longest stage of the cell cycle, where the cell grows, carries out normal functions and prepares for cell division.",

];

const List<String> images = [
  "assets/modules/mlb111/Cell_Cycle.png",
  "assets/modules/mlb111/DNA_Compacting.png",
];

class IntroductionToCellCycleScreen extends StatelessWidget {
  const IntroductionToCellCycleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Introduction to the Cell Cycle",
      notes: notes,
      images: images,
    );
  }
}