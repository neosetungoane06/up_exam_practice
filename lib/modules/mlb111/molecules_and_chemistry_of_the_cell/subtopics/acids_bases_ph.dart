import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Acids, Bases and pH";

const List<String> notes = [

"### Acids, Bases and pH",

"Every living cell depends on a stable chemical environment to survive. One of the most important factors that cells regulate is the concentration of hydrogen ions (H⁺), because even small changes can affect how molecules and enzymes function.",

"The study of acids, bases and pH helps us understand how cells maintain this stable environment, known as homeostasis.",

"",

"### Why is this Topic Important?",

"Many biological reactions only occur within a specific pH range. If the pH changes too much, proteins can lose their shape, enzymes stop working properly and cells may die.",

"",

"Examples:",

"• Stomach acid helps digest food.",
"• Blood must remain at a nearly constant pH.",
"• Cells constantly regulate their internal pH.",

"",

"### What is an Acid?",

"An acid is a substance that releases hydrogen ions (H⁺) when dissolved in water.",

"The more hydrogen ions present in a solution, the more acidic that solution becomes.",

"",

"Characteristics of acids:",

"• Release hydrogen ions (H⁺).",
"• Have a pH below 7.",
"• Increase hydrogen ion concentration.",

"",

"Examples of acids:",

"• Hydrochloric acid (HCl) in the stomach.",
"• Carbonic acid in blood.",
"• Citric acid in lemons.",

"",

"### What is a Base?",

"A base is a substance that removes hydrogen ions from a solution or releases hydroxide ions (OH⁻).",

"Because bases reduce the concentration of hydrogen ions, they decrease acidity.",

"",

"Characteristics of bases:",

"• Reduce hydrogen ion concentration.",
"• Often release hydroxide ions (OH⁻).",
"• Have a pH above 7.",

"",

"Examples of bases:",

"• Sodium hydroxide (NaOH).",
"• Ammonia (NH₃).",
"• Bicarbonate ions in blood.",

"",

"### Acids vs Bases",

"Acids and bases have opposite effects on hydrogen ion concentration.",

"",

"Acids:",

"• Increase H⁺ concentration.",
"• Lower pH.",

"",

"Bases:",

"• Decrease H⁺ concentration.",
"• Raise pH.",

"",

"### Worked Example",

"Question:",

"\"A solution contains a very high concentration of hydrogen ions. Is it acidic or basic?\"",

"",

"Step 1:",

"Remember that acids release hydrogen ions.",

"",

"Step 2:",

"A high concentration of H⁺ means the solution is acidic.",

"",

"Answer:",

"The solution is acidic.",

"",

"### Practice Questions",

"1. Which type of substance releases hydrogen ions?",

"",

"2. Does a base increase or decrease hydrogen ion concentration?",

"",

"3. Which is more acidic: a solution with many H⁺ ions or one with few H⁺ ions?",

"",

"4. Give one biological example of an acid.",

"",

"5. Give one biological example of a base.",

"",
  "### The pH Scale",

  "The pH scale is used to measure how acidic or basic a solution is. It is based on the concentration of hydrogen ions (H⁺) present in a solution.",

  "",

  "The pH scale ranges from 0 to 14.",

  "",

  "• pH 7 = Neutral.",
  "• pH below 7 = Acidic.",
  "• pH above 7 = Basic (alkaline).",

  "",

  "An important point to remember is that the pH scale is logarithmic. This means that each whole number change on the pH scale represents a tenfold change in hydrogen ion concentration.",

  "",

  "For example:",

  "• pH 3 is ten times more acidic than pH 4.",
  "• pH 2 is one hundred times more acidic than pH 4.",

  "",

  "### Worked Example",

  "Question:",

  "\"A solution has a pH of 4. Is it acidic, neutral or basic?\"",

  "",

  "Step 1:",

  "Compare the pH value with 7.",

  "",

  "Step 2:",

  "Since 4 is less than 7, the solution is acidic.",

  "",

  "Answer:",

  "The solution is acidic.",

  "",

  "### Practice Questions",

  "1. Is a solution with pH 9 acidic or basic?",

  "",

  "2. Which solution is more acidic: pH 2 or pH 6?",

  "",

  "3. Which pH value represents a neutral solution?",

  "",

  "4. Which solution contains more hydrogen ions: pH 5 or pH 8?",

  "",

  "5. Which solution is more alkaline: pH 10 or pH 8?",

  "",

  "### Why is pH Important in Living Cells?",

  "Cells contain thousands of chemical reactions happening every second. Most of these reactions depend on enzymes.",

  "Enzymes only function properly within a narrow pH range. If the pH changes too much, enzymes change shape and can no longer perform their function.",

  "",

  "Examples:",

  "• Stomach enzymes work best in a very acidic environment.",
  "• Most enzymes inside cells work best close to pH 7.",

  "",

  "### Buffers",

  "Because cells are so sensitive to pH changes, living organisms use substances called buffers.",

  "Buffers resist sudden changes in pH by absorbing or releasing hydrogen ions when necessary.",

  "",

  "Think of a buffer as a shock absorber. It prevents sudden changes that could damage cells.",

  "",

  "Functions of buffers:",

  "• Maintain a stable internal pH.",
  "• Protect enzymes.",
  "• Protect proteins.",
  "• Maintain homeostasis.",

  "",

  "### Worked Example",

  "Question:",

  "\"Why are buffers important in human blood?\"",

  "",

  "Step 1:",

  "Remember that enzymes and proteins require a stable pH.",

  "",

  "Step 2:",

  "Buffers prevent large changes in blood pH.",

  "",

  "Answer:",

  "Buffers maintain a stable blood pH so enzymes and other proteins continue functioning normally.",

  "",

  "### Practice Questions",

  "1. What is the function of a buffer?",

  "",

  "2. Why are buffers important inside cells?",

  "",

  "3. What would happen if blood pH changed dramatically?",

  "",

  "4. Why are enzymes affected by pH?",

  "",

  "5. Explain why buffers are important for maintaining homeostasis.",

  "",

  "### Summary",

  "Acids, bases and pH are essential concepts because they determine the chemical environment inside cells.",

  "",

  "Remember:",

  "• Acids increase hydrogen ions.",
  "• Bases decrease hydrogen ions.",
  "• Low pH = Acidic.",
  "• High pH = Basic.",
  "• Buffers resist sudden changes in pH.",

  "",

  "### Memory Tricks",

  "• Acid = Adds H⁺.",

  "• Base = Brings pH Back Up.",

  "• Buffer = Bodyguard that protects pH.",

  "",

  "EXAM TIP:",

  "University exams often ask WHY pH is important rather than simply asking for the definition. Always explain that pH affects enzyme activity, protein structure and the ability of cells to maintain homeostasis."

];

const List<String> images = [];

class AcidsBasesPhScreen extends StatelessWidget {
  const AcidsBasesPhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cells",
        subtopic: "Acids, Bases and pH",
      ),
    );
  }
}