import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Chloroplast Structure";

const List<String> notes = [

  "### The Chloroplast",

  "A chloroplast is a specialised organelle found in the cells of plants and algae. It is the site of photosynthesis, where light energy from the Sun is converted into chemical energy stored in glucose.",

  "",

  "[IMAGE]",

  "",

  "### Why are Chloroplasts Important?",

  "Chloroplasts enable plants to manufacture their own food instead of obtaining food from other organisms. They also release oxygen into the atmosphere as a by-product of photosynthesis.",

  "",

  "### Overall Structure",

  "A chloroplast is enclosed by two membranes and contains an internal membrane system surrounded by a fluid called the stroma. Each part has a specific role during photosynthesis.",

  "",

  "### Outer Membrane",

  "The outer membrane forms the protective covering of the chloroplast.",

  "• Protects the organelle.",
  "• Allows small molecules and ions to pass through relatively easily.",

  "",

  "### Inner Membrane",

  "The inner membrane lies just inside the outer membrane and controls what enters and leaves the chloroplast.",

  "• Regulates transport of substances.",
  "• Surrounds the stroma.",

  "",

  "### Stroma",

  "The stroma is the fluid-filled region inside the chloroplast. It contains the enzymes needed for the Calvin Cycle (light-independent reactions).",

  "The stroma also contains the chloroplast's own DNA and ribosomes, allowing it to produce some of its own proteins.",

  "• Site of the Calvin Cycle.",
  "• Contains enzymes.",
  "• Contains chloroplast DNA.",
  "• Contains ribosomes.",

  "",

  "### Thylakoids",

  "Thylakoids are flattened membrane sacs suspended within the stroma. They contain chlorophyll and other pigments that absorb light energy.",

  "• Capture sunlight.",
  "• Contain chlorophyll pigments.",
  "• Site of the light-dependent reactions.",

  "",

  "### Thylakoid Membrane",

  "The thylakoid membrane contains chlorophyll, photosystems, electron transport proteins and ATP synthase. These components work together to convert light energy into ATP and NADPH.",

  "This membrane is the exact location where the light-dependent reactions occur.",

  "",

  "### Grana",

  "Grana (singular: granum) are stacks of thylakoids.",

  "Stacking thylakoids together greatly increases the membrane surface area available to capture sunlight. More surface area means more chlorophyll molecules can absorb light, making photosynthesis more efficient.",

  "",

  "### Lumen",

  "The lumen is the space inside each thylakoid.",

  "During the light-dependent reactions, hydrogen ions (H⁺) accumulate inside the lumen. This creates a concentration gradient that provides the energy needed for ATP production.",

  "• Stores hydrogen ions.",
  "• Helps drive ATP synthesis.",

  "",

  "### How the Parts Work Together",

  "1. Chlorophyll in the thylakoid membranes absorbs sunlight.",
  "2. The light-dependent reactions produce ATP and NADPH.",
  "3. ATP and NADPH move into the stroma.",
  "4. The Calvin Cycle uses ATP, NADPH and carbon dioxide to produce glucose.",

  "",

  "### Summary",

  "• Outer membrane = Protection.",
  "• Inner membrane = Controls transport.",
  "• Stroma = Calvin Cycle.",
  "• Thylakoids = Light-dependent reactions.",
  "• Thylakoid membrane = Contains chlorophyll and photosystems.",
  "• Grana = Stacks of thylakoids that increase surface area.",
  "• Lumen = Stores H⁺ ions for ATP production.",

  "",

  "### Memory Trick",

  "Imagine the chloroplast as a solar-powered factory:",

  "• Outer and inner membranes = Factory walls.",
  "• Stroma = Factory floor where glucose is assembled.",
  "• Thylakoids = Solar panels.",
  "• Grana = Stacks of solar panels collecting more sunlight.",
  "• Lumen = Battery compartment storing energy for ATP production.",

  "",

  "EXAM TIP:",

  "Remember that the light-dependent reactions occur on the thylakoid membranes, while the Calvin Cycle occurs in the stroma."

];

const List<String> images = [
  "assets/modules/mlb111/chloroplast_structure.png",
];

class ChloroplastStructureScreen extends StatelessWidget {
  const ChloroplastStructureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Photosynthesis",
        subtopic: "Chloroplast Structure",
      ),
    );
  }
}