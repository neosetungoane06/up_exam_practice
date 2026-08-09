import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class ReplicationAccuracyScreen extends StatelessWidget {
  const ReplicationAccuracyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Replication Accuracy and DNA Repair",
      images: [
        "assets/modules/mlb111/DNA_Proofreading.png",
        "assets/modules/mlb111/DNA_Repair.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "DNA and Heredity",
        subtopic: "Replication Accuracy",
      ),
      notes: [

        "DNA replication is one of the most accurate biological processes in nature. Every time one of your cells divides, approximately 3 billion base pairs must be copied. If too many mistakes occurred, cells would quickly lose their ability to function and organisms could not survive.",

        "",

        "### Why Must DNA Replication Be Accurate?",

        "DNA contains the instructions for making proteins. Even one incorrect nucleotide may change a gene and eventually produce an abnormal protein.",

        "Imagine copying an instruction manual for building an aeroplane.",

        "If one important word changes, the entire aircraft may not work correctly.",

        "DNA works exactly the same way.",

        "Accurate replication ensures:",

        "• Daughter cells receive the correct genetic information.",
        "• Proteins are produced correctly.",
        "• Normal growth and development continue.",
        "• Harmful mutations are minimised.",

        "EXAM TIP: DNA replication is accurate because cells possess proofreading and DNA repair mechanisms.",

        "",

        "[IMAGE]",

        "",

        "### DNA Polymerase Proofreading",

        "DNA Polymerase III does more than simply add nucleotides.",

        "As it builds the new DNA strand, it immediately checks whether each nucleotide has paired correctly with the template strand.",

        "If an incorrect nucleotide is added, DNA Polymerase detects the mistake almost immediately.",

        "It then:",

        "• Removes the incorrect nucleotide.",
        "• Inserts the correct nucleotide.",
        "• Continues DNA synthesis.",

        "This process is called PROOFREADING.",

        "Think about typing an assignment on your laptop.",

        "Whenever you notice a spelling mistake, you immediately delete the wrong letter before continuing to type.",

        "DNA Polymerase performs exactly the same type of correction while DNA is still being copied.",

        "MEMORY TRICK: DNA Polymerase is both the builder AND the editor.",

        "",

        "### What Happens Without Proofreading?",

        "If proofreading did not occur:",

        "• More incorrect nucleotides would remain in DNA.",
        "• Mutations would increase rapidly.",
        "• Incorrect proteins would be produced.",
        "• Cells could malfunction.",
        "• The risk of diseases such as cancer would increase.",

        "Proofreading therefore acts as the cell's FIRST defence against mutations.",

        "",

        "### Mismatch Repair",

        "[IMAGE]",

        "",

        "Even though proofreading is extremely accurate, a few mistakes may still escape detection.",

        "The cell therefore has another repair system called MISMATCH REPAIR.",

        "Mismatch repair occurs AFTER DNA replication has finished.",

        "Its purpose is to find incorrect base pairings that proofreading missed.",

        "For example:",

        "Suppose Adenine accidentally pairs with Cytosine.",

        "The mismatch repair system recognises that A should never pair with C.",

        "The repair proteins:",

        "• Detect the mismatch.",
        "• Remove the incorrect section.",
        "• DNA Polymerase fills the gap correctly.",
        "• DNA Ligase seals the repaired strand.",

        "Think of proofreading as checking your work while writing.",

        "Mismatch repair is checking the assignment AFTER you have finished writing.",

        "Both systems work together to maintain DNA accuracy.",

        "",

        "### What Happens Without Mismatch Repair?",

        "If mismatch repair failed:",

        "• Replication mistakes would remain permanently.",
        "• Mutation rates would increase.",
        "• Cells would accumulate genetic damage.",
        "• Some cancers become more common because mismatch repair genes are damaged.",

        "EXAM TIP: Proofreading occurs DURING replication. Mismatch repair occurs AFTER replication.",

        "",

        "### Excision Repair",

        "Not all DNA damage occurs during replication.",

        "DNA is constantly exposed to harmful environmental factors such as:",

        "• Ultraviolet (UV) radiation.",
        "• X-rays.",
        "• Cigarette smoke.",
        "• Toxic chemicals.",
        "• Some viruses.",

        "These factors may damage DNA after replication has already finished.",

        "The cell uses EXCISION REPAIR to remove damaged DNA.",

        "Excision repair works in several steps:",

        "1. Damage is recognised.",
        "2. The damaged DNA section is removed.",
        "3. DNA Polymerase replaces the missing nucleotides.",
        "4. DNA Ligase seals the strand.",

        "Unlike mismatch repair, excision repair is repairing DNA that has been damaged by outside influences rather than copying mistakes.",

        "",

        "### Why Is Excision Repair Important?",

        "Every day your DNA is damaged thousands of times.",

        "Fortunately, most of this damage is repaired before it becomes permanent.",

        "Without excision repair:",

        "• DNA damage accumulates.",
        "• Genes stop functioning normally.",
        "• Mutation frequency increases.",
        "• Cancer risk increases significantly.",

        "",

        "### Comparing the Three Systems",

        "Proofreading:",

        "• Occurs DURING replication.",
        "• Performed by DNA Polymerase III.",
        "• Corrects newly inserted nucleotides immediately.",

        "",

        "Mismatch Repair:",

        "• Occurs AFTER replication.",
        "• Corrects mistakes missed during proofreading.",
        "• Repairs incorrect base pairing.",

        "",

        "Excision Repair:",

        "• Repairs DNA damaged by environmental factors.",
        "• Removes damaged DNA sections.",
        "• Replaces damaged nucleotides with correct ones.",

        "",

        "### Replication Accuracy",

        "Because of proofreading and DNA repair systems, DNA replication is incredibly accurate.",

        "Scientists estimate that after all repair systems have finished, only about ONE mistake remains for every billion nucleotides copied.",

        "This remarkable accuracy allows organisms to maintain stable genetic information generation after generation.",

        "However, perfection is impossible.",

        "Occasionally a mistake escapes every repair system.",

        "That permanent change becomes a MUTATION.",

        "Some mutations are harmful.",

        "Some are neutral.",

        "A few may even be beneficial because they contribute to evolution.",

        "",

        "MEMORY TRICK:\nProofreading = First defence.\nMismatch Repair = Second defence.\nExcision Repair = Damage repair after replication.",

        "",

        "PRACTICE QUESTION:\nExplain the differences between proofreading, mismatch repair and excision repair. In your answer, state WHEN each process occurs, WHY it is needed and what would happen if the repair mechanism failed.",

      ],
    );
  }
}
