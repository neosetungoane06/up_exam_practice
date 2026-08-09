import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Carbohydrates";

const List<String> notes = [

  "### Carbohydrates",

  "Now that we understand atoms, molecules and water, we can begin studying the four major biological macromolecules. The first group is carbohydrates.",

  "Carbohydrates are organic molecules made mainly of carbon (C), hydrogen (H) and oxygen (O). They are one of the most important energy sources for living organisms.",

  "Almost every cell in your body uses carbohydrates to obtain energy.",

  "",

  "### Why are Carbohydrates Important?",

  "Carbohydrates perform several important functions inside living organisms.",

  "• Provide immediate energy.",
  "• Store energy.",
  "• Form structural materials in some organisms.",
  "• Act as starting materials for making other molecules.",

  "",

  "### General Formula",

  "Many carbohydrates follow the general formula:",

  "(CH₂O)n",

  "This means they contain carbon, hydrogen and oxygen in roughly a 1 : 2 : 1 ratio.",

  "",

  "### Types of Carbohydrates",

  "Carbohydrates can be divided into three main groups depending on their size.",

  "• Monosaccharides.",
  "• Disaccharides.",
  "• Polysaccharides.",

  "",

  "Think of these as small, medium and large carbohydrates.",

  "",

  "### Monosaccharides",

  "'Mono' means one.",

  "A monosaccharide is a single sugar molecule.",

  "These are the simplest carbohydrates and are the building blocks for larger carbohydrates.",

  "Examples include:",

  "• Glucose.",
  "• Fructose.",
  "• Galactose.",

  "",

  "Glucose is the most important monosaccharide because it is the main fuel used by cells during cellular respiration.",

  "",

  "### Disaccharides",

  "'Di' means two.",

  "A disaccharide consists of two monosaccharides joined together.",

  "Examples include:",

  "• Sucrose (table sugar).",
  "• Lactose (milk sugar).",
  "• Maltose.",

  "",

  "Before cells can use a disaccharide for energy, it must first be broken into monosaccharides.",

  "",

  "### Polysaccharides",

  "'Poly' means many.",

  "A polysaccharide consists of hundreds or even thousands of glucose molecules joined together.",

  "Examples include:",

  "• Starch.",
  "• Glycogen.",
  "• Cellulose.",

  "",

  "Because polysaccharides are very large, they are mainly used for energy storage or structural support rather than immediate energy.",

  "",

  "### Starch",

  "Plants store excess glucose as starch.",

  "When the plant requires energy, starch can be broken down back into glucose.",

  "",

  "### Glycogen",

  "Animals store excess glucose as glycogen.",

  "Glycogen is stored mainly in the liver and muscles.",

  "When the body needs energy, glycogen is broken down into glucose.",

  "",

  "### Cellulose",

  "Cellulose is the main structural carbohydrate in plant cell walls.",

  "Unlike starch, humans cannot digest cellulose because we do not produce the required enzyme (cellulase).",

  "",

  "### Summary",

  "Monosaccharide = One sugar.",

  "Disaccharide = Two sugars.",

  "Polysaccharide = Many sugars.",

  "Plants store glucose as starch.",

  "Animals store glucose as glycogen.",

  "Plant cell walls are made from cellulose.",

  "",

  "### Memory Trick",

  "Mono = One",

  "Di = Two",

  "Poly = Many",

  "",

  "EXAM TIP:",

  "Students often confuse starch, glycogen and cellulose. Remember their functions rather than trying to memorise their names.",

  "• Starch → Plant energy storage.",
  "• Glycogen → Animal energy storage.",
  "• Cellulose → Plant cell walls."

];

const List<String> images = [];

class CarbohydratesScreen extends StatelessWidget {
  const CarbohydratesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell",
        subtopic: "Carbohydrate",
      ),
    );
  }
}