import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class RnaProcessingScreen extends StatelessWidget {
  const RnaProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "RNA Processing",
      images: [
        "assets/modules/mlb111/5Cap_and_poly_tail.png",
        "assets/modules/mlb111/5Cap_and_poly_tail.png",
        "assets/modules/mlb111/5Cap_and_poly_tail.png",
        "assets/modules/mlb111/RNA_Splicing.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "RNA Processing",
      ),
      notes: [

        "Transcription does not produce a finished messenger RNA (mRNA) molecule. Instead, the product that leaves RNA Polymerase II is called **pre-mRNA (precursor mRNA)** or the **primary transcript**. This molecule is incomplete and cannot yet be used to make proteins.",

        "",

        "### Why Does RNA Need Processing?",

        "Think back to transcription. RNA Polymerase copied the DNA template strand exactly as it appeared. However, DNA contains more than just the instructions needed to build proteins. It also contains regions that should never be translated.",

        "If the newly synthesised RNA were sent directly to a ribosome, the ribosome would read both useful and useless sequences. As a result, the amino acid sequence would be incorrect and the final protein would most likely be non-functional.",

        "Therefore, before leaving the nucleus, pre-mRNA must be **edited, protected and prepared**. This entire editing stage is called **RNA Processing**.",

        "",

        "EXAM TIP: RNA processing occurs **only after transcription** and **before translation**. It takes place inside the nucleus of eukaryotic cells.",

        "",

        "### Pre-mRNA vs Mature mRNA",

        "Immediately after transcription, the RNA molecule is called **pre-mRNA**. After all processing steps have been completed, it becomes **mature mRNA**.",

        "",

        "Pre-mRNA:",
        "• Produced directly by RNA Polymerase II.",
        "• Contains both introns and exons.",
        "• Has no protective structures on either end.",
        "• Cannot leave the nucleus.",
        "• Cannot be translated by ribosomes.",

        "",

        "Mature mRNA:",
        "• Contains only the required coding information.",
        "• Has a 5' Cap.",
        "• Has a Poly-A Tail.",
        "• Is stable enough to survive in the cytoplasm.",
        "• Can leave the nucleus through nuclear pores.",
        "• Can be translated into protein by ribosomes.",

        "",

        "MEMORY TRICK: Pre-mRNA is like the **first draft** of an assignment. Mature mRNA is the **final submitted version** after editing and proofreading.",

        "",

        "[IMAGE]",

        "",

        "### The Four Major Processing Steps",

        "RNA processing consists of four major modifications. Each one solves a different biological problem and together they transform pre-mRNA into mature mRNA.",

        "",

        "1. Addition of the **5' Cap**.",
        "2. Addition of the **Poly-A Tail**.",
        "3. Removal of **Introns**.",
        "4. Joining of **Exons** by RNA Splicing.",

        "",

        "Notice that the first two modifications protect the RNA molecule, while the last two modifications edit the genetic information that will eventually be translated.",

        "",

        "By the end of RNA processing, the mature mRNA contains only the correct coding sequence and is fully prepared for the next stage of gene expression: **Translation**.",

        "",

        "### The 5' Cap",

        "The first modification occurs almost immediately after transcription begins. As soon as the growing RNA strand emerges from RNA Polymerase II, the cell attaches a special molecule called the **5' Cap** to the front (5') end of the RNA.",

        "The 5' Cap is **not an ordinary RNA nucleotide**. It is a chemically modified guanine nucleotide known as **7-methylguanosine (m⁷G)**.",

        "Unlike the rest of the RNA strand, which is joined by normal 5'→3' phosphodiester bonds, the cap is attached using an unusual **5'→5' triphosphate linkage**. This unusual bond makes the cap extremely difficult for degrading enzymes to remove.",

        "",

        "Why is the 5' Cap necessary?",

        "Inside cells are enzymes called **exonucleases** whose job is to destroy unwanted RNA molecules. These enzymes usually begin digesting RNA from its exposed ends.",

        "If the front end of the mRNA were left exposed, exonucleases would rapidly degrade the molecule before it ever reached a ribosome.",

        "The 5' Cap therefore acts as a **protective shield**, preventing degradation from the 5' end and greatly increasing the lifespan of the mRNA.",

        "",

        "The 5' Cap also performs another equally important function.",

        "During translation, ribosomes do not bind randomly to RNA. Instead, special cap-binding proteins recognise the 5' Cap and recruit the small ribosomal subunit to the correct starting point.",

        "The ribosome then scans along the mRNA until it reaches the first AUG start codon, where protein synthesis begins.",

        "",

        "Without the 5' Cap:",
        "• The mRNA would be rapidly degraded by exonucleases.",
        "• Ribosomes would struggle to recognise the mRNA.",
        "• Translation would become inefficient or might not occur at all.",
        "• Very little protein would be produced.",

        "",

        "EXAM TIP: The 5' Cap has **two major functions** that examiners expect you to know:",
        "• Protects mRNA from degradation.",
        "• Allows ribosomes to recognise and bind to the mRNA for translation.",

        "",

        "### The Poly-A Tail",

        "The second major modification occurs at the opposite end of the pre-mRNA. After transcription is completed, the 3' end of the RNA is cut at a specific location and a long chain of adenine (A) nucleotides is added. This chain is called the **Poly-A Tail** because it consists of many adenines linked together.",

        "Unlike the RNA sequence copied from DNA, the Poly-A Tail is **not encoded by the gene itself**. Instead, it is added after transcription by an enzyme called **Poly(A) Polymerase**.",

        "In most eukaryotic cells, the Poly-A Tail contains approximately **100–250 adenine nucleotides**, although its exact length varies between different organisms and different genes.",

        "[IMAGE]",

        "",

        "### Why Does the Cell Add a Poly-A Tail?",

        "Just as the front end of the mRNA needs protection, the back (3' end) also requires protection. Exonucleases are capable of degrading RNA from either end, so simply protecting the 5' end would not be enough.",

        "The Poly-A Tail acts as a **protective buffer**. Instead of attacking the important coding region of the mRNA immediately, exonucleases gradually remove adenine nucleotides from the tail first.",

        "This means the coding sequence remains intact for a much longer time, giving ribosomes enough opportunity to translate the mRNA repeatedly before it is eventually destroyed.",

        "",

        "Think of the Poly-A Tail as the eraser on the end of a pencil.",

        "Every time the pencil is sharpened, a small amount of the eraser may be worn away before the useful wooden body of the pencil is affected. In the same way, the Poly-A Tail is sacrificed first while protecting the important coding information.",

        "",

        "### Functions of the Poly-A Tail",

        "The Poly-A Tail performs several important functions inside the cell.",

        "• Protects the 3' end of the mRNA from degradation.",
        "• Increases the stability of the mRNA molecule.",
        "• Extends the lifespan of the mRNA.",
        "• Helps transport mature mRNA from the nucleus into the cytoplasm.",
        "• Improves the efficiency of translation by working together with proteins that interact with the 5' Cap.",

        "",

        "Notice that the 5' Cap and Poly-A Tail do **not** work independently. The proteins attached to both ends interact with each other, causing the mRNA to form a loop-like structure. This makes it easier for ribosomes to repeatedly translate the same mRNA, increasing protein production.",

        "",

        "### What Happens Without a Poly-A Tail?",

        "If the Poly-A Tail is absent or extremely short:",

        "• The mRNA becomes unstable.",
        "• Exonucleases rapidly degrade the molecule from the 3' end.",
        "• The mRNA survives for a much shorter period.",
        "• Fewer ribosomes are able to translate it.",
        "• Much less protein is produced.",

        "",

        "MEMORY TRICK: The **5' Cap protects the FRONT**, while the **Poly-A Tail protects the BACK** of the mRNA molecule.",

        "",

        "EXAM TIP: Students often confuse the 5' Cap and Poly-A Tail. Remember:",
        "• The 5' Cap is a modified guanine nucleotide added to the 5' end.",
        "• The Poly-A Tail is a long chain of adenine nucleotides added to the 3' end.",
        "• Both increase mRNA stability, but they are added by different enzymes and are located at opposite ends of the molecule.",

        "",

        "PRACTICE QUESTION:",
        "A mutation prevents Poly(A) Polymerase from functioning correctly. Predict TWO consequences this would have for mature mRNA and explain how these consequences would affect protein synthesis.",

        "",

        "### Introns and Exons",

        "Although pre-mRNA has now been protected by the addition of a 5' Cap and a Poly-A Tail, it still contains a major problem: not every part of the molecule contains instructions for building proteins.",

        "When RNA Polymerase II copied the DNA, it copied the **entire gene** exactly as it appeared. This means the newly formed pre-mRNA contains **both coding regions and non-coding regions**.",

        "If the ribosome translated the pre-mRNA exactly as it was produced, the resulting protein would contain incorrect amino acids or stop prematurely. Therefore, the cell must remove the unnecessary regions before translation can begin.",

        "",

        "The pre-mRNA contains two different types of sequences:",

        "• Exons",
        "• Introns",

        "",

        "### Exons",

        "Exons are the **expressed (coding) regions** of a gene. These regions contain the nucleotide sequences that will eventually be translated into amino acids during protein synthesis.",

        "Because exons contain the genetic information required to build a protein, they are **retained** during RNA processing.",

        "After RNA processing is complete, the mature mRNA contains **only exons**.",

        "",

        "Characteristics of Exons:",

        "• They contain protein-coding information.",
        "• They remain in the mature mRNA.",
        "• They are translated by ribosomes.",
        "• Their nucleotide sequence determines the amino acid sequence of the protein.",

        "",

        "### Introns",

        "Introns are **intervening (non-coding) regions** found between exons within a gene.",

        "Although introns are transcribed into pre-mRNA, they are **never translated into protein** because they are removed before the mRNA leaves the nucleus.",

        "This means that introns are temporary parts of the RNA molecule whose main purpose is fulfilled before translation begins.",

        "",

        "Characteristics of Introns:",

        "• They are transcribed from DNA.",
        "• They are present only in pre-mRNA.",
        "• They are removed during RNA processing.",
        "• They are absent from mature mRNA.",
        "• They are never translated into amino acids.",

        "",

        "[IMAGE]",

        "",

        "### Why Are Introns Removed?",

        "One of the most common questions asked in university examinations is **why introns cannot simply remain inside the mRNA**.",

        "To answer this, remember how translation works.",

        "The ribosome reads mRNA three nucleotides at a time (codons). Every codon specifies either an amino acid or a stop signal.",

        "If introns remained inside the mature mRNA, the ribosome would read these non-coding sequences as though they were genuine codons.",

        "This would have several serious consequences:",

        "• Incorrect amino acids would be inserted into the growing protein.",
        "• The reading frame could shift (frameshift).",
        "• Premature STOP codons could appear.",
        "• Protein folding would be disrupted.",
        "• The final protein would most likely lose its function.",

        "",

        "In other words, introns must be removed because **they interrupt the true genetic instructions contained within the exons**.",

        "",

        "### Why Are Exons Kept?",

        "Unlike introns, exons contain the information that actually specifies the amino acid sequence of the protein.",

        "Keeping every exon in the correct order ensures that the ribosome reads the correct codons during translation and produces the intended protein.",

        "Therefore, RNA processing removes only the unnecessary introns while preserving all of the coding information contained within the exons.",

        "",

        "MEMORY TRICK:",

        "EXons are EXpressed.",
        "INtrons stay IN the nucleus and are removed.",

        "",

        "EXAM TIP: Students often write 'introns are useless'. This is incorrect. Introns are **non-coding**, but they still play important roles in gene regulation, evolution and alternative splicing.",

        "",

        "### Why Do Introns Exist At All?",

        "If introns are removed before translation, a logical question follows: **Why do cells have them in the first place?**",

        "Modern molecular biology has shown that introns perform several important functions.",

        "Firstly, introns make **alternative splicing** possible, allowing one gene to produce multiple different proteins.",

        "Secondly, some introns contain regulatory sequences that influence when and how strongly genes are expressed.",

        "Finally, introns provide opportunities for evolutionary change by allowing exons to be rearranged over millions of years without disrupting important coding sequences.",

        "Because of these functions, introns are now recognised as an important component of eukaryotic genomes rather than simply 'extra DNA'.",

        "",

        "PRACTICE QUESTION:",

        "Explain the difference between introns and exons. Your answer should include:",
        "• Which regions are translated.",
        "• Which regions remain in mature mRNA.",
        "• Why introns must be removed before translation.",

        "",

        "### RNA Splicing",

        "Once the cell has protected the pre-mRNA by adding the 5' Cap and the Poly-A Tail, the next challenge is editing the RNA molecule itself. At this stage, the pre-mRNA still contains both introns and exons mixed together.",

        "The cell must remove every intron while keeping every exon in exactly the correct order. This editing process is called **RNA splicing**.",

        "RNA splicing is one of the most important quality-control steps in gene expression because it determines the exact genetic message that will be translated into protein.",

        "",

        "### What Is RNA Splicing?",

        "RNA splicing is the process by which **introns are removed from pre-mRNA and the remaining exons are joined together to produce mature mRNA**.",

        "Only after splicing has been completed does the mRNA contain one continuous coding sequence that can be read correctly by a ribosome.",

        "",

        "Without RNA splicing, mature mRNA would still contain non-coding sequences, making accurate protein synthesis impossible.",

        "",

        "### The Spliceosome",

        "RNA splicing is carried out by a very large molecular machine called the **spliceosome**.",

        "The spliceosome is not a single protein. Instead, it is a complex made of **small nuclear RNAs (snRNAs)** together with many specialised proteins. Together these form structures called **small nuclear ribonucleoproteins (snRNPs)**, commonly pronounced 'snurps'.",

        "The spliceosome is responsible for identifying exactly where each intron begins and ends before cutting it out with remarkable accuracy.",

        "",

        "Think of the spliceosome as a highly trained film editor.",

        "Imagine a movie containing scenes that should never appear in the final version. The editor carefully removes those unwanted scenes and joins the remaining scenes together so smoothly that the audience never notices where the cuts were made.",

        "The spliceosome performs exactly the same job on pre-mRNA.",

        "",

        "EXAM TIP: The spliceosome is a **ribonucleoprotein complex**, meaning it contains BOTH RNA and proteins. Many students incorrectly write that it is simply an enzyme.",

        "",

        "### How Does RNA Splicing Occur?",

        "The spliceosome carries out RNA splicing in several highly organised steps.",

        "",

        "Step 1",

        "The spliceosome recognises specific nucleotide sequences that mark the beginning and end of every intron. These sequences act like punctuation marks telling the spliceosome exactly where to cut.",

        "",

        "Step 2",

        "The spliceosome cuts the RNA at the boundary between the first exon and the intron.",

        "",

        "Step 3",

        "The intron folds into a loop-like structure called a **lariat**. This lariat is then completely removed from the pre-mRNA.",

        "",

        "Step 4",

        "After the intron has been removed, the spliceosome joins the neighbouring exons together using phosphodiester bonds, producing one continuous coding sequence.",

        "",

        "These steps are repeated until **every intron has been removed** from the transcript.",

        "",

        "[IMAGE]",

        "",

        "### Why Must Splicing Be So Accurate?",

        "Proteins are built by reading mRNA three nucleotides at a time. Every group of three nucleotides forms a codon, and each codon specifies one amino acid.",

        "If the spliceosome cuts at the wrong position, even by a single nucleotide, the reading frame may change. This is called a **frameshift**, and it causes every codon after the mistake to be read incorrectly.",

        "As a result:",

        "• Incorrect amino acids are inserted.",
        "• Premature stop codons may appear.",
        "• Protein folding is disrupted.",
        "• The final protein often becomes completely non-functional.",

        "",

        "This is why RNA splicing must occur with extraordinary precision.",

        "",

        "### Alternative Splicing",

        "One of the greatest advantages of introns is that they make **alternative splicing** possible.",

        "Alternative splicing occurs when the spliceosome joins **different combinations of exons** from the same pre-mRNA transcript.",

        "This means that a single gene is capable of producing **multiple different mature mRNA molecules**, each of which can be translated into a different protein.",

        "",

        "For example, imagine a gene containing four exons:",

        "Exon 1 — Exon 2 — Exon 3 — Exon 4",

        "",

        "One mature mRNA may contain:",

        "Exon 1 → Exon 2 → Exon 3 → Exon 4",

        "",

        "Another mature mRNA may contain:",

        "Exon 1 → Exon 3 → Exon 4",

        "",

        "Another may contain:",

        "Exon 1 → Exon 2 → Exon 4",

        "",

        "Each mature mRNA produces a protein with a different amino acid sequence and therefore a different function.",

        "",

        "Alternative splicing is one of the main reasons why humans possess approximately **20 000 protein-coding genes**, yet are able to produce **well over 100 000 different proteins**.",

        "",

        "MEMORY TRICK:",

        "One gene does NOT always produce one protein.",

        "One gene can produce MANY proteins through alternative splicing.",

        "",

        "### Biological Importance of Alternative Splicing",

        "Alternative splicing allows different cell types to produce different proteins from exactly the same DNA sequence.",

        "For example:",

        "• A nerve cell may splice a gene one way to produce a neuron-specific protein.",
        "• A muscle cell may splice the very same gene differently to produce a muscle-specific protein.",

        "This greatly increases protein diversity without requiring additional genes.",

        "",

        "### Diseases Caused by Faulty Splicing",

        "Because RNA splicing is so precise, mistakes can have serious medical consequences.",

        "Faulty splicing may cause:",

        "• Important exons to be skipped.",
        "• Introns to remain inside mature mRNA.",
        "• Frameshift mutations.",
        "• Premature stop codons.",
        "• Abnormal proteins.",

        "",

        "Examples include certain forms of:",

        "• Duchenne muscular dystrophy",
        "• β-thalassaemia",
        "• Some cancers",

        "In these diseases, the DNA sequence may be almost normal, but incorrect RNA splicing produces defective proteins.",

        "",

        "EXAM TIP: A distinction answer explains that alternative splicing **increases protein diversity**, while faulty splicing **reduces protein function**.",

        "",

        "PRACTICE QUESTION:",

        "Explain the role of the spliceosome during RNA processing. In your answer, describe how alternative splicing allows one gene to produce several different proteins and explain why errors during RNA splicing may lead to disease.",

      ],
    );
  }
}