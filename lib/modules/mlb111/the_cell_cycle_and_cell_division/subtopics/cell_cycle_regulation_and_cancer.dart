import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';

const List<String> notes = [

"Every second, millions of cells in your body divide. Imagine if every one of those cells divided whenever it wanted. Your organs would rapidly become disorganised, damaged and eventually stop functioning.",

"",

"That is why the body has an extremely strict **cell-cycle regulation system**. Every dividing cell must ask for permission before moving to the next stage of the cell cycle.",

"",

"### Why Must the Cell Cycle Be Regulated?",

"The purpose of cell-cycle regulation is to make sure that only healthy cells divide.",

"",

"[IMAGE]",

"",

"Before a cell is allowed to divide, the body checks several important things:",

"",

"• Is the DNA undamaged?",

"• Has all the DNA been copied correctly?",

"• Is the cell large enough to divide?",

"• Does the cell have enough nutrients and energy?",

"• Is this cell actually supposed to divide?",

"",

"If every answer is YES, the cell is allowed to continue.",

"",

"If even one answer is NO, the cell cycle is stopped.",

"",

"Think about boarding an airplane.",

"",

"Before entering the aircraft you pass through several security checkpoints.",

"",

"If one checkpoint fails, you do not continue.",

"",

"The cell cycle works exactly the same way.",

"",

"EXAM TIP: The purpose of cell-cycle regulation is NOT to make cells divide faster. It is to prevent damaged cells from dividing.",

"",

"### The Three Main Cell-Cycle Checkpoints",

"We already learnt that checkpoints exist during the Cell Cycle. Now let's understand exactly what each checkpoint does and why it is so important.",

"",

"### 1. G₁ Checkpoint (Restriction Point)",

"This is the most important checkpoint because it decides whether the cell should divide at all.",

"",

"The cell asks:",

"",

"• Is the environment suitable?",

"• Are enough nutrients available?",

"• Is the DNA healthy?",

"• Is the cell large enough?",

"",

"If everything is normal, the cell enters S Phase and copies its DNA.",

"",

"If not, the cell either:",

"",

"• pauses the cycle,",

"• repairs itself,",

"• enters G₀,",

"• or undergoes apoptosis.",

"",

"PRACTICE: Why is it better to stop the cell BEFORE DNA replication than afterwards?",

"",

"### 2. G₂ Checkpoint",

"This checkpoint occurs immediately after DNA replication.",

"",

"Here the body asks:",

"",

"• Was every chromosome copied correctly?",

"• Were any mistakes made during DNA replication?",

"• Is the cell ready for mitosis?",

"",

"If DNA contains mistakes, repair proteins attempt to fix the damage before mitosis begins.",

"",

"### 3. M Checkpoint (Spindle Checkpoint)",

"This checkpoint occurs during Metaphase.",

"",

"It checks whether every chromosome is properly attached to spindle fibres.",

"",

"The body asks:",

"",

"• Are all chromosomes attached?",

"• Is every chromosome positioned correctly?",

"• Will each daughter cell receive one complete chromosome set?",

"",

"Only after every chromosome is attached correctly is Anaphase allowed to begin.",

"",

"Without this checkpoint, daughter cells could receive missing or extra chromosomes.",

"",

"MEMORY TRICK:",

"G₁ → Should we divide?",

"G₂ → Is DNA copied correctly?",

"M → Are chromosomes attached correctly?",

"",

"### Cyclins and CDKs Revisited",

"In the previous topic, we learnt that cyclins and cyclin-dependent kinases (CDKs) control progression through the cell cycle.",

"",

"Now we can understand WHY they are so important.",

"",

"Cyclins are proteins whose concentrations rise and fall during different stages of the cell cycle.",

"",

"When enough cyclin is present, it binds to its matching CDK.",

"",

"Together they form an active Cyclin-CDK Complex.",

"",

"This complex tells the cell:",

"",

"• Continue growing.",

"• Start DNA replication.",

"• Begin mitosis.",

"• Continue to the next checkpoint.",

"",

"Without cyclins, CDKs remain inactive.",

"",

"Without active CDKs, the cell cycle cannot move forward.",

"",

"Think of it like this:",

"",

"• Cyclin = The key.",

"• CDK = The engine.",

"• Cyclin + CDK = The car starts moving.",

"",

"MEMORY TRICK: Cyclins decide WHEN. CDKs make it HAPPEN.",



"",

"### What Happens if Cyclins or CDKs Malfunction?",

"If cyclins or CDKs stop working correctly, serious problems occur.",

"",

"If they become UNDERACTIVE:",

"",

"• Cells may stop dividing.",

"• Growth slows down.",

"• Tissue repair becomes poor.",

"",

"If they become OVERACTIVE:",

"",

"• Cells keep dividing.",

"• Checkpoints may be ignored.",

"• Cancer can develop.",

"",

"EXAM TIP: Too little cell division causes poor growth. Too much cell division causes cancer.",

"",

"### Tumour Suppressor Genes",

"The body has another layer of protection called **tumour suppressor genes**.",

"",

"These genes work like the brakes of a car.",

"",

"Their job is to STOP cell division whenever something is wrong.",

"",

"They:",

"",

"• Stop the cell cycle.",

"• Activate DNA repair.",

"• Trigger apoptosis if damage is too severe.",

"",

"One of the most important tumour suppressor genes is **p53**.",

"",

"Scientists often call p53 the **'Guardian of the Genome'**.",

"",

"It constantly checks whether DNA has been damaged.",

"",

"If DNA damage is detected, p53 immediately stops the cell cycle.",

"",

"If repair is successful, the cell continues dividing.",

"",

"If repair is impossible, p53 instructs the cell to undergo apoptosis.",

"",

"PRACTICE: Why is apoptosis sometimes a GOOD thing instead of a BAD thing?",

"",

"### Proto-Oncogenes and Oncogenes",

"Some genes normally encourage healthy cell growth.",

"",

"These are called **proto-oncogenes**.",

"",

"They are completely normal and are necessary for growth and development.",

"",

"However, mutations can permanently activate these genes.",

"",

"When this happens, they become **oncogenes**.",

"",

"An oncogene continuously tells the cell:",

"",

"'Keep dividing.'",

"'Keep growing.'",

"'Ignore stop signals.'",

"",

"This is one of the major causes of cancer.",

"",

"Think about a car again:",

"",

"• Proto-oncogene = Accelerator used correctly.",

"• Oncogene = Accelerator stuck to the floor.",

"",

"Eventually the cell divides continuously, even when division should stop.",

"",

"[IMAGE]",

"",

"### How Cancer Forms",

"Cancer does not usually develop because of one single mutation.",

"",

"It normally develops after several mutations accumulate over time.",

"",

"The usual sequence is:",

"",

"• DNA becomes damaged.",

"• Checkpoints fail.",

"• Tumour suppressor genes stop working.",

"• Oncogenes become activated.",

"• Cells divide uncontrollably.",

"• A tumour forms.",

"",

"Understanding this sequence is far more important than memorising it."


"",

"### Benign vs Malignant Tumours",

"When cells continue dividing uncontrollably, they form a mass of cells called a **tumour**.",

"",

"Not all tumours are cancerous.",

"",

"There are two main types:",

"",

"### Benign Tumours",

"Benign tumours are **non-cancerous** growths.",

"",

"They:",

"",

"• Grow slowly.",

"• Remain in one location.",

"• Usually stay enclosed within a capsule.",

"• Do not spread to other parts of the body.",

"",

"Although they are not cancerous, very large benign tumours can still cause problems by pressing on nearby organs or blood vessels.",

"",

"### Malignant Tumours",

"Malignant tumours are **cancerous** growths.",

"",

"They:",

"",

"• Grow rapidly.",

"• Invade nearby tissues.",

"• Destroy surrounding healthy cells.",

"• Can spread throughout the body.",

"",

"Malignant tumours are far more dangerous because they do not remain confined to one place.",

"",

"EXAM TIP: Benign = Localised. Malignant = Spreads.",

"",

"### Metastasis",

"One of the defining characteristics of cancer is **metastasis**.",

"",

"Metastasis is the process by which cancer cells spread from the original tumour to other parts of the body.",

"",

"The process usually occurs as follows:",

"",

"1. Cancer cells break away from the primary tumour.",

"2. They enter the blood or lymphatic vessels.",

"3. They travel to another organ.",

"4. They divide again and form a secondary tumour.",

"",

"For example:",

"",

"• A cancer that starts in the lung may later spread to the brain.",

"• A breast cancer may spread to the bones.",

"",

"The cancer is still named after where it first started.",

"",

"PRACTICE: Why is metastatic cancer much more difficult to treat than a localised tumour?",

"",

"### What Causes Mutations?",

"Mutations may occur naturally during DNA replication, but many are caused by environmental factors called **carcinogens**.",

"",

"Common carcinogens include:",

"",

"• Cigarette smoke.",

"• Ultraviolet (UV) radiation from sunlight.",

"• X-rays and ionising radiation.",

"• Certain viruses such as HPV.",

"• Some industrial chemicals.",

"",

"These carcinogens increase the chance of damaging DNA, which increases the likelihood of cancer developing.",

"",

"### How Everything Connects",

"This entire chapter tells one complete story.",

"",

"• DNA stores genetic information.",

"• DNA is packaged into chromosomes.",

"• The Cell Cycle prepares cells for division.",

"• Cyclins and CDKs regulate progression.",

"• Checkpoints inspect the cell.",

"• Mitosis separates chromosomes.",

"• Cytokinesis separates the cell.",

"• Apoptosis removes damaged cells.",

"• If regulation fails, uncontrolled division begins.",

"• Uncontrolled division leads to tumours and cancer.",

"",

"This is why understanding the Cell Cycle is one of the most important concepts in Cell Biology—it explains both **normal growth** and **the origin of many diseases**.",

"",

"### What You Must Remember for Exams",

"• Cell-cycle regulation prevents damaged cells from dividing.",

"• Cyclins regulate timing; CDKs drive progression through the cycle.",

"• p53 is called the 'Guardian of the Genome'.",

"• Tumour suppressor genes stop cell division when damage is detected.",

"• Proto-oncogenes normally promote growth; mutated proto-oncogenes become oncogenes.",

"• Cancer develops when normal cell-cycle control is lost.",

"• Benign tumours remain localised.",

"• Malignant tumours invade tissues and spread.",

"• Metastasis is the spread of cancer to distant parts of the body.",

"• Apoptosis protects the body by removing damaged cells before they become dangerous.",

"[IMAGE]"
"",

"MEMORY TRICK: **Cancer is not caused because cells divide—it is caused because cells never STOP dividing.**"

];

const List<String> images = [
  "assets/modules/mlb111/cell_cycle_regulation.png",
  "assets/modules/mlb111/cancer_formation.png",
  "assets/modules/mlb111/Apoptosis_vs_Nectosis.png",
];

class CellCycleRegulationAndCancerScreen extends StatelessWidget {
  const CellCycleRegulationAndCancerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Cell Cycle Regulation and Cancer",
      notes: notes,
      images: images,
    );
  }
}
