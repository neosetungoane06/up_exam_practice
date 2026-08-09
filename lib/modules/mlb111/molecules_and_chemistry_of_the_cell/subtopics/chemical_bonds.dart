import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Chemical Bonds";

const List<String> notes = [

  "### Chemical Bonds",

  "In the previous lesson, we learned that atoms are the basic building blocks of matter. However, atoms rarely exist on their own. Most atoms become more stable by joining with other atoms.",

  "The force that holds atoms together is called a chemical bond.",

  "Without chemical bonds, molecules such as water, glucose, proteins and DNA could not exist. This means life itself would not be possible.",

  "",

  "### Why do Atoms Form Bonds?",

  "Atoms form bonds because they want to become more stable. A stable atom has a full outer energy level (also called the valence shell).",

  "Some atoms achieve stability by sharing electrons, while others achieve it by gaining or losing electrons.",

  "",

  "### The Three Main Types of Chemical Bonds",

  "In biology, the three most important chemical bonds are:",

  "• Covalent bonds.",
  "• Ionic bonds.",
  "• Hydrogen bonds.",

  "",

  "Each type of bond behaves differently, and each plays a different role inside living organisms.",

  "",

  "### Covalent Bonds",

  "A covalent bond forms when two atoms share one or more pairs of electrons.",

  "Instead of one atom taking electrons away from another, both atoms share the electrons. This allows both atoms to become more stable.",

  "",

  "Examples of molecules held together by covalent bonds include:",

  "• Water (H₂O).",
  "• Carbon dioxide (CO₂).",
  "• Glucose (C₆H₁₂O₆).",
  "• Proteins.",
  "• DNA.",

  "",

  "Characteristics of covalent bonds:",

  "• Electrons are shared.",
  "• Very strong and stable.",
  "• Most common bond in biological molecules.",

  "",

  "Why are covalent bonds important?",

  "Because living cells constantly build and maintain large molecules such as proteins and DNA, they need strong bonds that will not easily break.",

  "",

  "Memory Trick:",

  "Covalent = Cooperation.",

  "The atoms cooperate by sharing electrons.",

  "",

  "### Ionic Bonds",

  "An ionic bond forms when one atom transfers one or more electrons to another atom.",

  "After the transfer:",

  "• One atom loses electrons and becomes positively charged (a positive ion or cation).",
  "• The other atom gains electrons and becomes negatively charged (a negative ion or anion).",

  "",

  "Because opposite charges attract each other, the positive and negative ions remain together, forming an ionic bond.",

  "",

  "Example:",

  "Sodium (Na) transfers one electron to chlorine (Cl).",

  "This forms sodium chloride (NaCl), commonly known as table salt.",

  "",

  "Characteristics of ionic bonds:",

  "• Electrons are transferred.",
  "• Produces positively and negatively charged ions.",
  "• Opposite charges attract.",

  "",

  "Why are ionic compounds important in biology?",

  "Ions such as sodium (Na⁺), potassium (K⁺), calcium (Ca²⁺) and chloride (Cl⁻) help nerve cells communicate, muscles contract and cells maintain water balance.",

  "",

  "Memory Trick:",

  "Ionic = I Give.",

  "One atom gives electrons to another.",

  "",

  "### Covalent vs Ionic Bonds",

  "Students often confuse these two bonds.",

  "",

  "Covalent Bond:",

  "• Electrons are shared.",
  "• Forms molecules.",
  "• Strong bond.",

  "",

  "Ionic Bond:",

  "• Electrons are transferred.",
  "• Forms ions.",
  "• Attraction occurs because of opposite charges.",

  "",

  "Simple way to remember:",

  "Covalent = Share.",
  "Ionic = Transfer.",

  "",

  "### Hydrogen Bonds",

  "Hydrogen bonds are different from covalent and ionic bonds.",

  "A hydrogen bond is NOT formed by sharing or transferring electrons.",

  "Instead, it is a weak attraction between different molecules (or different parts of the same large molecule).",

  "",

  "Although one hydrogen bond is weak, many hydrogen bonds together become extremely important.",

  "",

  "Hydrogen bonds are responsible for:",

  "• Holding water molecules together.",
  "• Stabilising the double helix structure of DNA.",
  "• Helping proteins fold into their correct shapes.",

  "",

  "Characteristics of hydrogen bonds:",

  "• Weak individually.",
  "• Strong when many occur together.",
  "• Essential for many biological processes.",

  "",

  "Why are hydrogen bonds important in water?",

  "Hydrogen bonds allow water molecules to stick to one another. This gives water many of its unique properties, which you will study in the next lesson.",

  "",

  "Memory Trick:",

  "Hydrogen bonds are like Velcro.",

  "One strip is weak, but many together hold things tightly.",

  "",

  "### Big Picture",

  "Now that we understand atoms, elements and chemical bonds, we can finally begin studying biological molecules.",

  "Chemical bonds join atoms together to build molecules, and those molecules combine to form the macromolecules that make up every living cell.",

  "This naturally leads to the next topic: Water — the most important molecule in living organisms.",

  "",

  "### Summary",

  "• Chemical bonds hold atoms together.",
  "• Covalent bonds share electrons.",
  "• Ionic bonds transfer electrons.",
  "• Hydrogen bonds are weak attractions between molecules.",
  "• Different bonds give biological molecules different properties.",

  "",

  "EXAM TIP:",

  "A common exam question asks students to compare covalent, ionic and hydrogen bonds. Always remember:",

  "• Covalent = Share electrons.",
  "• Ionic = Transfer electrons.",
  "• Hydrogen = Weak attraction between molecules.",

];

const List<String> images = [];

class ChemicalBondsScreen extends StatelessWidget {
  const ChemicalBondsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Molecules and Chemistry of the Cell ",
        subtopic: "Chemical Bonds",
      ),
    );
  }
}