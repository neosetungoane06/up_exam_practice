import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class CentralDogmaScreen extends StatelessWidget {
  const CentralDogmaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "The Central Dogma",
      images: [
        "assets/modules/mlb111/Central_Dogma.png",
        "assets/modules/mlb111/Gene_to_Protein.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Central Dogma",
      ),
      notes: [

        "The Central Dogma explains how the genetic information stored inside DNA is converted into functional proteins. It describes the flow of information inside living cells and is considered one of the most important concepts in molecular biology.",

        "[IMAGE]",

        "Gene expression is not simply about copying DNA. Instead, cells selectively read genes and convert their information into proteins whenever those proteins are needed.",

        "### Why the Central Dogma Exists",

        "DNA is extremely valuable because it stores the complete genetic blueprint of the organism. Constantly exposing DNA every time a protein is needed would increase the chance of damage.",

        "Instead, cells create temporary working copies of genes using RNA. RNA then carries the information to ribosomes where proteins are assembled.",

        "This separation protects DNA while allowing proteins to be produced whenever required.",

        "• DNA stores permanent genetic information.",
        "• RNA carries temporary genetic instructions.",
        "• Proteins perform the work of the cell.",

        "MEMORY TRICK: DNA is the Library. RNA is the Photocopy. Proteins are the Final Product.",

        "### The Flow of Genetic Information",

        "[IMAGE]",

        "The movement of information follows one direction:",

        "DNA → RNA → Protein",

        "Every protein that a cell produces follows this pathway.",

        "The first step is called Transcription, where information moves from DNA into RNA.",

        "The second step is called Translation, where the RNA message is converted into a protein.",

        "PRACTICE: Be able to explain why information flows from DNA to RNA rather than directly from DNA to proteins.",

        "### Step 1 — DNA Stores Information",

        "DNA acts as the master storage molecule for genetic information. Every gene contains a specific sequence of nitrogenous bases that forms a biological instruction.",

        "Different genes contain different instructions because they have different base sequences.",

        "For example:",

        "• One gene contains instructions for insulin.",
        "• Another gene contains instructions for haemoglobin.",
        "• Another gene may produce enzymes used during digestion.",

        "Although every body cell contains almost identical DNA, not every gene is active in every cell.",

        "A liver cell and a nerve cell contain the same DNA, but they express different genes. This selective gene expression allows specialised cells to perform different functions.",

        "### Step 2 — RNA Carries the Instructions",

        "DNA never leaves the nucleus because it must remain protected.",

        "Instead, the required gene is copied into messenger RNA (mRNA).",

        "The mRNA molecule acts as a temporary copy of the gene and transports the information from the nucleus to ribosomes.",

        "RNA is therefore the communication molecule between DNA and protein synthesis.",

        "• DNA remains protected inside the nucleus.",
        "• mRNA carries the genetic message.",
        "• Ribosomes read the mRNA instructions.",

        "### Step 3 — Proteins Are Produced",

        "Proteins are the final products of gene expression.",

        "Proteins perform almost every important cellular function.",

        "Examples include:",

        "• Enzymes that catalyse metabolic reactions.",
        "• Structural proteins such as collagen.",
        "• Hormones such as insulin.",
        "• Transport proteins such as haemoglobin.",
        "• Antibodies involved in immunity.",

        "Without proteins, cells cannot survive because proteins carry out virtually all biological activities.",

        "### Why DNA Does Not Make Proteins Directly",

        "Students often ask why DNA cannot simply produce proteins directly.",

        "There are several important reasons:",

        "• DNA must remain protected inside the nucleus.",
        "• Many copies of the same protein can be produced from one mRNA molecule.",
        "• Different genes can be switched on or off depending on the needs of the cell.",
        "• Using RNA allows rapid regulation of protein production.",

        "This makes gene expression efficient, flexible and highly controlled.",

        "EXAM TIP: The Central Dogma is not simply a sequence to memorise. It explains HOW information stored inside DNA eventually becomes functional proteins.",

        "### Gene Expression Is Highly Regulated",

        "Cells do not produce every protein continuously.",

        "Instead, proteins are produced only when required.",

        "For example:",

        "• Muscle cells produce proteins needed for contraction.",
        "• Pancreatic cells produce insulin.",
        "• White blood cells produce antibodies during infection.",

        "This regulation saves energy and allows specialised cells to perform their unique functions.",

        "### Connecting to Previous Topics",

        "Everything learned previously now connects together.",

        "DNA replication copies DNA during the S phase of the cell cycle so that genetic information is preserved before cell division.",

        "Gene expression is different. Instead of copying the entire DNA molecule, only a specific gene is read to produce a protein.",

        "Replication preserves information.",
        "Gene expression uses information.",

        "This distinction is one of the most frequently tested concepts in molecular biology.",

        "MEMORY TRICK: Replication copies the whole genome. Gene expression reads only the genes that are needed.",
      ],
    );
  }
}