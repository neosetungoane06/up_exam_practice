import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class DnaIntroductionScreen extends StatelessWidget {
  const DnaIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "DNA and Heredity",
      images: [
        "assets/modules/mlb111/DNA.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "DNA Introduction",
      ),
      notes: [

        // ============================
        // INTRODUCTION
        // ============================

        "Every living organism begins as a single cell. Yet that one cell eventually develops into an organism made of millions or even trillions of specialised cells. The question is: how does every cell know what to do?",

        "The answer is DNA. DNA contains the biological instructions that control how organisms are built, how cells function and how characteristics are passed from one generation to the next.",

        "[IMAGE]",

        "",

        "### Why are you studying DNA and Heredity?",

        "Everything you have studied so far in MLB111 leads to this topic.",

        "Earlier you learned:",

        "• Cells divide through mitosis.",
        "• DNA is copied before cells divide.",
        "• Chromosomes carry genetic information.",
        "• Mutations change DNA.",
        "• Cell-cycle checkpoints protect DNA.",

        "But one important question still remains:",

        "How does DNA actually store information, and how is that information used by cells?",

        "This topic answers that question.",

        "By the end of this section you will understand how DNA stores genetic information, how genes control protein production and why children inherit characteristics from their parents.",

        "EXAM TIP: Think of this topic as discovering what DNA actually is and how cells use it every day.",

        "",

        // ============================
        // HEREDITY
        // ============================

        "### What Is Heredity?",

        "Heredity is the process by which genetic information is passed from parents to their offspring.",

        "This is why children often resemble their biological parents. Similar eye colour, hair texture, blood group and many other characteristics are inherited through DNA.",

        "However, heredity does not mean children are exact copies of their parents. Every child receives a unique combination of DNA from both parents, making every individual genetically unique (except identical twins).",

        "• Parents pass DNA to offspring.",
        "• DNA carries hereditary information.",
        "• Genes determine inherited characteristics.",
        "• Offspring inherit combinations of traits from both parents.",

        "Real-life example:",

        "A child may inherit brown eyes from one parent and curly hair from the other because both characteristics are encoded in different genes that were inherited during reproduction.",

        "The scientific study of how characteristics are inherited is called genetics.",

        "MEMORY TRICK: Heredity = 'Handing over' genetic information from one generation to the next.",

        "",

        // ============================
        // WHY DNA IS IMPORTANT
        // ============================

        "### Why Is DNA So Important?",

        "Every cell must constantly make decisions.",

        "For example:",

        "• Which proteins should be produced?",
        "• When should the cell divide?",
        "• When should damaged DNA be repaired?",
        "• Which enzymes are needed?",
        "• Should the cell become a muscle cell or a nerve cell?",

        "Cells do not make these decisions randomly.",

        "The instructions are already stored inside DNA.",

        "DNA therefore acts as the permanent information storage system of the cell.",

        "A useful way to think about DNA is to compare it to different everyday objects:",

        "• A recipe book tells a chef how to prepare food.",
        "• Building plans tell engineers how to construct a house.",
        "• Computer code tells a computer what to do.",
        "• DNA tells cells how to build and maintain an organism.",

        "Without DNA:",

        "• Proteins could not be made.",
        "• Cells would lose their identity.",
        "• Growth would stop.",
        "• Repair would become impossible.",
        "• Life could not exist.",

        "PRACTICE: Imagine removing the operating system from your phone. The hardware would still exist, but it would no longer know what to do. DNA performs a similar role inside living cells.",

        "",

        // ============================
        // CONNECTION
        // ============================

        "### How This Topic Connects to Previous Topics",

        "Notice how everything you have already studied fits together:",

        "• The Cell Cycle copied DNA during S phase.",
        "• Mitosis ensured identical DNA entered daughter cells.",
        "• Mutations changed DNA sequences.",
        "• Cancer developed when damaged DNA was not properly controlled.",

        "Now you are going one level deeper.",

        "Instead of asking 'How do cells divide?', you will ask:",

        "• What information is stored inside DNA?",
        "• How is that information organised?",
        "• How do genes control protein production?",
        "• Why do mutations affect proteins?",
        "• Why do offspring resemble their parents?",

        "Understanding DNA allows you to understand almost every other topic in biology because DNA controls nearly every process occurring inside cells.",

        "",

        // ============================
        // WHAT YOU WILL LEARN
        // ============================

        "### What You Will Learn",

        "Throughout this topic you will discover:",

        "• The structure of DNA.",
        "• The structure and function of genes.",
        "• DNA replication.",
        "• Protein synthesis (transcription and translation).",
        "• The genetic code.",
        "• Gene regulation.",
        "• Inheritance and heredity.",
        "• DNA technologies and applications.",

        "Each of these ideas builds directly on the previous one, so understanding the early sections will make the later sections much easier.",

        "",

        "MEMORY TRICK: DNA stores the information, genes organise the information, proteins carry out the instructions.",

      ],
    );
  }
}