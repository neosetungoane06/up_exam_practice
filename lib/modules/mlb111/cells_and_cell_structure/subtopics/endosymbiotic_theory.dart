import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Endosymbiotic Theory";

const List<String> notes = [

  "The Endosymbiotic Theory explains how mitochondria and chloroplasts originated. It proposes that these organelles were once free-living prokaryotic bacteria that formed a permanent symbiotic relationship with a larger ancestral cell.",

  "",

  "[IMAGE]",

  "",

  "### How the Endosymbiotic Theory Happened",

  "Step 1:",

  "A large ancestral eukaryotic cell existed without mitochondria or chloroplasts.",

  "",

  "Step 2:",

  "The large cell engulfed (surrounded and swallowed) a small aerobic bacterium by endocytosis.",

  "",

  "Step 3:",

  "Instead of digesting the bacterium, the host cell allowed it to survive inside the cytoplasm.",

  "",

  "Step 4:",

  "The bacterium produced ATP through cellular respiration while the host cell provided protection and nutrients.",

  "",

  "Step 5:",

  "Both organisms benefited from this relationship (mutualism).",

  "",

  "Step 6:",

  "After millions of years, the bacterium became permanently integrated into the host cell and evolved into the mitochondrion.",

  "",

  "### Formation of Chloroplasts",

  "A similar event occurred later when some ancestral cells engulfed photosynthetic cyanobacteria.",

  "",

  "These bacteria were able to perform photosynthesis and produce glucose for the host cell.",

  "",

  "Over millions of years they evolved into chloroplasts.",

  "",

  "### Why the Relationship Continued",

  "The relationship continued because both organisms benefited:",

  "",

  "Host Cell Received:",

  "• ATP (energy) from mitochondria.",
  "• Glucose from chloroplasts (plant cells).",

  "",

  "Bacteria Received:",

  "• Protection.",
  "• Nutrients.",
  "• Stable environment.",

  "",

  "### Evidence Supporting the Endosymbiotic Theory",

  "Scientists support this theory because mitochondria and chloroplasts have several characteristics that resemble bacteria.",

  "",

  "#### 1. Circular DNA",

  "• Both organelles possess their own DNA.",
  "• Their DNA is circular like bacterial DNA.",
  "• They can replicate some of their own genes.",

  "",

  "#### 2. Binary Fission",

  "• Mitochondria and chloroplasts reproduce independently of the nucleus.",
  "• They divide by binary fission, just like bacteria.",

  "",

  "#### 3. Ribosomes",

  "• Both contain their own 70S ribosomes.",
  "• These ribosomes resemble bacterial ribosomes rather than eukaryotic ribosomes.",

  "",

  "#### 4. Double Membrane",

  "• Both organelles are surrounded by two membranes.",
  "• The inner membrane originated from the original bacterial membrane.",
  "• The outer membrane originated from the host cell during engulfment.",

  "",

  "#### 5. Similar Size",

  "• Mitochondria and chloroplasts are similar in size to modern bacteria.",

  "",

  "#### 6. Independent Replication",

  "• They can grow and divide independently inside the cell.",

  "",

  "### Memory Trick",

  "Engulf → Survive → Mutualism → Evolution",

  "",

  "### Exam Summary",

  "Remember the six main pieces of evidence:",

  "• Circular DNA.",
  "• Binary fission.",
  "• 70S ribosomes.",
  "• Double membrane.",
  "• Similar size to bacteria.",
  "• Independent replication.",

  "",

  "EXAM TIP:",

  "If asked to explain the Endosymbiotic Theory, describe BOTH the process of engulfment and the evidence supporting the theory. Many students only write the evidence and lose marks.",

];

const List<String> images = [
  "assets/modules/mlb111/Endosymbiosis_Theory.png",
];

class EndosymbioticTheoryScreen extends StatelessWidget {
  const EndosymbioticTheoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Cells and Cell Structure",
        subtopic: "Endosymbiotic Theory",
      ),
    );
  }
}