import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class MutationScreen extends StatelessWidget {
  const MutationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Mutations",
      images: [
        "assets/modules/mlb111/Types_of_Mutation.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Mutations",
      ),
      notes: [

        "Gene expression allows DNA to be converted into proteins. However, this entire process depends on one important assumption: the DNA sequence must remain accurate. If the DNA sequence changes, the information carried by genes may also change. These permanent changes are called mutations.",

        "",

        "### What Is a Mutation?",

        "A mutation is a permanent change in the nucleotide sequence of DNA. The change becomes part of the DNA molecule itself and can be copied every time DNA replication occurs.",

        "Mutations can occur in a single nucleotide, across an entire gene, or even involve large sections of chromosomes. Regardless of their size, mutations change the genetic information stored within DNA.",

        "[IMAGE]",

        "Unlike temporary damage to DNA, a true mutation remains even after the DNA molecule has been repaired incorrectly or replicated. Once it becomes permanent, every daughter cell produced from that cell will inherit the same mutation.",

        "EXAM TIP: A mutation is defined as a PERMANENT change in the DNA nucleotide sequence. Temporary DNA damage is not considered a mutation unless it becomes permanently incorporated into the DNA.",

        "",

        "### Why Are Mutations Important?",

        "Mutations are often associated with diseases, but they are also one of the main sources of genetic variation within populations. Without mutations, every individual would possess almost identical DNA and evolution would not be possible.",

        "Depending on where they occur and how they affect the gene, mutations may have different consequences:",

        "• Some mutations have no observable effect.",
        "• Some reduce or destroy protein function.",
        "• Some improve protein function under certain environmental conditions.",
        "• Some provide the raw material for evolution through natural selection.",

        "Therefore, mutations are neither inherently good nor bad. Their effect depends on how they influence the final protein and ultimately the phenotype of the organism.",

        "MEMORY TRICK: Mutation provides variation; natural selection decides whether that variation is favourable.",

        "",

        "### DNA Repair: Why Mutations Are Actually Rare",

        "Although DNA replication is extremely accurate, mistakes occasionally occur when DNA Polymerase inserts the wrong nucleotide. Fortunately, cells possess sophisticated DNA repair mechanisms that correct the vast majority of these errors before they become permanent mutations.",

        "During DNA replication, DNA Polymerase proofreads each newly added nucleotide. If an incorrect nucleotide is detected, the enzyme removes it immediately and inserts the correct nucleotide before replication continues.",

        "Even after replication has finished, additional repair enzymes continuously scan DNA for abnormalities such as damaged bases, incorrect base pairing or breaks in the DNA backbone.",

        "Because of these repair systems, the mutation rate is extremely low compared with the enormous number of nucleotides copied every day inside the human body.",

        "However, DNA repair is not perfect.",

        "Occasionally:",
        "• A replication error escapes proofreading.",
        "• DNA damage is repaired incorrectly.",
        "• Repair enzymes fail to recognise the mistake.",

        "When this happens, the incorrect nucleotide sequence becomes permanently incorporated into the DNA. From that moment onwards, it is considered a mutation.",

        "EXAM TIP: Mutations usually arise when DNA repair fails to correct an error before the next round of DNA replication.",

        "",

        "### Causes of Mutations",

        "Mutations arise from two broad sources: spontaneous events inside the cell and environmental agents called mutagens.",

        "Spontaneous mutations occur naturally without any external influence. They are usually caused by random errors during DNA replication or by naturally occurring chemical changes within DNA molecules.",

        "Mutagens are external factors that increase the likelihood of DNA damage and therefore increase the mutation rate.",

        "Common mutagens include:",

        "• Ultraviolet (UV) radiation from sunlight.",
        "• Ionising radiation such as X-rays and gamma rays.",
        "• Certain industrial chemicals and pollutants.",
        "• Tobacco smoke.",
        "• Some viruses that insert their genetic material into host DNA.",

        "Different mutagens damage DNA in different ways. Some change individual bases, others break DNA strands, while others interfere with normal DNA replication.",

        "The greater the DNA damage, the greater the chance that repair mechanisms will fail and a permanent mutation will result.",

        "PRACTICE QUESTION:\nExplain the difference between DNA damage and a mutation. Why do cells possess DNA repair mechanisms, and why do mutations still occur even though these repair systems exist?",

        "### Types of Gene Mutations",

        "Not all mutations affect DNA in the same way. Some alter only a single nucleotide, while others add or remove nucleotides, changing the entire reading frame of a gene.",

        "The type of mutation determines how severely protein synthesis will be affected.",

        "[IMAGE]",

        "",

        "### Point Mutations (Base Substitutions)",

        "A point mutation is a mutation in which **one nucleotide is replaced by another nucleotide**. Because only a single base changes, point mutations usually affect only one codon.",

        "For example:",

        "Original DNA:",
        "AAC GGA TCT",

        "",

        "Mutated DNA:",
        "AAT GGA TCT",

        "",

        "Only one nucleotide has changed, making this a point mutation.",

        "Although only one base changes, the effect on the protein can range from no effect at all to complete loss of protein function.",

        "Point mutations are classified into three major categories.",

        "",

        "### Silent Mutation",

        "A silent mutation changes a nucleotide sequence but **does not change the amino acid** that is incorporated into the protein.",

        "This occurs because the genetic code is **degenerate**, meaning several codons can code for the same amino acid.",

        "Example:",

        "GAA → GAG",

        "Both codons code for **glutamate**, so the amino acid sequence remains unchanged.",

        "Since the amino acid does not change, the protein usually functions normally.",

        "EXAM TIP: A silent mutation changes the DNA sequence but NOT the amino acid sequence.",

        "",

        "### Missense Mutation",

        "A missense mutation changes a codon so that it now codes for a **different amino acid**.",

        "Example:",

        "GAA (Glutamate) → GUA (Valine)",

        "The amino acid changes from glutamate to valine.",

        "Because proteins depend on their amino acid sequence to fold correctly, replacing even one amino acid can alter the protein's three-dimensional structure and function.",

        "Some missense mutations have very small effects, while others cause serious diseases.",

        "One famous example is **sickle-cell anaemia**, where a single amino acid substitution changes the shape and function of haemoglobin.",

        "MEMORY TRICK: Missense = 'Misses' the correct amino acid and inserts a different one.",

        "",

        "### Nonsense Mutation",

        "A nonsense mutation converts a normal amino-acid codon into a **STOP codon**.",

        "Because translation stops immediately when a stop codon is reached, the ribosome releases an incomplete protein.",

        "These shortened proteins are often unstable or completely non-functional because important amino acids near the end were never added.",

        "Nonsense mutations are therefore usually more harmful than silent mutations and often more severe than missense mutations.",

        "EXAM TIP: Nonsense mutation = normal codon becomes STOP codon → protein becomes shorter than normal.",

        "",

        "### Comparing Point Mutations",

        "Silent mutation:",
        "• DNA changes.",
        "• Amino acid stays the same.",
        "• Protein usually unchanged.",

        "",

        "Missense mutation:",
        "• DNA changes.",
        "• Amino acid changes.",
        "• Protein function may change.",

        "",

        "Nonsense mutation:",
        "• DNA changes.",
        "• Stop codon produced.",
        "• Protein is shortened.",
        "• Usually severe.",

        "",

        "PRACTICE QUESTION:\nA DNA mutation changes the codon GAA into GAG. Explain why this is classified as a silent mutation. Then explain how a nonsense mutation differs from a missense mutation in terms of its effect on the final protein.",


        "### Insertions",

        "An insertion mutation occurs when one or more nucleotides are ADDED to the DNA sequence.",

        "Instead of replacing an existing nucleotide (as in a point mutation), an entirely new nucleotide is inserted into the gene.",

        "Example:",

        "Original DNA:",
        "ATG | GCA | TTT | CCG",

        "",

        "Insertion of one nucleotide (A):",
        "ATG | AGC | ATT | TCC | G...",

        "",

        "Notice that every codon after the insertion has changed.",

        "Whether an insertion has a large effect depends on how many nucleotides are inserted.",

        "• If 3 nucleotides are inserted, one extra amino acid is added but the reading frame stays the same.",
        "• If 1 or 2 nucleotides are inserted, the reading frame shifts, producing a frameshift mutation.",

        "",

        "### Deletions",

        "A deletion mutation occurs when one or more nucleotides are REMOVED from the DNA sequence.",

        "Example:",

        "Original DNA:",
        "ATG | GCA | TTT | CCG",

        "",

        "Deletion of one nucleotide:",
        "ATG | CAT | TTC | CG...",

        "",

        "Again, every codon after the deleted nucleotide has changed.",

        "Like insertions, deletions only preserve the reading frame when exactly three nucleotides (or multiples of three) are removed.",

        "Removing one or two nucleotides almost always produces a frameshift mutation.",

        "",

        "### Frameshift Mutations",

        "A frameshift mutation occurs whenever nucleotides are inserted or deleted in numbers that are NOT multiples of three.",

        "To understand why this is so serious, remember that ribosomes read mRNA in groups of THREE nucleotides called codons.",

        "For example:",

        "Original mRNA:",
        "AUG | GCU | UUU | GGA",

        "",

        "Protein:",
        "Methionine → Alanine → Phenylalanine → Glycine",

        "",

        "Now imagine one nucleotide is inserted near the beginning.",

        "New mRNA:",
        "AUG | GGC | UUU | UGG | A...",

        "",

        "Every codon after the mutation has changed.",

        "Instead of changing only ONE amino acid, the ribosome now reads an entirely different set of codons.",

        "As a result:",

        "• Many amino acids change.",
        "• A premature stop codon may appear.",
        "• The protein often becomes non-functional.",

        "This is why frameshift mutations are usually much more severe than point mutations.",

        "EXAM TIP: Point mutations usually affect ONE codon. Frameshift mutations affect EVERY codon after the mutation site.",

        "",

        "### Why Frameshifts Are So Dangerous",

        "Proteins fold into precise three-dimensional shapes based entirely on their amino acid sequence.",

        "When dozens of amino acids suddenly change because the reading frame has shifted, the protein can no longer fold correctly.",

        "Without the correct shape:",

        "• Enzymes lose their active sites.",
        "• Transport proteins cannot bind their molecules.",
        "• Structural proteins lose strength.",
        "• Receptors cannot recognise signalling molecules.",

        "Therefore, frameshift mutations often destroy protein function completely.",

        "MEMORY TRICK: Frameshift = the ribosome starts reading the sentence from the wrong letter, so every 'word' after that becomes nonsense.",

        "",

        "### Not All Mutations Are Harmful",

        "Although mutations are often associated with disease, not every mutation is harmful.",

        "Mutations are classified according to their effects on the organism.",

        "",

        "Neutral Mutations",

        "Neutral mutations have little or no effect on an organism's survival or reproduction.",

        "Most silent mutations fall into this category because they do not change the amino acid sequence of the protein.",

        "",

        "Harmful Mutations",

        "Harmful mutations reduce the function of proteins or interfere with normal cell processes.",

        "These mutations may cause inherited diseases, developmental disorders or increase the risk of cancer.",

        "",

        "Beneficial Mutations",

        "Occasionally, a mutation gives an organism an advantage in a particular environment.",

        "If that advantage improves survival or reproduction, natural selection may increase the frequency of the mutation within a population.",

        "Beneficial mutations therefore provide the genetic variation required for evolution.",

        "",

        "### Summary of Gene Mutations",

        "Silent Mutation:",
        "• DNA changes.",
        "• Amino acid unchanged.",
        "• Protein usually unchanged.",

        "",

        "Missense Mutation:",
        "• Amino acid changes.",
        "• Protein may function differently.",

        "",

        "Nonsense Mutation:",
        "• Stop codon produced.",
        "• Protein becomes shorter.",

        "",

        "Insertion:",
        "• Nucleotide(s) added.",
        "• May cause frameshift.",

        "",

        "Deletion:",
        "• Nucleotide(s) removed.",
        "• May cause frameshift.",

        "",

        "Frameshift:",
        "• Reading frame altered.",
        "• Many amino acids changed.",
        "• Usually the most severe gene mutation.",

        "",

        "PRACTICE QUESTION:\nExplain why a frameshift mutation is generally more harmful than a missense mutation. In your answer, refer to codons, the reading frame and protein synthesis.",

        "### Chromosomal Mutations",

        "So far, we have examined mutations that affect individual genes. However, mutations can also affect entire chromosomes or large sections of chromosomes.",

        "These are called chromosomal mutations.",

        "Unlike gene mutations, which alter only a few nucleotides, chromosomal mutations may involve millions of base pairs and therefore affect many genes simultaneously.",

        "Although your module focuses mainly on gene mutations, it is important to recognise the difference between gene mutations and chromosomal mutations.",

        "",

        "### Gene Mutations vs Chromosomal Mutations",

        "Gene mutations:",
        "• Affect one gene.",
        "• Usually involve one or a few nucleotides.",
        "• Change the DNA sequence of a single gene.",

        "",

        "Chromosomal mutations:",
        "• Affect whole chromosomes or large chromosome segments.",
        "• Often involve many genes.",
        "• Usually have much larger biological effects.",

        "EXAM TIP: Gene mutations change nucleotide sequences. Chromosomal mutations change chromosome structure or chromosome number.",

        "",

        "### Major Types of Chromosomal Mutations",

        "Four major structural chromosomal mutations are commonly recognised.",

        "",

        "Deletion",

        "A section of the chromosome breaks off and is permanently lost.",

        "As a result:",

        "• Several genes may be lost.",
        "• Important proteins may no longer be produced.",
        "• Developmental disorders may occur.",

        "",

        "Duplication",

        "A chromosome segment is copied twice.",

        "Instead of having one copy of certain genes, the chromosome now contains two copies.",

        "This may lead to excessive production of certain proteins because extra copies of the gene are present.",

        "",

        "Inversion",

        "A chromosome segment breaks away, rotates 180° and reattaches in the opposite direction.",

        "No DNA is gained or lost, but gene order changes.",

        "Although the DNA sequence remains present, altered gene arrangement can sometimes interfere with normal gene expression.",

        "",

        "Translocation",

        "A chromosome segment breaks away and attaches to a completely different chromosome.",

        "This can place genes under the control of different regulatory regions, sometimes contributing to diseases such as certain forms of leukaemia.",

        "",

        "MEMORY TRICK:",

        "Deletion = Lost.",
        "Duplication = Copied twice.",
        "Inversion = Flipped.",
        "Translocation = Moved elsewhere.",

        "",

        "### Why Chromosomal Mutations Are Usually More Severe",

        "A single gene mutation may affect one protein.",

        "A chromosomal mutation can affect dozens or even hundreds of genes simultaneously.",

        "Because so many genes are disrupted at once, chromosomal mutations often produce more severe developmental abnormalities than ordinary gene mutations.",

        "",

        "### Mutations and Evolution",

        "Although harmful mutations receive the most attention, mutations are also the ultimate source of new genetic variation.",

        "Every new allele that exists today originally arose because a mutation occurred in the DNA of an ancestor.",

        "Without mutations:",

        "• No new alleles would appear.",
        "• Populations would contain almost no genetic variation.",
        "• Natural selection could not operate.",
        "• Evolution would eventually stop.",

        "Mutation therefore provides the raw material upon which natural selection acts.",

        "",

        "It is important to understand that mutation itself does NOT cause evolution.",

        "Instead:",

        "Mutation creates variation.",
        "Natural selection acts on that variation.",
        "Successful variants become more common over generations.",

        "EXAM TIP: Mutation creates new alleles. Natural selection changes allele frequencies.",

        "",

        "### Putting Everything Together",

        "Gene mutations may:",
        "• Change one nucleotide.",
        "• Change one amino acid.",
        "• Shift the reading frame.",
        "• Introduce a premature stop codon.",

        "",

        "Chromosomal mutations may:",
        "• Remove many genes.",
        "• Duplicate genes.",
        "• Rearrange genes.",
        "• Move genes onto different chromosomes.",

        "",

        "Both types of mutations contribute to genetic diversity, but both can also cause disease when they disrupt normal gene function.",

        "",

        "PRACTICE QUESTION:\nDifferentiate between gene mutations and chromosomal mutations. Describe the four major structural chromosomal mutations and explain why chromosomal mutations generally have more severe consequences than point mutations.",

        "### Mutations and Cancer",

        "Cells in the human body are constantly dividing to replace worn-out or damaged cells. Under normal circumstances, this process is tightly controlled so that cells divide only when necessary.",

        "Cancer develops when mutations damage the genes responsible for controlling the cell cycle. Instead of responding to signals that tell them when to divide or stop dividing, mutated cells begin multiplying uncontrollably.",

        "Cancer is therefore fundamentally a genetic disease caused by the accumulation of mutations in genes that regulate cell growth, DNA repair and programmed cell death.",

        "EXAM TIP: Cancer is NOT caused by a single mutation. It usually develops after multiple mutations accumulate over many years.",

        "",

        "### What Is a Tumour?",

        "A tumour is an abnormal mass of cells produced by repeated uncontrolled cell division.",

        "Normally, cells stop dividing once enough cells have been produced. Cancer cells ignore these control mechanisms and continue dividing, forming a tumour.",

        "Not every tumour is cancerous.",

        "",

        "### Benign Tumours",

        "A benign tumour remains confined to one location and does not invade surrounding tissues.",

        "Characteristics:",

        "• Usually grows slowly.",
        "• Cells remain relatively normal.",
        "• Does not spread to other parts of the body.",
        "• Can often be removed surgically.",

        "",

        "### Malignant Tumours",

        "A malignant tumour is a cancerous tumour whose cells invade surrounding tissues and may spread throughout the body.",

        "Characteristics:",

        "• Rapid growth.",
        "• Cells lose normal structure and function.",
        "• Invades neighbouring tissues.",
        "• Can spread to distant organs.",

        "MEMORY TRICK: Benign = Behaves. Malignant = Migrates.",

        "",

        "### Metastasis",

        "One of the defining characteristics of malignant tumours is their ability to undergo metastasis.",

        "Metastasis is the process by which cancer cells leave the original tumour and spread to other parts of the body.",

        "The process occurs in several stages:",

        "1. Cancer cells detach from the primary tumour.",
        "2. They enter blood vessels or lymphatic vessels.",
        "3. They travel throughout the body.",
        "4. They leave the circulation.",
        "5. They establish a new tumour in another organ.",

        "Metastasis is responsible for the majority of cancer-related deaths because multiple organs become affected.",

        "EXAM TIP: Metastasis refers specifically to the spread of malignant cancer cells to distant parts of the body.",

        "",

        "### Proto-oncogenes",

        "Proto-oncogenes are normal genes that stimulate cell growth and cell division when growth is required.",

        "They are essential for normal development, tissue repair and cell replacement.",

        "Under normal conditions they function like the accelerator pedal of a car — allowing growth only when appropriate.",

        "Examples of their normal roles include:",

        "• Stimulating cell division.",
        "• Responding to growth factors.",
        "• Promoting normal tissue development.",

        "",

        "### Oncogenes",

        "When a proto-oncogene becomes mutated, it may become an oncogene.",

        "An oncogene continuously stimulates cell division even when no growth is needed.",

        "Unlike normal proto-oncogenes, oncogenes remain permanently switched on.",

        "As a result:",

        "• Cell division increases.",
        "• Growth becomes uncontrolled.",
        "• Cancer development becomes more likely.",

        "MEMORY TRICK: Proto-oncogene = normal accelerator. Oncogene = accelerator stuck to the floor.",

        "",

        "### Tumour Suppressor Genes",

        "Tumour suppressor genes perform the opposite function of proto-oncogenes.",

        "Instead of stimulating growth, they slow or stop cell division whenever necessary.",

        "Their functions include:",

        "• Preventing unnecessary cell division.",
        "• Detecting DNA damage.",
        "• Activating DNA repair pathways.",
        "• Triggering apoptosis when damage cannot be repaired.",

        "One of the most important tumour suppressor genes is p53, often called the 'guardian of the genome'.",

        "When DNA damage is detected, p53 pauses the cell cycle to allow repair. If the DNA damage is too severe, p53 activates apoptosis so that the damaged cell cannot become cancerous.",

        "If tumour suppressor genes become mutated:",

        "• DNA damage is no longer repaired efficiently.",
        "• Damaged cells continue dividing.",
        "• Mutations accumulate more rapidly.",
        "• Cancer risk increases dramatically.",

        "EXAM TIP: Oncogenes increase cell division. Tumour suppressor genes decrease cell division.",

        "",

        "### How Cancer Develops",

        "Cancer usually develops through the gradual accumulation of mutations.",

        "A simplified sequence is:",

        "• DNA mutation occurs.",
        "• Proto-oncogene becomes an oncogene.",
        "• Tumour suppressor gene becomes inactive.",
        "• DNA repair becomes less effective.",
        "• Damaged cells survive.",
        "• Cell division becomes uncontrolled.",
        "• A malignant tumour develops.",
        "• Metastasis may eventually occur.",

        "",

        "### Chapter Summary",

        "Throughout this chapter you have followed the complete pathway of genetic information:",

        "DNA → Transcription → RNA Processing → Mature mRNA → Translation → Protein",

        "You also learnt that mutations can permanently alter DNA. Depending on where they occur, mutations may have no effect, change protein structure, cause disease or contribute to evolution.",
        "Finally, you saw how mutations affecting genes that regulate the cell cycle can lead to cancer.",

        "Together, gene expression and mutation explain how genetic information is used, maintained and sometimes altered in living organisms.",

        "",

        "PRACTICE QUESTION:\nExplain how mutations in proto-oncogenes and tumour suppressor genes contribute to cancer development. In your answer, distinguish between benign and malignant tumours and describe the process of metastasis.",

      ],
    );
  }
}

