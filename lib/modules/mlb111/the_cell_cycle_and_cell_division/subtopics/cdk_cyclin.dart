import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';

const List<String> notes = [

"Cyclins and Cyclin-Dependent Kinases (CDKs) are the proteins that control when a cell is allowed to move from one stage of the cell cycle to the next. In the previous section you learnt that cells cannot simply continue dividing whenever they want. Checkpoints decide whether the cell is ready, while cyclins and CDKs provide the signals that actually allow the cell to continue.",

"",

"[IMAGE]",

"",

"EXAM TIP: Checkpoints decide IF a cell may continue. Cyclins and CDKs tell the cell WHEN to continue.",

"",

"### Why Does the Cell Need Cyclins and CDKs?",

"Imagine driving through traffic lights.",

"",

"Even if your car works perfectly, you cannot continue driving unless the traffic light turns green.",

"",

"The checkpoint is the traffic officer checking that everything is safe.",

"The cyclin-CDK complex is the green traffic light allowing the cell to continue.",

"",

"If these proteins did not exist:",

"",

"• Cells would divide at the wrong time.",

"• Cells could divide with damaged DNA.",

"• Daughter cells could receive incorrect chromosomes.",

"• The risk of cancer would increase dramatically.",

"",

"Therefore, cyclins and CDKs ensure that cell division happens only when the cell is fully prepared.",

"",

"### What are Cyclins?",

"Cyclins are regulatory proteins that control the timing of the cell cycle.",

"",

"They are called cyclins because their concentration continuously rises and falls (cycles) during the cell cycle.",

"",

"Unlike many proteins, cyclins are NOT always present in the cell.",

"",

"They are produced only when needed and are destroyed once their job has been completed.",

"",

"Characteristics of cyclins:",

"",

"• Regulatory proteins",

"• Produced only during certain stages",

"• Concentration rises and falls",

"• Activate CDKs",

"• Determine the timing of the cell cycle",

"",

"Example:",

"During G₁ only the cyclins needed for G₁ are produced. Before S Phase begins, different cyclins are produced that prepare the cell for DNA replication.",

"",

"MEMORY TRICK: Cyclins are the TIME KEEPERS of the cell cycle.",

"",

"### What are CDKs (Cyclin-Dependent Kinases)?",

"CDKs are enzymes found inside the cell.",

"",

"Unlike cyclins, CDKs are present in the cell almost all the time.",

"",

"However, by themselves they are inactive.",

"",

"A CDK can only work after a cyclin attaches to it.",

"",

"Think of a CDK as a machine that has electrical power but cannot start until someone presses the ON button.",

"",

"The cyclin is that ON button.",

"",

"Characteristics of CDKs:",

"",

"• Enzymes",

"• Present throughout the cell cycle",

"• Inactive when alone",

"• Activated only after binding to cyclins",

"• Phosphorylate target proteins",

"",

"EXAM TIP: Cyclins activate CDKs. CDKs perform the work."

"",

"### How Cyclins and CDKs Work Together",

"Neither cyclins nor CDKs can regulate the cell cycle alone.",

"",

"They must combine to form a **Cyclin-CDK Complex**.",

"",

"The process works as follows:",

"",

"1. A specific cyclin is produced by the cell.",

"2. The cyclin binds to its matching CDK.",

"3. The CDK becomes activated.",

"4. The activated CDK phosphorylates target proteins.",

"5. These proteins trigger events needed for the next stage of the cell cycle.",

"",

"Think of it this way:",

"",

"• Cyclin = key",

"• CDK = engine",

"• Cyclin-CDK Complex = moving car",

"",

"Without the key, the engine never starts.",

"Without the cyclin, the CDK remains inactive.",

"",

"### What Does Phosphorylation Mean?",

"You will often read that CDKs phosphorylate proteins.",

"",

"Phosphorylation simply means adding a phosphate group to another protein.",

"",

"This small chemical change can:",

"",

"• Turn proteins ON",

"• Turn proteins OFF",

"• Change their shape",

"• Allow them to interact with other proteins",

"",

"In the cell cycle, phosphorylation activates proteins that allow the cell to move into the next phase.",

"",

"Example:",

"When the Cyclin-CDK complex activates proteins involved in DNA replication, the cell is allowed to enter the S Phase.",

"",

"PRACTICE: Why is phosphorylation useful instead of making completely new proteins every time?",

"",

"### Different Cyclins Control Different Stages",

"Not all cyclins perform the same function.",

"",

"Each cyclin appears only at a specific stage of the cell cycle.",

"",

"Examples include:",

"",

"• G₁ Cyclins → control progression through G₁.",

"• G₁/S Cyclins → prepare the cell for DNA replication.",

"• S Cyclins → regulate DNA replication.",

"• M Cyclins → prepare the cell for mitosis.",

"",

"This ensures that events happen in the correct order.",

"",

"Example:",

"It would be disastrous if mitosis began before DNA replication had finished.",

"Different cyclins prevent this from happening.",

"",

"MEMORY TRICK: Different cyclins = Different jobs.",

"",

"### Where Do Cyclins and CDKs Work?",

"Cyclins and CDKs operate throughout the entire cell cycle.",

"",

"They are especially important at the major checkpoints:",

"",

"• G₁ Checkpoint",

"• G₂ Checkpoint",

"• M Checkpoint",

"",

"Once the checkpoint confirms that everything is correct, the appropriate Cyclin-CDK complex activates the next stage.",

"",

"Therefore:",

"",

"Checkpoint = inspection",

"Cyclin-CDK = permission to continue",

"",
"",

"### What Happens if Cyclins or CDKs Are Missing?",

"Because cyclins and CDKs regulate the entire cell cycle, problems with either protein can have serious consequences.",

"",

"#### If Cyclins Are Missing",

"CDKs cannot become activated.",

"",

"This means:",

"",

"• The next stage of the cell cycle cannot begin.",

"• DNA replication may never occur.",

"• Mitosis cannot start.",

"• Cell division stops.",

"",

"Think of cyclins as the ignition key. Without the key, even a perfectly working engine cannot start.",

"",

"#### If CDKs Are Missing",

"Even if cyclins are present, there is no enzyme available to activate the proteins required for the next stage.",

"",

"This means:",

"",

"• The cell receives the signal to divide.",

"• But nothing actually happens.",

"• Cell division cannot proceed.",

"",

"Therefore both cyclins AND CDKs are essential.",

"",

"### What Happens if Cyclins or CDKs Do Not Work Properly?",

"Sometimes mutations occur in the genes that control cyclins or CDKs.",

"",

"If these regulatory proteins become overactive or fail to stop working, the cell may ignore checkpoints and continue dividing uncontrollably.",

"",

"This can lead to:",

"",

"• Rapid cell division.",

"• Accumulation of damaged DNA.",

"• Formation of tumours.",

"• Cancer.",

"",

"This is why many cancer treatments are designed to block specific Cyclin-CDK complexes and slow down uncontrolled cell division.",

"",

"EXAM TIP: Many cancers develop because normal cell-cycle regulation is lost.",

"",

"### Connecting Everything",

"You now understand how the cell controls division:",

"",

"• Checkpoints inspect the cell.",

"• Cyclins determine the correct timing.",

"• CDKs perform the chemical work.",

"• Together they activate the next stage only when the cell is ready.",

"",

"Without these regulators, cells would either never divide or divide continuously without control.",

"",

"### What You Must Remember for Exams",

"• Cyclins are regulatory proteins whose concentrations rise and fall during the cell cycle.",

"• CDKs are enzymes that are inactive unless bound to cyclins.",

"• Cyclins activate CDKs.",

"• Activated CDKs phosphorylate target proteins.",

"• Phosphorylation triggers progression through the cell cycle.",

"• Different cyclins regulate different stages of the cell cycle.",

"• Cyclins and CDKs work closely with cell-cycle checkpoints.",

"• Loss of cyclin-CDK regulation can result in uncontrolled cell division and cancer.",

"",

"Next, you will study **Mitosis**, where all the preparation carried out during Interphase is finally used to produce two genetically identical daughter cells."

];

const List<String> images = [
  "assets/modules/mlb111/CDK_and_Cyclin.png",
];

class CdkCyclinScreen extends StatelessWidget {
  const CdkCyclinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: "Cyclins and CDKs",
      notes: notes,
      images: images,
    );
  }
}
