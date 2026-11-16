/// Which subtopics belong to which topic, per module.
///
/// This exists because StudyNavigation.getScreen() holds the same
/// knowledge as a switch statement, which can be queried ("give me
/// the screen for X") but not enumerated ("how many subtopics does
/// this topic have"). Topic mastery is an average across a topic's
/// subtopics, so the denominator has to be enumerable - otherwise a
/// student who scores 80% on one subtopic out of twelve sees "80%
/// mastery" for the whole topic, which is badly misleading.
///
/// Topic keys here match Topic.name in module_data.dart, NOT the
/// topic strings inside StudyNavigation - those three disagree in
/// places (see the mismatch note at the bottom of this file).
library;

const Map<String, Map<String, List<String>>> subtopicRegistry = {
  "MLB111": {
    "Cells and Cell Structure": [
      "Compartmentalization",
      "Cytoskeleton",
      "Extracellular Matrix",
      "Endomembrane System",
      "Endoplasmic Reticulum",
      "Endosymbiotic Theory",
      "Golgi Apparatus",
      "Introduction to Cells",
      "Lysosomes",
      "Mitochondria and Chloroplast",
      "Motor Protein",
      "Nucleus",
      "Peroxisomes",
      "Plant and Animal Cells",
      "Plasmodesmata",
      "Prokaryotic vs Eukaryotic",
      "Ribosomes",
      "Vesicles",
    ],
    "Cell Membranes": [
      "Active Transport",
      "Amphipathic Molecules",
      "Cell Junctions",
      "Concentration Gradient",
      "Diffusion",
      "Endocytosis",
      "Exocytosis",
      "Facilitated Diffusion",
      "Fluid Mosaic Model",
      "Integrin",
      "Membrane Proteins",
      "Osmosis",
      "Passive Transport",
      "Plasma Membrane",
      "Pump Protein",
    ],
    "Photosynthesis": [
      "Calvin Cycle",
      "Chloroplast Structure",
      "Electron Transport Chain",
      "Factors Affecting Photosynthesis",
      "Light Dependent Reactions",
      "Photosynthesis Introduction",
      "Photosynthesis vs Cellular Respiration",
      "Pigments and Chlorophyll",
    ],
    "Molecules and Chemistry of Cell": [
      "Acids, Base and pH",
      "Atoms and Elements",
      "ATP",
      "Carbohydrates",
      "Carbon Chemistry",
      "Chemical Bonds",
      "Enzymes",
      "Lipids",
      "Nucleic Acids",
      "Proteins",
      "Water",
    ],
    "Energy, Enzymes and Metabolism": [
      "ATP",
      "Catabolism vs Anabolism",
      "Enzyme Structure",
      "Exergonic and Endergonic",
      "Factors Affecting Enzyme Reaction",
      "Gibbs Free Energy",
      "Introduction",
      "Laws of Thermodynamics",
      "Metabolic Pathway and Feedback Inhibition",
      "Metabolism",
    ],
    "Pathways that Harvest Chemical Energy": [
      "Citric Acid Cycle",
      "Electron Transport Chain and Oxidative Phosphorylation",
      "Fermentation",
      "Glycolysis",
      "Introduction to Cellular Respiration",
      "Oxidation and Reduction Reactions",
      "Pyruvate Oxidation",
    ],
    "The Cell Cycle and Cell Division": [
      "CDK Cyclin",
      "Cell Cycle",
      "Cell Cycle Regulation and Cancer",
      "Chromatin and Chromatids",
      "Cytokinesis",
      "Introduction to Cell Cycle",
      "Mitosis",
      "Mutation",
    ],
    "DNA and Heredity": [
      "Bonds and Calculations",
      "Calculation Essentials",
      "Experiments",
      "Introduction",
      "Origin",
      "Replication Accuracy",
      "Replication Enzymes",
      "Semi Conservative",
      "Strands",
      "Telomerase and Telomere",
    ],
    "Gene Expression and Mutation": [
      "Calculation and Exam Essentials",
      "Central Dogma",
      "Gene Regulation",
      "Introduction",
      "Mutations",
      "RNA Processing",
      "Transcription",
      "Translation",
      "Wobble Hypothesis",
    ],
  },
  "WTW134": {
    "Theme 1 Functions and Change": [
      "Introduction to Functions",
      "Domain and Range",
      "Inverse Functions",
      "Graphs and Intercepts",
      "Average Rate of Change",
      "Function Composition",
      "Graph Behavior",
      "Piecewise Function",
      "Symmetry and Common Graph Families",
      "Transformation of Graphs",
      "Logarithmic and Trigonometry Functions",
      "Power and Polynomial Functions",
    ],
    "Theme 2 Differentiation": [
      "Basic Differentiation Rules",
      "The Chain Rule",
      "Interpretation of the Derivative",
      "The Second Derivative",
    ],
    // Themes 3-8 have no subtopic screens wired in StudyNavigation
    // yet, so they stay empty and read as "not started" rather than
    // claiming a mastery number they can't earn.
    "Theme 3 Exponential, Logarithmic, Trigonometric and Absolute Value Functions": [],
    "Theme 4 Using the Derivative": [],
    "Theme 5 Integration": [],
    "Theme 6 Using the Definite Integral": [],
    "Theme 7 Functions and Economics": [],
    "Theme 8 Linear Algebra": [],
  },
  "PHY131": {
    "Introduction to Vectors and Forces": [],
    "Acceleration and Newtons Second Law of Motions": [],
    "Kinematic Equations": [],
    "Work and Energy": [],
  },
  "CMY117": {},
};

/// Slugifies a topic name for mastery document ids. Must stay in
/// sync with slugify() in functions/src/firestore.ts.
String topicSlug(String topic) {
  return topic
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
      .replaceAll(RegExp(r'^_+|_+$'), '');
}

/// Slugifies a subtopic name into a rubric key. Same transform as
/// ActiveRecallService.slugifySubtopic - duplicated here so this
/// file has no dependency on the services layer.
String subtopicSlug(String subtopic) {
  return subtopic
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
      .replaceAll(RegExp(r'^_+|_+$'), '');
}

List<String> subtopicsFor(String moduleCode, String topic) {
  return subtopicRegistry[moduleCode]?[topic] ?? const [];
}

/// Reverses a rubric key back to its human-readable subtopic name,
/// which is what StudyLocation and StudyNavigation expect. Needed
/// when resuming from a stored session, since sessions record only
/// the slugified subtopicId.
String? subtopicForSlug(String moduleCode, String topic, String slug) {
  for (final name in subtopicsFor(moduleCode, topic)) {
    if (subtopicSlug(name) == slug) return name;
  }
  return null;
}

// ------------------------------------------------------------
// TOPIC NAME MISMATCHES - worth fixing in StudyNavigation
// ------------------------------------------------------------
// These three topics are spelled differently in module_data.dart
// and in StudyNavigation.getScreen(), which means getScreen()
// already returns null for every subtopic under them:
//
//   module_data.dart                          StudyNavigation
//   -----------------------------------------------------------
//   "Molecules and Chemistry of Cell"      -> "Molecules and Chemistry of Cells"
//   "Pathways that Harvest Chemical Energy"-> "Pathway that Harvest Chemical Energy"
//   "The Cell Cycle and Cell Division"     -> "The Cell and Cell Division"
//
// This registry uses the module_data.dart spelling. Align
// StudyNavigation to match and those subtopics start resolving.
//
// Also note: StudyNavigation's "Theme 2 Differentiation" block sits
// OUTSIDE the `if (module == "WTW134")` guard, so it would match a
// topic of that name in any module. Harmless today, fragile later.
// ------------------------------------------------------------