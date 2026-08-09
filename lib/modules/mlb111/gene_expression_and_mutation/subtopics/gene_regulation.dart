import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class GeneRegulationScreen extends StatelessWidget {
  const GeneRegulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Gene Regulation",
      images: [
        "assets/modules/mlb111/Gene_Regulation.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Gene Regulation",
      ),
      notes: [

        "Every cell in your body contains almost exactly the same DNA. A nerve cell, a muscle cell, a skin cell and a liver cell all inherited the same genome from the original fertilised egg. Yet these cells look different, perform different functions and produce different proteins.",

        "",

        "The reason is simple:",

        "Cells do NOT use every gene they possess.",

        "",

        "Instead, each cell only 'switches on' the genes that it currently needs while keeping the remaining genes switched off.",

        "",

        "This control over which genes are active and which genes remain inactive is called **gene regulation**.",

        "",

        "[IMAGE]",

        "",

        "### Why Are Not All Genes Expressed?",

        "Imagine owning a toolbox containing 100 different tools.",

        "When tightening a screw, you use a screwdriver—not every tool in the toolbox.",

        "Likewise, cells only use the genes that are required for their specific function.",

        "",

        "For example:",

        "• Pancreatic cells express the insulin gene because they produce insulin.",
        "• Red blood cells express the haemoglobin gene because they transport oxygen.",
        "• Muscle cells express genes responsible for contraction.",
        "• Neurons express genes involved in transmitting nerve impulses.",

        "",

        "Genes that are unnecessary for a particular cell remain inactive.",

        "",

        "If every gene were expressed continuously:",

        "• Cells would waste enormous amounts of energy.",
        "• Proteins would be produced unnecessarily.",
        "• Different cell types could not specialise.",
        "• Normal body function would be impossible.",

        "",

        "EXAM TIP: Every body cell contains nearly the same DNA, but different cells express different genes.",

        "",

        "### What Is Gene Regulation?",

        "Gene regulation is the process by which a cell controls **when**, **where** and **how much** a gene is expressed.",

        "",

        "Gene regulation determines:",

        "• Whether transcription begins.",
        "• How frequently transcription occurs.",
        "• How much protein is ultimately produced.",

        "",

        "Gene regulation therefore acts like a collection of molecular switches that can turn genes ON, turn genes OFF, or adjust how strongly they are expressed.",

        "",

        "MEMORY TRICK:",

        "\"Gene regulation is the cell's light switch for genes.\"",

        "",

        "### Where Does Most Gene Regulation Occur?",

        "Although regulation can occur at several stages of gene expression, the most important level of control occurs **before transcription begins**.",

        "",

        "If transcription never starts:",

        "• No mRNA is produced.",
        "• No translation occurs.",
        "• No protein is produced.",

        "",

        "For this reason, controlling transcription is the most energy-efficient way for a cell to regulate gene expression.",

        "",

        "The next section explains the specialised proteins that control whether transcription starts or not.",

      "",

      "### Transcription Factors",

      "Transcription cannot begin simply because a gene is present. Before RNA polymerase can bind to the promoter, special regulatory proteins called **transcription factors** must first attach to specific DNA sequences.",

      "",

      "Transcription factors help determine whether a gene is expressed or remains inactive.",

      "",

      "Their main functions are to:",

      "• Help RNA polymerase bind to the promoter.",
      "• Increase or decrease transcription.",
      "• Control when a gene is switched on or off.",

      "",

      "EXAM TIP: Transcription factors regulate transcription by controlling RNA polymerase binding.",

      "",

      "### Activators",

      "Activators are transcription factors that **increase gene expression**.",

      "",

      "They bind to regulatory DNA sequences near a gene and make it easier for RNA polymerase to attach to the promoter.",

      "",

      "As a result:",

      "• Transcription begins more easily.",
      "• More mRNA is produced.",
      "• More protein is eventually synthesised.",

      "",

      "Think of an activator as someone opening a door for RNA polymerase to enter.",

      "",

      "### Repressors",

      "Repressors are transcription factors that **reduce or prevent gene expression**.",

      "",

      "A repressor binds to regulatory DNA and blocks RNA polymerase from starting transcription.",

      "",

      "As a result:",

      "• Little or no mRNA is produced.",
      "• Protein synthesis decreases or stops completely.",

      "",

      "Think of a repressor as locking the door so RNA polymerase cannot enter.",

      "",

      "MEMORY TRICK:",

      "\"Activator = ON\"",
      "\"Repressor = OFF\"",

      "",

      "### Summary",

      "Whether a gene is expressed depends on the combined action of transcription factors.",

      "",

      "Activators encourage transcription, while repressors prevent transcription.",

      "",

      "This allows cells to produce proteins only when they are needed, helping conserve energy and maintain normal cellular function.",

        "",

        "### Operons (Basic Introduction)",

        "An operon is a group of genes that are controlled together by a single regulatory region. Instead of each gene having its own switch, several related genes can be turned on or off at the same time.",

        "",

        "Operons are found mainly in **prokaryotes (bacteria)** and are uncommon in eukaryotic cells.",

        "",

        "For example, bacteria only produce certain enzymes when they are actually needed. If the enzymes are unnecessary, the operon keeps the genes switched off, saving energy and resources.",

        "",

        "You do not need to know the details of specific operons (such as the lac operon) for this course—only that operons are one way bacteria regulate gene expression.",

        "",

        "EXAM TIP: Operons are a mechanism of gene regulation mainly found in prokaryotes.",

        "",

        "### Cell Differentiation",

        "One of the most important consequences of gene regulation is **cell differentiation**.",

        "",

        "Cell differentiation is the process by which unspecialised cells become specialised cells with different structures and functions.",

        "",

        "Although almost every cell in the body contains the same DNA, different cells express different sets of genes.",

        "",

        "This means that different proteins are produced in different cells, allowing them to perform specialised functions.",

        "",

        "Examples include:",

        "• Muscle cells produce proteins involved in contraction.",
        "• Neurons produce proteins required for transmitting nerve impulses.",
        "• Pancreatic cells produce insulin.",
        "• Red blood cells produce haemoglobin for oxygen transport.",

        "",

        "Because different genes are switched on in different cells, each cell develops its own specialised structure and function.",

        "",

        "MEMORY TRICK:",

        "\"Same DNA, different genes ON, different proteins, different cells.\"",

        "",

        "### Summary",

        "Gene regulation ensures that only the necessary genes are expressed in each cell. Activators and repressors control transcription, while specialised patterns of gene expression allow cells to differentiate into the many different cell types found in the human body.",

        "",

        "PRACTICE QUESTION:\nExplain why a muscle cell and a nerve cell have different structures and functions even though they contain the same DNA. In your answer, refer to gene regulation and cell differentiation.",

      ],
    );
  }
}