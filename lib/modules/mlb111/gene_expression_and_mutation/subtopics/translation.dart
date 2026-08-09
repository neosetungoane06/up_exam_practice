import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Translation",
      images: [
        "assets/modules/mlb111/Central_Dogma_Overview.png",
        "assets/modules/mlb111/Translation_Overview.png",
        "assets/modules/mlb111/Ribosome_mRNA_tRNA.png",
      ],
      location: StudyLocation(
        module: "MLB111",
        topic: "Gene Expression and Mutation",
        subtopic: "Translation",
      ),
      notes: [

        "RNA processing has now produced a mature mRNA molecule. The introns have been removed, the exons have been joined together, and the molecule has received a 5' Cap and a Poly-A Tail. The mature mRNA is now ready to leave the nucleus and carry genetic information to the cytoplasm.",

        "",

        "The next stage of gene expression is called **translation**. Translation is the process during which the nucleotide sequence carried by mRNA is converted into the amino acid sequence of a protein.",

        "",

        "Unlike transcription, which occurs inside the nucleus, translation occurs **in the cytoplasm** where ribosomes are located.",

        "",

        "[IMAGE]",

        "",

        "### Why Is It Called Translation?",

        "The word 'translation' means converting information from one language into another.",

        "DNA and RNA store information using the language of **nucleotides (A, U, C and G)**.",

        "Proteins, however, are built using the language of **amino acids**.",

        "Translation therefore converts one biological language into another:",

        "",

        "DNA Language → RNA Language → Protein Language",

        "",

        "In other words, the nucleotide sequence of mRNA is translated into an amino acid sequence.",

        "",

        "EXAM TIP: Translation does NOT copy DNA. Translation converts the genetic code carried by mRNA into a protein.",

        "",

        "### Where Does Translation Occur?",

        "After RNA processing is complete, mature mRNA leaves the nucleus through nuclear pores and enters the cytoplasm.",

        "Once inside the cytoplasm, the mRNA attaches to a ribosome.",

        "The ribosome then reads the genetic code carried by the mRNA and builds the corresponding protein.",

        "",

        "Translation therefore occurs:",

        "• In the cytoplasm.",
        "• On ribosomes.",
        "• Using mature mRNA as the template.",

        "",

        "[IMAGE]",

        "",

        "### The Three Molecules That Work Together",

        "Protein synthesis is only possible because three important molecules work together during translation.",

        "",

        "#### 1. Messenger RNA (mRNA)",

        "Messenger RNA carries the genetic instructions copied from DNA during transcription.",

        "Its nucleotide sequence determines the exact order in which amino acids must be assembled.",

        "Think of mRNA as the instruction manual for building a protein.",

        "",

        "mRNA provides:",

        "• The genetic code.",
        "• The order of codons.",
        "• The template used by the ribosome.",

        "",

        "#### 2. Ribosomes",

        "Ribosomes are the molecular machines responsible for building proteins.",

        "They are composed of ribosomal RNA (rRNA) together with proteins.",

        "Their job is to:",

        "• Bind to the mRNA.",
        "• Read one codon at a time.",
        "• Position transfer RNAs correctly.",
        "• Join amino acids together by forming peptide bonds.",

        "",

        "A ribosome can therefore be thought of as the 'protein factory' of the cell.",

        "",

        "#### 3. Transfer RNA (tRNA)",

        "Transfer RNA acts as the adaptor molecule between nucleic acids and proteins.",

        "Each tRNA carries ONE specific amino acid and delivers it to the ribosome.",

        "One end of the tRNA carries an amino acid.",

        "The opposite end contains three bases called an **anticodon**.",

        "The anticodon pairs with the complementary codon on the mRNA.",

        "",

        "[IMAGE]",

        "",

        "MEMORY TRICK:",

        "mRNA = Message",
        "tRNA = Transport",
        "Ribosome = Builder",

        "",

        "### Amino Acids",

        "Proteins are not built directly from DNA or RNA. Instead, they are built from smaller molecules called amino acids.",

        "There are **20 different amino acids** that cells use to build almost every protein found in the human body.",

        "The sequence of amino acids determines:",

        "• The protein's three-dimensional structure.",
        "• Its biological function.",
        "• Its interactions with other molecules.",

        "",

        "Changing even a single amino acid may completely change how a protein functions.",

        "For example, sickle-cell anaemia results from the substitution of just ONE amino acid in the haemoglobin protein.",

        "",

        "EXAM TIP: DNA does not directly build proteins. DNA provides the instructions for arranging amino acids into proteins.",

        "",

        "### Big Picture Before Learning The Steps",

        "Protein synthesis follows a logical sequence:",

        "DNA stores the information.",
        "↓",
        "Transcription copies the information into mRNA.",
        "↓",
        "RNA Processing edits the mRNA.",
        "↓",
        "Translation uses the mature mRNA to build a protein.",

        "",

        "The actual process of translation occurs in THREE major stages:",

        "• Initiation",
        "• Elongation",
        "• Termination",

        "",

        "These stages will be studied in the following sections.",

        "",

        "PRACTICE QUESTION:",

        "Explain why translation is called translation rather than replication or transcription. In your answer, identify where translation occurs and describe the roles of mRNA, ribosomes and tRNA during protein synthesis.",

        "",

        "### The Genetic Code",

        "The genetic code is the set of rules that tells the cell how the sequence of nucleotides in mRNA is converted into the sequence of amino acids in a protein.",

        "Because proteins are built from amino acids rather than nucleotides, the cell must 'read' the mRNA and determine which amino acid should be added next.",

        "This information is stored in groups of three nucleotides called **codons**.",

        "",

        "### Codons",

        "A **codon** is a sequence of **three consecutive nucleotides** found on an mRNA molecule.",

        "Each codon specifies either:",

        "• One particular amino acid, or",
        "• A signal to start or stop protein synthesis.",

        "",

        "For example:",

        "AUG → Methionine (also the START codon)",
        "UUU → Phenylalanine",
        "GCU → Alanine",

        "",

        "Because there are four different RNA bases (A, U, C and G), three positions can produce:",

        "4 × 4 × 4 = 64 possible codons.",

        "",

        "These 64 codons encode:",

        "• 20 amino acids",
        "• 1 start signal",
        "• 3 stop signals",

        "",

        "EXAM TIP: A codon is ALWAYS found on mRNA, not DNA and not tRNA.",

        "",

        "### Reading Frame",

        "The ribosome reads the mRNA exactly three nucleotides at a time.",

        "For example:",

        "AUG GCU AAA GGC",

        "is read as:",

        "AUG | GCU | AAA | GGC",

        "",

        "It must NEVER be read as:",

        "AU | GGC | UAA | AGG",

        "",

        "Changing the grouping changes every codon after that point and usually produces a completely different protein.",

        "This is called a **frameshift**, and it is one reason why insertion and deletion mutations can be extremely harmful.",

        "",

        "### The Start Codon",

        "Protein synthesis cannot begin randomly along the mRNA.",

        "The ribosome must first locate a special codon called the **start codon**.",

        "The start codon is:",

        "AUG",

        "",

        "AUG has TWO important functions:",

        "• It tells the ribosome exactly where translation begins.",
        "• It codes for the amino acid Methionine (Met).",

        "",

        "Every newly synthesised protein therefore begins with Methionine, although this amino acid may later be removed during post-translational processing.",

        "",

        "MEMORY TRICK: AUG = Always Usually Goes first.",

        "",

        "### Stop Codons",

        "Eventually the ribosome reaches a codon that does not code for any amino acid.",

        "These are called **stop codons**.",

        "",

        "The three stop codons are:",

        "UAA",
        "UAG",
        "UGA",

        "",

        "When a stop codon enters the ribosome:",

        "• No tRNA binds.",
        "• Translation stops.",
        "• The completed protein is released.",
        "• The ribosome separates from the mRNA.",

        "",

        "EXAM TIP: Stop codons do NOT code for amino acids.",

        "",

        "### Degeneracy of the Genetic Code",

        "There are only 20 amino acids but there are 64 codons.",

        "This means that several different codons may code for exactly the same amino acid.",

        "",

        "For example:",

        "UUU → Phenylalanine",
        "UUC → Phenylalanine",

        "",

        "Both codons produce the same amino acid.",

        "",

        "This feature is called the **degeneracy (or redundancy) of the genetic code**.",

        "Degeneracy helps reduce the effects of some mutations because changing one nucleotide does not always change the amino acid that is produced.",

        "",

        "### Transfer RNA (tRNA)",

        "Transfer RNA (tRNA) is often called the adaptor molecule because it connects the language of nucleic acids to the language of proteins.",

        "Its job is to bring the CORRECT amino acid to the ribosome by recognising the complementary codon on the mRNA.",

        "",

        "Every tRNA molecule has three important regions:",

        "• An amino acid attachment site.",
        "• An anticodon.",
        "• A three-dimensional folded structure that fits into the ribosome.",

        "",

        "[IMAGE]",

        "",

        "### The Anticodon",

        "The anticodon is a sequence of three nucleotides found on a tRNA molecule.",

        "It is complementary to the codon found on the mRNA.",

        "",

        "Example:",

        "mRNA codon:",
        "AUG",

        "",

        "Complementary tRNA anticodon:",

        "UAC",

        "",

        "Only the correct anticodon can pair with the correct codon through complementary base pairing.",

        "This ensures that the correct amino acid is delivered to the growing protein.",

        "",

        "### Charging a tRNA",

        "A tRNA molecule does NOT automatically carry an amino acid.",

        "Before translation begins, every tRNA must first be loaded with its correct amino acid.",

        "This process is called **tRNA charging**.",

        "Charging is performed by highly specific enzymes called **aminoacyl-tRNA synthetases**.",

        "",

        "Each aminoacyl-tRNA synthetase recognises:",

        "• One specific amino acid.",
        "• Its matching tRNA.",

        "",

        "The enzyme joins them together.",

        "",

        "### The Bond Between tRNA and the Amino Acid",

        "The amino acid is attached to the 3' end of the tRNA by a **high-energy ester bond**.",

        "The completed molecule is called an **aminoacyl-tRNA**, sometimes referred to as a 'charged tRNA'.",

        "",

        "This ester bond is extremely important because the energy stored within it is later used to help form peptide bonds during protein synthesis.",

        "",

        "Without this stored energy, amino acids could not be joined together efficiently inside the ribosome.",

        "",

        "### What Happens If the Amino Acid Is Not Attached?",

        "If a tRNA is NOT charged:",

        "• It still recognises its codon.",
        "• It can still enter the ribosome.",
        "• BUT it has no amino acid to contribute.",

        "",

        "As a result:",

        "• Protein elongation stops.",
        "• The growing polypeptide cannot continue.",
        "• Translation eventually fails.",

        "",

        "Therefore, charging the tRNA is absolutely essential before translation can proceed.",

        "",

        "EXAM TIP: The enzyme that attaches amino acids to tRNA is **aminoacyl-tRNA synthetase**, NOT the ribosome.",

        "",

        "PRACTICE QUESTION:",

        "Explain the difference between a codon and an anticodon. Describe how aminoacyl-tRNA synthetase forms a charged tRNA, identify the bond formed between the amino acid and tRNA, and explain why this process is essential for successful protein synthesis.",

        "",

        "### The Ribosome",

        "Now that the mRNA has been processed and the tRNAs have been charged with their correct amino acids, protein synthesis can finally begin. The structure responsible for reading the mRNA and assembling amino acids into a protein is the **ribosome**.",

        "",

        "The ribosome is often described as the **protein factory of the cell**, but this description only tells part of the story.",

        "A more accurate description is that the ribosome is a **molecular machine** that coordinates every step of translation. It reads the genetic code carried by the mRNA, ensures that the correct tRNA enters at the correct time, catalyses peptide bond formation between amino acids, and moves along the mRNA until the entire protein has been produced.",

        "",

        "[IMAGE]",

        "",

        "### Structure of a Ribosome",

        "A ribosome is made from two different components:",

        "• Ribosomal RNA (rRNA)",
        "• Ribosomal proteins",

        "",

        "Together these form two subunits:",

        "• Large ribosomal subunit",
        "• Small ribosomal subunit",

        "",

        "The two subunits remain separate until translation begins. Once an mRNA molecule binds, the two subunits assemble to form one complete functional ribosome.",

        "",

        "EXAM TIP: Ribosomes are composed of BOTH ribosomal RNA and proteins. They are NOT made entirely of protein.",

        "",

        "### The Three Binding Sites",

        "Inside every ribosome are three important binding sites through which tRNA molecules move during translation.",

        "",

        "#### A Site (Aminoacyl Site)",

        "The A site is where the next charged tRNA first enters the ribosome.",

        "Only the tRNA carrying the amino acid whose anticodon correctly matches the exposed mRNA codon is allowed to remain in the A site.",

        "",

        "#### P Site (Peptidyl Site)",

        "The P site holds the growing polypeptide chain.",

        "The tRNA located here carries the chain of amino acids that has already been assembled.",

        "",

        "#### E Site (Exit Site)",

        "After a tRNA has transferred its amino acid to the growing protein, it becomes empty.",

        "The empty tRNA moves into the E site before leaving the ribosome and returning to the cytoplasm where it can be charged again.",

        "",

        "MEMORY TRICK:",

        "A = Arrive",
        "P = Protein grows",
        "E = Exit",

        "",

        "### What Is the Main Function of the Ribosome?",

        "Many students think the ribosome's job is to attach amino acids onto tRNA molecules.",

        "This is INCORRECT.",

        "",

        "Attaching amino acids to tRNA occurs BEFORE translation begins and is performed by **aminoacyl-tRNA synthetase**.",

        "",

        "The ribosome's actual functions are:",

        "• Reads the codons on the mRNA.",
        "• Ensures the correct charged tRNA pairs with each codon.",
        "• Catalyses the formation of peptide bonds between amino acids.",
        "• Moves one codon at a time along the mRNA.",
        "• Continues protein synthesis until a stop codon is reached.",

        "",

        "EXAM TIP: The ribosome DOES NOT attach amino acids to tRNA. It joins amino acids TO EACH OTHER by forming peptide bonds.",

        "",

        "### Peptide Bond Formation",

        "One of the ribosome's most important functions is catalysing the formation of **peptide bonds**.",

        "A peptide bond forms between the carboxyl group of one amino acid and the amino group of the next amino acid.",

        "Each peptide bond lengthens the growing polypeptide chain by one amino acid.",

        "This reaction is catalysed by the ribosome's ribosomal RNA (rRNA), which acts as a ribozyme.",

        "",

        "### Initiation of Translation",

        "Translation always begins at a specific location on the mRNA.",

        "The ribosome first binds near the **5' Cap** and begins scanning along the mRNA in the 5' → 3' direction.",

        "Scanning continues until the ribosome encounters the first **AUG** codon.",

        "",

        "AUG is called the **START CODON**.",

        "",

        "The start codon has TWO equally important roles:",

        "• It tells the ribosome exactly where protein synthesis must begin.",
        "• It codes for the amino acid **Methionine (Met)**.",

        "",

        "The first charged tRNA enters carrying Methionine.",

        "Its anticodon (UAC) pairs with the AUG codon.",

        "Only after this correct pairing occurs does the large ribosomal subunit join the small subunit, completing ribosome assembly and allowing elongation to begin.",

        "",

        "MEMORY TRICK:",

        "START = AUG = Methionine",

        "",

        "### Why Is the Start Codon So Important?",

        "Without the start codon, the ribosome would not know where the protein begins.",

        "Beginning translation one nucleotide too early or too late would change the entire reading frame, producing a completely different amino acid sequence.",

        "Therefore, AUG establishes the correct reading frame for the entire protein.",

        "",

        "### The Stop Codons",

        "Eventually the ribosome reaches a codon that signals the end of translation.",

        "These are called **STOP CODONS**.",

        "",

        "The three stop codons are:",

        "• UAA",
        "• UAG",
        "• UGA",

        "",

        "Unlike ordinary codons, stop codons do NOT code for any amino acid.",

        "There is NO tRNA carrying an anticodon that pairs with a stop codon.",

        "",

        "Instead, special proteins called **release factors** bind to the stop codon.",

        "The release factor causes:",

        "• The completed polypeptide to be released.",
        "• The final tRNA to detach.",
        "• The ribosome to separate into its two subunits.",
        "• The mRNA to be released so it can be translated again if needed.",

        "",

        "EXAM TIP:",

        "Start codon → AUG → Methionine",
        "Stop codons → UAA, UAG, UGA → No amino acid",

        "",

        "The next section explains **elongation**, where amino acids are continuously added to the growing polypeptide chain until a stop codon is finally reached.",

        "",

        "### Elongation",

        "Once initiation has successfully positioned the first charged tRNA carrying Methionine inside the P site, the ribosome enters the longest stage of translation: **elongation**.",

        "",

        "During elongation, amino acids are added one after another in the exact order specified by the codons on the mRNA.",

        "This stage repeats continuously until the ribosome reaches a stop codon.",

        "",

        "EXAM TIP: Elongation is the stage during which the polypeptide chain becomes longer.",

        "",

        "### Step 1: A Charged tRNA Enters the A Site",

        "The next exposed codon on the mRNA is now positioned inside the A site.",

        "Only the charged tRNA whose anticodon is complementary to that codon can bind.",

        "",

        "For example:",

        "mRNA codon:",
        "GCU",

        "",

        "Correct tRNA anticodon:",
        "CGA",

        "",

        "That tRNA carries the amino acid Alanine.",

        "",

        "If the anticodon does not match perfectly, the tRNA is rejected before protein synthesis continues.",

        "",

        "This proofreading mechanism helps maintain the accuracy of protein synthesis.",

        "",

        "[IMAGE]",

        "",

        "### Step 2: Peptide Bond Formation",

        "Now two charged tRNAs are present inside the ribosome:",

        "• The growing polypeptide chain is attached to the tRNA in the P site.",
        "• The next amino acid is attached to the tRNA in the A site.",

        "",

        "The ribosome catalyses the formation of a **peptide bond** between these two amino acids.",

        "",

        "The growing polypeptide chain is transferred from the tRNA in the P site onto the amino acid carried by the tRNA in the A site.",

        "",

        "As a result:",

        "• The chain becomes one amino acid longer.",
        "• The tRNA in the P site becomes empty.",
        "• The tRNA in the A site now carries the growing protein.",

        "",

        "Remember:",

        "The energy required for peptide bond formation comes largely from the **high-energy ester bond** that was formed earlier when aminoacyl-tRNA synthetase charged the tRNA.",

        "",

        "This is why charging the tRNA before translation is essential.",

        "",

        "MEMORY TRICK:",

        "Charged tRNA stores energy.",
        "That stored energy helps build peptide bonds.",

        "",

        "### Step 3: Ribosome Translocation",

        "After the peptide bond has formed, the ribosome moves exactly **one codon** further along the mRNA.",

        "",

        "This movement is called **translocation**.",

        "",

        "During translocation:",

        "• The tRNA carrying the growing protein moves from the A site to the P site.",
        "• The empty tRNA moves from the P site to the E site.",
        "• The empty tRNA exits the ribosome.",
        "• A new codon becomes exposed inside the A site.",

        "",

        "The ribosome is now ready for the next charged tRNA to enter.",

        "",

        "### This Cycle Repeats",

        "The following cycle occurs over and over again:",

        "Charged tRNA enters A site",
        "↓",
        "Peptide bond forms",
        "↓",
        "Ribosome moves forward",
        "↓",
        "Empty tRNA exits",
        "↓",
        "Next charged tRNA enters",

        "",

        "This cycle may repeat hundreds or even thousands of times depending on how large the protein is.",

        "",

        "### Direction of Movement",

        "The ribosome always moves along the mRNA in the:",

        "5' → 3' direction",

        "",

        "Meanwhile, the protein itself grows from the:",

        "N-terminus → C-terminus",

        "",

        "These two directions are commonly tested in university examinations.",

        "",

        "EXAM TIP:",

        "The ribosome reads mRNA from 5' to 3', while proteins are synthesised from the amino (N) end towards the carboxyl (C) end.",

        "",

        "### Why Is Elongation So Accurate?",

        "Protein synthesis must be extremely accurate because replacing even one amino acid may alter the protein's structure and function.",

        "",

        "Accuracy is maintained because:",

        "• Aminoacyl-tRNA synthetase attaches the correct amino acid to each tRNA.",
        "• Only complementary codon–anticodon pairing is accepted inside the ribosome.",
        "• Incorrect tRNAs are usually rejected before peptide bond formation occurs.",

        "",

        "Together these mechanisms ensure that proteins are synthesised with remarkable accuracy.",

        "",

        "### What Happens If the Wrong Amino Acid Is Added?",

        "Occasionally an incorrect amino acid may be incorporated into the growing protein.",

        "",

        "This may:",

        "• Alter protein folding.",
        "• Reduce enzyme activity.",
        "• Produce unstable proteins.",
        "• Cause disease if the affected protein is essential.",

        "",

        "However, because the translation machinery is highly accurate, such mistakes are relatively rare.",

        "",

        "PRACTICE QUESTION:",

        "Describe the process of elongation during translation. In your answer explain the roles of the A, P and E sites, peptide bond formation, ribosome translocation, and why charged tRNAs are required before translation can occur.",

      ],
    );
  }
}