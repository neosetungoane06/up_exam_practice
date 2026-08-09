import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';

const List<String> notes = [

"Cytokinesis occurs immediately after mitosis. Although mitosis has already divided the nucleus, the cell is still physically one cell. Cytokinesis is therefore required to separate the cytoplasm and produce two completely independent daughter cells.",

"",

"### What is Cytokinesis?",

"Cytokinesis is the process in which the **cytoplasm, organelles and plasma membrane** are divided between the two newly formed daughter cells.",

"",

"[IMAGE]",

"",

"It is the **final step of cell division**.",

"",

"Without cytokinesis, mitosis would produce one cell containing two nuclei instead of two separate cells.",

"",

"EXAM TIP: Mitosis divides the nucleus. Cytokinesis divides the entire cell.",

"",

"### Why Does Cytokinesis Happen?",

"Imagine building two identical houses but leaving them connected by one large room.",

"",

"Although the houses have been built correctly, they cannot function independently until they are separated.",

"",

"The same idea applies to cells.",

"",

"After mitosis:",

"",

"• The DNA has already been separated.",

"• Two nuclei already exist.",

"• But the cytoplasm is still shared.",

"",

"Cytokinesis separates everything so that each daughter cell can begin functioning as its own independent cell.",

"",

"### What is Divided During Cytokinesis?",

"Cytokinesis is not simply cutting the cell into two.",

"",

"The cell must distribute many important structures.",

"",

"These include:",

"",

"• Cytoplasm.",

"• Organelles (mitochondria, ribosomes, ER, Golgi, etc.).",

"• Plasma membrane.",

"• Cytoskeletal components.",

"• Nutrients and enzymes already present inside the cell.",

"",

"This ensures that each daughter cell has everything needed to survive immediately after division.",

"",

"### Cytokinesis in Animal Cells",

"In animal cells, cytokinesis occurs by forming a **cleavage furrow**.",

"",

"The plasma membrane is pulled inward by a ring of contractile proteins called **actin and myosin**.",

"",

"These proteins work similarly to muscles contracting.",

"",

"They squeeze the cell until it pinches into two completely separate daughter cells.",

"",

"PRACTICE: Why do animal cells use a cleavage furrow instead of building a new wall?",

"",

"### Cytokinesis in Plant Cells",

"Plant cells cannot pinch inward because they possess a rigid cell wall.",

"",

"Instead, vesicles carrying cell-wall material gather in the middle of the cell.",

"",

"They fuse together to form a **cell plate**.",

"",

"The cell plate gradually develops into a brand-new cell wall that separates the two daughter cells.",

"",

"MEMORY TRICK:",

"Animal cells → Cleavage Furrow",

"Plant cells → Cell Plate",

"",

"### How Cytokinesis Connects to Mitosis",

"Mitosis and cytokinesis are two separate processes, but they work together as one complete cell division event.",

"",

"Think of mitosis as dividing the **instruction manual (DNA)**, while cytokinesis divides **everything else**.",

"",

"The sequence is always:",

"",

"• Cell Cycle prepares the cell.",

"• Mitosis separates the chromosomes.",

"• Cytokinesis separates the cytoplasm.",

"• Two independent daughter cells are produced.",

"",

"Without cytokinesis, mitosis would never truly be completed.",

"",

"### What Would Happen if Cytokinesis Did Not Occur?",

"If cytokinesis failed, several problems would arise.",

"",

"• The cell would contain two nuclei.",

"• Organelles would not be properly separated.",

"• The daughter cells could not function independently.",

"• Future cell divisions would become abnormal.",

"",

"Eventually, tissues would not grow or repair correctly.",

"",

"This shows that cytokinesis is just as important as mitosis itself.",

"",

"### Why is Cytokinesis Important?",

"Cytokinesis ensures that every new daughter cell receives not only DNA, but also the machinery needed to stay alive.",

"",

"It allows:",

"",

"• Growth of organisms.",

"• Replacement of damaged cells.",

"• Tissue repair after injury.",

"• Normal development of embryos.",

"",

"Without cytokinesis, life as we know it would not be possible because new cells could never become fully independent.",

"",

"EXAM TIP: Mitosis and cytokinesis together produce **two genetically identical daughter cells**.",

"",

"### What You Must Remember for Exams",

"• Cytokinesis occurs after mitosis.",

"• It divides the cytoplasm, not the nucleus.",

"• Animal cells divide using a cleavage furrow.",

"• Plant cells divide using a cell plate.",

"• Actin and myosin proteins create the cleavage furrow in animal cells.",

"• The cell plate develops into a new cell wall in plant cells.",

"• Without cytokinesis, two nuclei would remain inside one cell.",

"• Mitosis + Cytokinesis = Two genetically identical daughter cells.",

"",

"Next, you will learn **When Cell Division Goes Wrong**, where mutations in cell-cycle control lead to uncontrolled division and the development of cancer."

];

const List<String> images = [
  "assets/modules/mlb111/cytokinesis.png",
];

class CytokinesisScreen extends StatelessWidget {
  const CytokinesisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Cytokinesis",
      notes: notes,
      images: images,
    );
  }
}
