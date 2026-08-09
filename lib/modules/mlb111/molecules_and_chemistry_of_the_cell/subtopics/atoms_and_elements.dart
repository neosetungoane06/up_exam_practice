import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Atoms and Elements";

const List<String> notes = [

  "### Atoms and Elements",

  "Everything in biology begins with chemistry. Every cell, tissue, organ and organism is built from tiny particles called atoms. Before studying biological molecules such as carbohydrates, proteins and DNA, we must first understand the building blocks from which they are made.",

  "",

  "### Key Terms",

  "• Matter",
  "• Atom",
  "• Molecule",
  "• Macromolecule",
  "• Element",
  "• Proton",
  "• Neutron",
  "• Electron",

  "",

  "### Matter",

  "Matter is anything that has mass and occupies space. Everything inside a living cell is made of matter, including water, proteins, DNA, membranes and organelles.",

  "Examples of matter include:",

  "• Water.",
  "• Air.",
  "• Cells.",
  "• Plants.",
  "• Animals.",

  "",

  "### Atoms, Molecules and Macromolecules",

  "[IMAGE]",

  "An atom is the smallest unit of an element that still retains the properties of that element.",

  "When two or more atoms join together through chemical bonds, they form a molecule.",

  "Some molecules become extremely large by joining many smaller units together. These very large biological molecules are called macromolecules.",

  "Examples:",

  "• Water (H₂O) is a molecule.",
  "• Glucose is a molecule.",
  "• DNA is a macromolecule.",
  "• Proteins are macromolecules.",

  "",

  "Think of it like building a house:",

  "• Atom = One brick.",
  "• Molecule = A wall built from bricks.",
  "• Macromolecule = The entire house.",

  "",

  "### Structure of an Atom",

  "Every atom contains three main subatomic particles.",

  "• Protons (+)",
  "• Neutrons (0)",
  "• Electrons (-)",

  "",

  "Protons and neutrons are located together in the nucleus at the centre of the atom.",

  "Electrons move around the nucleus in regions called energy levels (sometimes called electron shells).",

  "",

  "### Subatomic Particles",

  "Protons",

  "• Positive charge.",
  "• Located inside the nucleus.",
  "• Determine which element the atom is.",

  "",

  "Neutrons",

  "• No electrical charge.",
  "• Located inside the nucleus.",
  "• Add mass to the atom.",

  "",

  "Electrons",

  "• Negative charge.",
  "• Move around the nucleus.",
  "• Participate in chemical bonding.",

  "",

  "### Atomic Number",

  "The atomic number is the number of protons inside an atom.",

  "Every element has its own unique atomic number.",

  "For example:",

  "• Hydrogen has 1 proton.",
  "• Carbon has 6 protons.",
  "• Oxygen has 8 protons.",

  "",

  "### Mass Number",

  "The mass number is the total number of protons and neutrons inside the nucleus.",

  "Mass Number = Protons + Neutrons",

  "",

  "### Elements",

  "An element is a pure substance made of only one type of atom.",

  "Scientists have discovered over 100 elements, but living organisms mainly depend on only a few of them.",

  "",

  "### CHNOPS",

  "Nearly all biological molecules are built from six important elements.",

  "These are remembered using the abbreviation CHNOPS.",

  "• Carbon (C)",
  "• Hydrogen (H)",
  "• Nitrogen (N)",
  "• Oxygen (O)",
  "• Phosphorus (P)",
  "• Sulfur (S)",

  "",

  "These elements are found in carbohydrates, lipids, proteins, nucleic acids and many other molecules that make up living cells.",

  "",

  "### Why Carbon is Special",

  "Carbon deserves special attention because it can bond with many other atoms, including other carbon atoms.",

  "This allows carbon to form millions of different biological molecules.",

  "We will study carbon in much greater detail later in this topic.",

  "",

  "### Memory Trick",

  "CHNOPS = The six ingredients used to build almost every living organism.",

  "",

  "### Exam Tip",

  "Do not confuse an atom with an element.",

  "An atom is one tiny particle.",

  "An element is a substance made entirely from one type of atom.",

  "",

  "### Quick Summary",

  "• Matter has mass and occupies space.",
  "• Atoms are the smallest units of elements.",
  "• Molecules are formed when atoms bond together.",
  "• Macromolecules are very large biological molecules.",
  "• Atoms contain protons, neutrons and electrons.",
  "• CHNOPS are the six most important elements in living organisms.",

  "",

  "### Connect the Dots",

  "Now that you understand the basic building blocks of matter, the next question is: How do atoms join together to form molecules?",

  "This leads us to the next subtopic: Chemical Bonds.",

];

const List<String> images = [
  "assets/modules/mlb111/Difference_Atom_Molecule_Macromolecule.png",
];

class AtomsAndElementsScreen extends StatelessWidget {
  const AtomsAndElementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cells",
        subtopic: "Atoms and Elements",
      ),
    );
  }
}