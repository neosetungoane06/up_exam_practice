import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  final String topicName;

  const SummaryScreen({
    super.key,
    required this.topicName,
  });

  @override
  Widget build(BuildContext context) {
    if (topicName == "Cells and Cell Structure") {
      return const CellsAndCellStructurePage();
    }

    if (topicName == "Cell Membranes") {
      return const CellMembranesPage();
    }

    if (topicName == "Photosynthesis") {
      return const PhotosynthesisPage();
    }

    if (topicName == "Molecules and Chemistry of Cells") {
      return const MoleculesChemistryPage();
    }

    if (topicName == "Energy, Enzymes and Metabolism") {
      return const EnergyEnzymesMetabolismPage();
    }

    if (topicName == "Pathways that Harvest Chemical Energy") {
      return const PathwaysHarvestChemicalEnergyPage();
    }

    if (topicName == "Cell Cycle and Cell Division") {
      return const CellCycleAndCellDivisionPage();
    }

    if (topicName == "DNA and Heredity") {
      return const DNAAndHeredityPage();
    }

    if (topicName == "Gene Expression and Mutation") {
      return const GeneExpressionAndMutationPage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(topicName),
      ),
      body: Center(
        child: Text(
          "$topicName notes coming soon",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
class CellsAndCellStructurePage extends StatelessWidget {
  const CellsAndCellStructurePage({super.key});

  Widget sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget bodyText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 1.7,
        ),
      ),
    );
  }

  Widget bullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 6),
      child: Text(
        "• $text",
        style: const TextStyle(
          fontSize: 16,
          height: 1.6,
        ),
      ),
    );
  }

  Widget topicImage(String path) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(path),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cells and Cell Structure"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Cells and Cell Structure",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            sectionTitle("Learning Outcomes"),

            bullet("Explain what a cell is."),
            bullet("Differentiate between prokaryotic and eukaryotic cells."),
            bullet("Identify major organelles and their functions."),
            bullet("Explain the endomembrane system."),
            bullet("Explain the endosymbiotic theory."),
            bullet("Distinguish between plant and animal cells."),
            bullet("Describe the cytoskeleton and extracellular matrix."),

            sectionTitle("1. What is a Cell?"),

            bodyText(
              "A cell is the basic structural and functional unit of life.",
            ),

            bullet("All living organisms are made of one or more cells."),
            bullet("Cells perform all life processes."),
            bullet("Cells carry out growth, respiration and reproduction."),

            bodyText("Examples:",),

            bullet("A bacterium = one cell"),
            bullet("A human = trillions of cells"),
            bullet("A plant = millions to billions of cells"),

            bodyText("Cells perform all life processes including:",),

            bullet("Growth"),
            bullet("Respiration"),
            bullet("Protein Synthesis"),
            bullet("Reproduction"),
            bullet("Response to the environment"),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "EXAM TIP\n\nIf asked: What is the basic unit of life?\n\nAnswer: The Cell.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            sectionTitle("2. Prokaryotic vs Eukaryotic Cells"),

            topicImage(
              "assets/Eukaryote_Prokaryote.png",
            ),

            bodyText(
              "Prokaryotic cells are simpler cells that lack a nucleus and membrane-bound organelles. Eukaryotic cells possess a nucleus and membrane-bound organelles.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Prokaryotic Cells",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Bacteria"),
            bullet("Archaea"),
            bullet("No nucleus"),
            bullet("DNA free in cytoplasm"),
            bullet("No membrane-bound organelles"),

            const SizedBox(height: 20),

            const Text(
              "Eukaryotic Cells",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Animals"),
            bullet("Plants"),
            bullet("Fungi"),
            bullet("Protists"),
            bullet("Have a nucleus"),
            bullet("Have membrane-bound organelles"),

sectionTitle("3. Organelles and Their Functions"),

const Text(
"Nucleus",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

topicImage("assets/Nucleus.png"),

bodyText(
"The nucleus is the control centre of the cell.",
),

bodyText("Functions of Nucleus",),

bullet("Stores DNA"),
bullet("Controls cell activities"),
bullet("Directs protein production"),

Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.orange.shade50,
borderRadius: BorderRadius.circular(10),
),
child: const Text(
"Remember: Nucleus = Brain of the Cell",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 25),

const Text(
"Ribosomes",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

bodyText(
"Ribosomes are responsible for protein synthesis.",
),

bullet("Make proteins"),
bullet("Found free in cytoplasm"),
bullet("Found attached to Rough ER"),

Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.orange.shade50,
borderRadius: BorderRadius.circular(10),
),
child: const Text(
"Remember: Ribosomes = Protein Factories",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 25),

const Text(
"Endoplasmic Reticulum (ER)",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

bodyText(
"The Endoplasmic Reticulum is a continuous membrane network responsible for synthesising, folding and transporting proteins and lipids.",
),

topicImage("assets/Endoplasmic_Reticulum.png"),

bodyText(
"There are two types of ER(Rough ER and Smooth ER).",
),

const Text(
"1. Rough ER",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),

bodyText(
"Has ribosomes(for translation) and specialises in manufacturing and processing proteins.",
),

bullet("Produces proteins"),

bodyText("Key: Has ribosomes.",),

const Text(
"2. Smooth ER",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),

bodyText(
"Lacks ribosomes and is involved in lipid production and detoxification.",
),

bullet("Produces lipids"),
bullet("Detoxification"),
bodyText("Key: No ribosomes."),

const SizedBox(height: 25),

const Text(
"Vesicles",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

topicImage("assets/vessicle.png"),

bodyText(
"A vesicle is a small membrane-bound sac that stores and transports substances within the cell. *Think of it like a shipping container.*",
),

bullet("Stores substances"),
bullet("Transports substances"),
bullet("Moves proteins between organelles"),


bodyText("Formation of Vesicles:",),
bullet("The Rough ER makes new protein."),
bullet("This protein moves right up against the inside wall(membrane) of ER."),
bullet("The ER membrane starts to bulge outward, like a balloon inflating."),
bullet("As it buds off the membrane it forms a tiny bubble of membrane with the protein safely trapped inside."
),
bullet("Therefore a transport vesicle is formed."),


bodyText("What happens after:",),
bullet("The transport vesicle moves directly along the microtubule(we will learn about microtubule later),microtubule act like a train track for vesicles."
),
bullet("It moves until it hits the Golgi Apparatus and melt into the Golgi Apparatus and then drop off the protein."
),
bullet("Then when the protein is ready to leave the Golgi Apparatus the small bubble buds off the Golgi Apparatus membrane gets directed anywhere in or out of the cell."
),

bodyText("Be careful of this: Most students think vesicle just drop off the protein to the Golgi Apparatus and then leave to float around the cell, which is NOT true. What actually happens is that the vesicle actually fuses with the Golgi Apparatus and the vesicle membrane becomes part of the Golgi Apparatus membrane.",
),

const SizedBox(height: 25),

const Text(
"Golgi Apparatus",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

topicImage("assets/Golgi_Apparatus.png"),

bodyText(
"The Golgi Apparatus operates as the cell's shipping centre,sorts and modifies and also package proteins for delivery.",
),

bullet("Modifies proteins"),
bullet("Sorts proteins"),
bullet("Packages proteins"),

bodyText("The Golgi Apparatus has two faces, the cis-face and the trans-face.",),

bodyText(
  "The cis-face of Golgi Apparatus always face the Endoplasmic Reticulum and is the face that receives the vesicle, and the trans-face of Golgi Apparatus faces away from the ER also known as the exit side",
),

Container(
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Colors.orange.shade50,
    borderRadius: BorderRadius.circular(10),
  ),
  child: const Text(
    "Memory Trick: Golgi = Post Office",
   style: TextStyle(
     fontWeight: FontWeight.bold,
   ),
  ),
 ),

            sectionTitle("Cell Compartmentalisation"),

            bodyText(
              "One of the major advantages of eukaryotic cells is compartmentalisation. Compartmentalisation refers to the division of the cell into separate regions, each enclosed by membranes and specialised for specific functions.",
            ),

            bodyText(
              "These specialised regions are called compartments. Each compartment creates a unique environment that allows particular cellular processes to occur efficiently.",
            ),

            const Text(
              "Examples of Cellular Compartments",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Nucleus"),
            bullet("Mitochondria"),
            bullet("Chloroplasts"),
            bullet("Lysosomes"),
            bullet("Endoplasmic Reticulum"),
            bullet("Golgi Apparatus"),
            bullet("Peroxisomes"),
            bullet("Vacuoles"),

            const SizedBox(height: 15),

            const Text(
              "Why Compartmentalisation is Important",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet(
              "Allows different cellular activities to occur simultaneously without interfering with one another.",
            ),

            bullet(
              "Creates specialised regions that are optimised for particular biochemical reactions.",
            ),

            bullet(
              "Improves efficiency because enzymes and substrates are concentrated in the same location.",
            ),

            bullet(
              "Allows cells to regulate and control different processes independently.",
            ),

            const SizedBox(height: 15),

            const Text(
              "Different Chemical Environments",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Different compartments maintain different chemical conditions. These conditions are important because many enzymes function only within specific environments.",
            ),

            bullet(
              "Lysosomes maintain an acidic environment which activates digestive enzymes.",
            ),

            bullet(
              "The cytoplasm maintains a near-neutral environment suitable for most metabolic reactions.",
            ),

            bullet(
              "Mitochondria maintain specialised chemical gradients used for ATP production.",
            ),

            bullet(
              "Chloroplasts maintain conditions required for photosynthesis.",
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "EXAM TIP\n\nCompartmentalisation increases efficiency by separating cellular processes into specialised regions.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            bodyText("Example:",),
            bullet("Lysosomes has an acidic conditions and the cytoplasm is slightly alkaline, so the cell has do differentiate those regions: Compartments"),


            const Text(
              "Lysosomes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Lysosome.png"),

            bodyText(
              "Lysosomes are membrane-bound organelles containing digestive enzymes. They function as the recycling centres of the cell.",
            ),

            bullet("Digest worn-out organelles"),
            bullet("Break down waste materials"),
            bullet("Destroy harmful bacteria and pathogens"),
            bullet("Recycle useful cellular components"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Lysosome = Cell Recycling Centre",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            bodyText("Characteristics of Lysosome:",),

            bullet("Low PH- The inside of a lysosome is very acidic"),
            bullet("Completely filled with digestive enzymes(called: Hydrolytic Enzymes)"),
            const SizedBox(height: 25),

            sectionTitle("The Endomembrane System"),

            topicImage("assets/Endomembrane System.png"),

            bodyText(
              "The endomembrane system is a group of interconnected membranes and organelles that work together to synthesise, modify, package and transport proteins and lipids throughout the cell.",
            ),

            bodyText(
              "The major components of the endomembrane system include the nuclear envelope, endoplasmic reticulum, Golgi apparatus, vesicles and plasma membrane.",
            ),

            const Text(
              "Protein Movement Through the Endomembrane System",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet(
              "Step 1: DNA in the nucleus contains the instructions for producing a protein.",
            ),

            bullet(
              "Step 2: Ribosomes attached to the Rough Endoplasmic Reticulum synthesise the protein.",
            ),

            bullet(
              "Step 3: The Rough ER begins folding and processing the newly formed protein.",
            ),

            bullet(
              "Step 4: Transport vesicles carry the protein from the Rough ER to the Golgi Apparatus.",
            ),

            bullet(
              "Step 5: The Golgi Apparatus modifies, sorts and packages the protein.",
            ),

            bullet(
              "Step 6: Secretory vesicles transport the finished protein to its destination.",
            ),

            bullet(
              "Step 7: The vesicle may fuse with the plasma membrane and release the protein outside the cell through exocytosis.",
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "EXAM TIP\n\nMemorise:\nNucleus → Ribosome → Rough ER → Vesicle → Golgi Apparatus → Vesicle → Plasma Membrane",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),


            const Text(
              "Peroxisomes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Peroxisome.png"),

            bodyText(
              "Peroxisomes contain enzymes that break down fatty acids and detoxify harmful substances. They also convert hydrogen peroxide into water and oxygen.",
            ),

            bullet("Break down fatty acids"),
            bullet("Detoxify harmful chemicals"),
            bullet("Protect cells from oxidative damage"),
            bullet("They are found mostly in eukaryotic cells"),

            bodyText("Key: Protects the cell from harmful chemicals.",),

            bodyText("Glyoxysomes: Are specialized peroxisomes found exclusively in plants and filamentous fungi.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Peroxisomes = Detox Centres",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Mitochondria and Chloroplasts",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Chloroplast_Mitochondria.png"),

            bodyText(
              "Mitochondria generate ATP through cellular respiration while chloroplasts carry out photosynthesis in plants.",
            ),

            bullet("Mitochondria produce energy in the form of ATP"),
            bullet("Chloroplasts convert light energy into chemical energy"),
            bullet("Both possess their own DNA"),
            bullet("Both support the Endosymbiotic Theory"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Mitochondria = Powerhouse of the Cell",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("Endosymbiotic Theory"),

            topicImage("assets/Endosymbiosis_Theory.png"),

            bodyText(
              "The Endosymbiotic Theory explains the origin of mitochondria and chloroplasts. The theory proposes that these organelles were once free-living prokaryotic organisms that entered a larger ancestral cell.",
            ),

            bodyText(
              "Instead of being digested, the smaller cells formed a mutually beneficial relationship with the host cell. Over millions of years, this relationship became permanent and the smaller cells evolved into organelles.",
            ),

            const Text(
              "Evidence Supporting the Endosymbiotic Theory",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet(
              "Mitochondria and chloroplasts possess their own DNA.",
            ),

            bullet(
              "Their DNA is circular, similar to bacterial DNA.",
            ),

            bullet(
              "Mitochondria and chloroplasts divide independently through binary fission.",
            ),

            bullet(
              "Both organelles contain ribosomes similar to those found in bacteria.",
            ),

            bullet(
              "Both are surrounded by a double membrane.",
            ),

            const SizedBox(height: 15),

            bodyText("Circular DNA:",),
            bullet("The Mitochondria and Chloroplasts contain their own unique DNA, which is organized into a single, circular chromosome."
            ),
            bullet("And their DNA is similar to the DNA of bacteria"),

            bodyText("Binary Fission:",),
            bullet("Mitochondria and Chloroplast reproduce reproduce independently within the host cell by pinching in half, a process called Binary Fission"
            ),

            bodyText("Bacterial Ribosomes:",),
            bullet("Both the organelles manufacture their own proteins using ribosomes"
            ),

            bodyText("Double Membrane:",),
            bullet("Both organelles are encased by two distinct phospholipid membranes"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "EXAM TIP\n\nWhen asked for evidence of the Endosymbiotic Theory, mention: circular DNA, binary fission, bacterial ribosomes and double membranes.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("The Cytoskeleton"),

            bodyText(
              "The cytoskeleton is a network of protein fibres that extends throughout the cytoplasm. It provides structural support, maintains cell shape and enables movement within the cell.",
            ),

            bodyText(
              "The cytoskeleton consists of three major components: microfilaments, intermediate filaments and microtubules.",
            ),

            const Text(
              "Microfilaments",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Microfilament.png"),

            bodyText(
              "Microfilaments are the thinnest fibres of the cytoskeleton and are composed mainly of the protein actin.",
            ),

            bullet("Maintain cell shape"),
            bullet("Enable cell movement"),
            bullet("Assist in muscle contraction"),
            bullet("Participate in cytokinesis"),

            const SizedBox(height: 20),

            const Text(
              "Intermediate Filaments",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Intermediate_Filament.png"),

            bodyText(
              "Intermediate filaments are stronger and more durable than microfilaments. Their primary function is to provide mechanical strength to cells.",
            ),

            bullet("Provide structural support"),
            bullet("Anchor organelles in position"),
            bullet("Resist mechanical stress"),

            const SizedBox(height: 20),

            const Text(
              "Microtubules",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Microtubule.png"),

            bodyText(
              "Microtubules are hollow tubes composed of tubulin proteins. They are the largest cytoskeletal fibres.",
            ),

            bullet("Maintain cell shape"),
            bullet("Provide tracks for transport"),
            bullet("Form the mitotic spindle"),
            bullet("Help move chromosomes during cell division"),

            const SizedBox(height: 20),

            const Text(
              "Motor Proteins",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Motor_Protein.png"),

            bodyText(
              "Motor proteins move cargo along microtubules using energy from ATP. They function as the transport machinery of the cell.",
            ),

            bullet("Transport vesicles"),
            bullet("Transport organelles"),
            bullet("Move cellular materials"),
            bullet("Use ATP as an energy source"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick:\nMicrofilaments = Movement\nIntermediate Filaments = Strength\nMicrotubules = Transport Tracks",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("Extracellular Matrix (ECM)"),

            topicImage("assets/Extracellular_Matrix.png"),

            bodyText(
              "The Extracellular Matrix (ECM) is a network of molecules surrounding animal cells. It provides structural support and helps cells communicate with one another.",
            ),

            bodyText(
              "The ECM is produced by cells and secreted into the extracellular space where it forms a supportive environment around tissues.",
            ),

            const Text(
              "Major Components of the ECM",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Collagen fibres"),
            bullet("Proteoglycans"),
            bullet("Fibronectin"),
            bullet("Integrins"),

            const SizedBox(height: 15),

            const Text(
              "Functions of the ECM",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Provides structural support"),
            bullet("Anchors cells in tissues"),
            bullet("Facilitates cell communication"),
            bullet("Helps regulate cell behaviour"),
            bullet("Assists in tissue repair"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "EXAM TIP\n\nThe ECM is found in animal cells and provides support, adhesion and communication.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("Plasmodesmata"),

            topicImage("assets/Plasmodesmata.png"),

            bodyText(
              "Plasmodesmata are microscopic channels that pass through the cell walls of adjacent plant cells.",
            ),

            bodyText(
              "These channels allow neighbouring plant cells to exchange materials and communicate directly.",
            ),

            bullet("Connect adjacent plant cells"),
            bullet("Transport molecules between cells"),
            bullet("Enable cell-to-cell communication"),
            bullet("Help coordinate activities within plant tissues"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Plasmodesmata = Plant Cell Bridges",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("Plant Cells vs Animal Cells"),

            topicImage("assets/Cells.png"),

            bodyText(
              "Plant and animal cells share many structures, but they also possess important differences.",
            ),

            const Text(
              "Plant Cells",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Contain chloroplasts"),
            bullet("Have a cell wall"),
            bullet("Possess a large central vacuole"),
            bullet("Generally have a fixed shape"),

            const SizedBox(height: 15),

            const Text(
              "Animal Cells",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Do not contain chloroplasts"),
            bullet("Lack a cell wall"),
            bullet("Have smaller vacuoles"),
            bullet("Usually have a flexible shape"),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "EXAM TIP\n\nCell wall + Chloroplast + Large Vacuole = Plant Cell",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("Practice Questions"),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Distinguish between prokaryotic and eukaryotic cells.\n\n"
                      "2. Explain the importance of compartmentalisation.\n\n"
                      "3. Describe the role of the nucleus.\n\n"
                      "4. Explain the functions of the Rough ER and Smooth ER.\n\n"
                      "5. Describe the pathway of a protein through the endomembrane system.\n\n"
                      "6. State two functions of lysosomes.\n\n"
                      "7. Explain the Endosymbiotic Theory.\n\n"
                      "8. Compare microfilaments, intermediate filaments and microtubules.\n\n"
                      "9. State the functions of the Extracellular Matrix.\n\n"
                      "10. Compare plant and animal cells.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle("Suggested Answers"),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Prokaryotes lack a nucleus and membrane-bound organelles while eukaryotes possess both.\n\n"
                      "2. Compartmentalisation increases efficiency by separating cellular processes into specialised regions.\n\n"
                      "3. The nucleus stores DNA and controls cellular activities.\n\n"
                      "4. Rough ER synthesises proteins while Smooth ER synthesises lipids and detoxifies substances.\n\n"
                      "5. Nucleus → Ribosome → Rough ER → Vesicle → Golgi Apparatus → Vesicle → Plasma Membrane.\n\n"
                      "6. Lysosomes digest waste and recycle cellular materials.\n\n"
                      "7. Mitochondria and chloroplasts evolved from free-living bacteria.\n\n"
                      "8. Microfilaments provide movement, intermediate filaments provide strength and microtubules provide transport tracks.\n\n"
                      "9. The ECM provides support, adhesion and communication.\n\n"
                      "10. Plant cells possess chloroplasts, cell walls and large vacuoles while animal cells do not.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),
              ),
            ),
            bodyText("Good luck on getting that A+.",),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}


class CellMembranesPage extends StatelessWidget {
  const CellMembranesPage({super.key});
  Widget topicImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget bodyText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 1.7,
        ),
      ),
    );
  }

  Widget bullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(fontSize: 16),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cell Membranes"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Cell Membranes",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bodyText(
              "The cell membrane forms the boundary of every cell. It separates the internal environment from the external environment and controls the movement of substances into and out of the cell.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Functions of Cell Membranes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cell membranes perform several important functions that are essential for life.",
            ),

            bullet("Separates the cell from its environment"),
            bullet("Controls movement of substances"),
            bullet("Maintains homeostasis"),
            bullet("Allows communication between cells"),
            bullet("Provides structural support"),
            bullet("Anchors proteins"),

            const SizedBox(height: 25),

            const Text(
              "Amphipathic Molecules",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Amphipatic_molecule.png"),

            bodyText(
              "Phospholipids are amphipathic molecules. This means that each phospholipid possesses both a hydrophilic region and a hydrophobic region.",
            ),

            bullet("Hydrophilic head = attracted to water"),
            bullet("Hydrophobic tail = repels water"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Amphipathic = likes and dislikes water at the same time.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Fluid Mosaic Model",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Mosaic_Model.png"),

            bodyText(
              "The Fluid Mosaic Model describes the structure of the plasma membrane. The membrane is fluid because phospholipids and proteins can move laterally. It is called a mosaic because many different molecules are embedded within it.",
            ),

            bullet("Phospholipid bilayer forms the framework"),
            bullet("Proteins float within the membrane"),
            bullet("Membrane remains flexible"),
            bullet("Allows transport and communication"),

            const SizedBox(height: 25),

            const Text(
              "Membrane Proteins",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Membrane_Proteins.png"),

            bodyText(
              "Membrane proteins perform many specialised functions. Some transport substances while others act as receptors, enzymes or structural anchors.",
            ),

            bullet("Transport proteins"),
            bullet("Receptor proteins"),
            bullet("Enzymes"),
            bullet("Cell recognition proteins"),
            bullet("Structural proteins"),

            const SizedBox(height: 40),


            const SizedBox(height: 25),

            const Text(
              "Cell Junctions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cells in tissues are connected by specialised junctions. These junctions help cells communicate, attach to one another and maintain tissue integrity.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Tight Junctions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Tight_Junction .png"),

            bodyText(
              "Tight junctions form a seal between adjacent cells. They prevent substances from leaking between cells and help maintain separate environments on either side of a tissue.",
            ),

            bullet("Forms a watertight seal"),
            bullet("Prevents leakage between cells"),
            bullet("Common in epithelial tissues"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Tight Junction = Ziplock Bag Seal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Desmosomes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Desmosome.png"),

            bodyText(
              "Desmosomes are strong anchoring junctions that hold cells together. They allow tissues to withstand stretching and mechanical stress.",
            ),

            bullet("Strong cell-to-cell attachment"),
            bullet("Provides mechanical strength"),
            bullet("Common in skin and heart tissue"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Desmosome = Cellular Rivets",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Gap Junctions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Gap_Junction.png"),

            bodyText(
              "Gap junctions form communication channels between neighbouring cells. Small molecules and ions can move directly from one cell to another.",
            ),

            bullet("Allows cell communication"),
            bullet("Transfers ions and small molecules"),
            bullet("Important in heart muscle cells"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Gap Junction = Cellular Tunnel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Integrins",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Integrin.png"),

            bodyText(
              "Integrins are membrane proteins that connect cells to the extracellular matrix. They help cells attach, communicate and respond to changes in their environment.",
            ),

            bullet("Connect cells to extracellular matrix"),
            bullet("Assist cell signalling"),
            bullet("Help cells sense their environment"),

            const SizedBox(height: 40),

            const Text(
              "Concentration Gradient",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Concentration_gradient.png"),

            bodyText(
              "A concentration gradient exists whenever there is a difference in the concentration of a substance between two regions.",
            ),

            bodyText(
              "Substances naturally move down their concentration gradient, meaning they move from a region of high concentration to a region of low concentration.",
            ),

            bullet("High concentration → Low concentration"),
            bullet("No energy required"),
            bullet("Drives passive transport"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Things naturally move from crowded areas to less crowded areas.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Passive Transport",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Passive_transport.png"),

            bodyText(
              "Passive transport is the movement of substances across a membrane without the use of cellular energy (ATP).",
            ),

            bullet("No ATP required"),
            bullet("Moves down concentration gradient"),
            bullet("Occurs naturally"),

            bodyText(
              "Examples include diffusion, osmosis and facilitated diffusion.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Diffusion",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Diffusion is the net movement of molecules from an area of high concentration to an area of low concentration until equilibrium is reached.",
            ),

            bullet("Moves down concentration gradient"),
            bullet("No energy required"),
            bullet("Continues until equilibrium"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Perfume spreading through a room is diffusion.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Osmosis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Osmosis.png"),

            bodyText(
              "Osmosis is the diffusion of water across a selectively permeable membrane.",
            ),

            bodyText(
              "Water moves from an area of high water concentration to an area of lower water concentration.",
            ),

            bullet("Only water moves"),
            bullet("Requires a selectively permeable membrane"),
            bullet("No ATP required"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.cyan.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Osmosis = movement of water only.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Channel Proteins",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Channel.png"),

            bodyText(
              "Channel proteins form hydrophilic pathways through the membrane. They allow specific substances to move across the membrane by facilitated diffusion.",
            ),

            bullet("Forms a tunnel through the membrane"),
            bullet("Specific molecules can pass"),
            bullet("No ATP required"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Channel Protein = Tunnel.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Carrier Proteins",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Carrier.png"),

            bodyText(
              "Carrier proteins bind specific molecules and change shape to move them across the membrane.",
            ),

            bullet("Binds specific molecule"),
            bullet("Changes shape"),
            bullet("Moves substances across membrane"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Carrier Protein = Taxi Service.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Text(
              "Active Transport",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Passive_VS_Active.png"),

            bodyText(
              "Active transport is the movement of substances across a membrane against their concentration gradient.",
            ),

            bodyText(
              "Because substances are moving from low concentration to high concentration, energy in the form of ATP is required.",
            ),

            bullet("Requires ATP"),
            bullet("Moves against concentration gradient"),
            bullet("Low concentration → High concentration"),
            bullet("Uses transport proteins"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Active = Action = Uses Energy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Membrane Pumps",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Pumps.png"),

            bodyText(
              "Membrane pumps are transport proteins that use ATP to move substances across membranes.",
            ),

            bullet("Require ATP"),
            bullet("Move substances against concentration gradients"),
            bullet("Important for maintaining cellular conditions"),

            bodyText(
              "An example is the sodium-potassium pump which helps maintain nerve cell function.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Endocytosis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Endo_and_Exo.png"),

            bodyText(
              "Endocytosis is the process by which cells take materials into the cell by forming vesicles from the plasma membrane.(Please ignore the labelling of Mitochondrion and Extracelllar because there was an error.)",
            ),

            bullet("Material moves into the cell"),
            bullet("Uses vesicles"),
            bullet("Requires energy"),

            bodyText(
              "The membrane surrounds the material and pinches inward to form a vesicle.",
            ),
            bodyText("Pinocytosis = Water Movement",),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Endo = Enter.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Exocytosis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Endo_and_Exo.png"),

            bodyText(
              "Exocytosis is the process by which cells release materials to the outside of the cell. Please ignore the labelling of Mitochondrion and Extracelllar, there was an error.",
            ),

            bullet("Material leaves the cell"),
            bullet("Uses vesicles"),
            bullet("Requires energy"),

            bodyText(
              "The vesicle fuses with the plasma membrane and releases its contents outside the cell.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Exo = Exit.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Passive vs Active Transport",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Passive_VS_Active.png"),

            bodyText(
              "Passive transport and active transport differ in their energy requirements and direction of movement.",
            ),

            bullet("Passive transport does not require ATP"),
            bullet("Active transport requires ATP"),
            bullet("Passive transport moves down a concentration gradient"),
            bullet("Active transport moves against a concentration gradient"),
            bullet("Both help maintain homeostasis"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: If ATP is mentioned, think Active Transport.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Cell Membrane Summary",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The cell membrane is a selectively permeable barrier that separates the internal environment of the cell from the external environment. It controls movement of substances, allows communication and helps maintain homeostasis.",
            ),

            bullet("Made of phospholipids"),
            bullet("Contains proteins"),
            bullet("Selectively permeable"),
            bullet("Maintains homeostasis"),
            bullet("Allows communication between cells"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Big Picture: The cell membrane controls what enters and leaves the cell.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Common Exam Mistakes",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet(
              "Confusing diffusion with osmosis. Osmosis only involves water.",
            ),

            bullet(
              "Thinking active transport moves from high to low concentration. It moves from low to high concentration.",
            ),

            bullet(
              "Forgetting that active transport requires ATP.",
            ),

            bullet(
              "Confusing channel proteins with carrier proteins.",
            ),

            bullet(
              "Thinking all substances can freely cross the membrane.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Always check whether ATP is being used and whether movement is with or against the concentration gradient.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Practice Questions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Explain why phospholipids are called amphipathic molecules.\n\n"
                      "2. State the Fluid Mosaic Model of the cell membrane.\n\n"
                      "3. Distinguish between passive transport and active transport.\n\n"
                      "4. Explain the difference between channel proteins and carrier proteins.\n\n"
                      "5. Define osmosis.\n\n"
                      "6. Explain why ATP is required during active transport.\n\n"
                      "7. Describe the role of membrane pumps.\n\n"
                      "8. Distinguish between endocytosis and exocytosis.\n\n"
                      "9. Explain the function of tight junctions.\n\n"
                      "10. Explain the function of gap junctions.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Suggested Answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Amphipathic molecules possess both a hydrophilic head and a hydrophobic tail.\n\n"
                      "2. The Fluid Mosaic Model describes the membrane as a flexible phospholipid bilayer with proteins embedded throughout it.\n\n"
                      "3. Passive transport does not require ATP and moves down a concentration gradient, while active transport requires ATP and moves against a concentration gradient.\n\n"
                      "4. Channel proteins form tunnels while carrier proteins bind substances and change shape.\n\n"
                      "5. Osmosis is the movement of water across a selectively permeable membrane.\n\n"
                      "6. ATP provides energy to move substances against their concentration gradient.\n\n"
                      "7. Membrane pumps use ATP to transport substances across membranes.\n\n"
                      "8. Endocytosis brings substances into the cell while exocytosis releases substances from the cell.\n\n"
                      "9. Tight junctions form seals between neighbouring cells.\n\n"
                      "10. Gap junctions allow communication between neighbouring cells through direct channels.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Congratulations! You have completed the Cell Membranes topic. Before moving to the next topic, make sure you can explain the Fluid Mosaic Model, distinguish between passive and active transport, and describe how substances cross the membrane. Pay close attention to the images because they visually explain clearly. ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 50),

            const SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}


class PhotosynthesisPage extends StatelessWidget {
const PhotosynthesisPage({super.key});

Widget topicImage(String imagePath) {
return Padding(
padding: const EdgeInsets.symmetric(vertical: 12),
child: Image.asset(imagePath),
);
}

Widget bodyText(String text) {
return Padding(
padding: const EdgeInsets.only(bottom: 12),
child: Text(
text,
style: const TextStyle(
fontSize: 16,
height: 1.7,
),
),
);
}

Widget bullet(String text) {
return Padding(
padding: const EdgeInsets.only(left: 12, bottom: 6),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text("• "),
Expanded(
child: Text(
text,
style: const TextStyle(
fontSize: 16,
height: 1.6,
),
),
),
],
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Photosynthesis"),
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

const Text(
"Photosynthesis",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 15),

bodyText(
"Photosynthesis is the process by which plants, algae and certain bacteria convert light energy into chemical energy stored in glucose. It is one of the most important biological processes because nearly all life on Earth depends directly or indirectly on it.",
),

topicImage("assets/Photosynthesis.png"),

bodyText(
"During photosynthesis, carbon dioxide and water are used to produce glucose and oxygen.",
),

Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.green.shade50,
borderRadius: BorderRadius.circular(10),
),
child: const Text(
"Word Equation: Carbon Dioxide + Water + Light Energy → Glucose + Oxygen",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 40),

  const Text(
    "The Chloroplast",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Photosynthesis occurs inside chloroplasts. Chloroplasts are specialised organelles found in plants and algae. They contain chlorophyll pigments that absorb light energy.",
  ),

  bullet("Site of photosynthesis"),
  bullet("Contains chlorophyll"),
  bullet("Found mainly in leaves"),
  bullet("Converts light energy into chemical energy"),

  const SizedBox(height: 25),

  const Text(
    "Major Parts of a Chloroplast",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "A chloroplast contains several important structures that work together during photosynthesis.",
  ),

  bullet("Outer membrane"),
  bullet("Inner membrane"),
  bullet("Stroma"),
  bullet("Thylakoids"),
  bullet("Grana"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Remember: Light reactions occur in the thylakoids while the Calvin Cycle occurs in the stroma.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Chlorophyll Pigments",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  topicImage("assets/Chlorophyll_A_and_B.png"),

  bodyText(
    "Chlorophyll is the green pigment responsible for capturing light energy. Different chlorophyll pigments absorb different wavelengths of light.",
  ),

  const Text(
    "Chlorophyll a",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),

  bullet("Primary photosynthetic pigment"),
  bullet("Directly involved in light reactions"),

  const Text(
    "Chlorophyll b",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),

  bullet("Accessory pigment"),
  bullet("Transfers absorbed energy to chlorophyll a"),

  bodyText(
    "Together, chlorophyll a and chlorophyll b increase the range of light that plants can use.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Two Main Stages of Photosynthesis",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Photosynthesis occurs in two major stages.",
  ),

  bullet("Light-dependent reactions"),
  bullet("Calvin Cycle (Light-independent reactions)"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Exam Tip: Light reactions capture energy. The Calvin Cycle uses that energy to make sugars.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 40),

  const Text(
    "Light-Dependent Reactions",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "The light-dependent reactions are the first stage of photosynthesis. They occur in the thylakoid membranes of the chloroplast and require light energy.",
  ),

  bullet("Occurs in thylakoids"),
  bullet("Requires sunlight"),
  bullet("Produces ATP"),
  bullet("Produces NADPH"),
  bullet("Produces oxygen"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.yellow.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "The purpose of the light reactions is to capture solar energy and convert it into ATP and NADPH.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Photolysis of Water",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "During the light-dependent reactions, water molecules are split by light energy. This process is called photolysis.",
  ),

  bullet("Water is broken apart"),
  bullet("Oxygen is released"),
  bullet("Hydrogen ions are produced"),
  bullet("Electrons are released"),

  bodyText(
    "The oxygen released during photosynthesis comes from the splitting of water, not from carbon dioxide.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Important Exam Fact: The oxygen we breathe originates from water molecules.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Electron Transport Chain",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  topicImage("assets/Electron_Transport_Chain.png"),

  bodyText(
    "The electrons released during photolysis enter the Electron Transport Chain (ETC). As electrons move through the ETC, energy is released and captured.",
  ),

  bullet("Electrons move through carrier molecules"),
  bullet("Energy is released"),
  bullet("ATP is generated"),
  bullet("NADPH is produced"),

  bodyText(
    "The Electron Transport Chain acts like a series of energy-transfer stations that gradually extract energy from excited electrons.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Memory Trick: Electrons move downhill through the ETC while energy is collected.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "ATP Production",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "ATP is the immediate energy currency of the cell. During the light-dependent reactions, ATP is produced and stored for use in the Calvin Cycle.",
  ),

  bullet("Stores usable energy"),
  bullet("Produced during light reactions"),
  bullet("Used in sugar production"),

  const SizedBox(height: 20),

  const Text(
    "NADPH Production",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "NADPH is an electron carrier molecule. It transports high-energy electrons from the light-dependent reactions to the Calvin Cycle.",
  ),

  bullet("Carries electrons"),
  bullet("Stores reducing power"),
  bullet("Used during glucose formation"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Simple Summary: Light Reactions make ATP, NADPH and Oxygen.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 40),

  const Text(
    "The Calvin Cycle",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  topicImage("assets/Calvin_Cycle.png"),

  bodyText(
    "The Calvin Cycle is the second stage of photosynthesis. It takes place in the stroma of the chloroplast and does not directly require light.",
  ),

  bullet("Occurs in the stroma"),
  bullet("Uses ATP from light reactions"),
  bullet("Uses NADPH from light reactions"),
  bullet("Uses carbon dioxide"),
  bullet("Produces sugars"),

  bodyText(
    "The Calvin Cycle uses the energy stored in ATP and NADPH to convert carbon dioxide into carbohydrates.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Remember: Light Reactions capture energy, Calvin Cycle uses that energy.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Carbon Fixation",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "The first step of the Calvin Cycle is carbon fixation. Carbon dioxide from the atmosphere is incorporated into organic molecules.",
  ),

  bullet("CO₂ enters the cycle"),
  bullet("Carbon becomes part of organic compounds"),
  bullet("Begins sugar production"),

  const SizedBox(height: 30),

  const Text(
    "Glucose Production",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "The ultimate goal of photosynthesis is to produce glucose. Glucose serves as an energy source and a raw material for growth.",
  ),

  bullet("Provides energy"),
  bullet("Can be stored as starch"),
  bullet("Used in cellular respiration"),
  bullet("Used to build plant tissues"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Big Picture: Photosynthesis stores solar energy inside glucose molecules.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Factors Affecting Photosynthesis",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "The rate of photosynthesis depends on several environmental factors.",
  ),

  bullet("Light intensity"),
  bullet("Carbon dioxide concentration"),
  bullet("Temperature"),
  bullet("Water availability"),
  bullet("Chlorophyll concentration"),

  bodyText(
    "If one factor becomes limited, the rate of photosynthesis decreases even if all other factors are favourable.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Exam Tip: The factor in shortest supply is called the limiting factor.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Summary of Photosynthesis",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bullet("Occurs in chloroplasts"),
  bullet("Converts light energy into chemical energy"),
  bullet("Produces glucose"),
  bullet("Produces oxygen"),
  bullet("Requires carbon dioxide and water"),
  bullet("Consists of Light Reactions and the Calvin Cycle"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade100,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Master Concept: Light Reactions make ATP and NADPH. Calvin Cycle uses ATP and NADPH to make sugars.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 35),

  const Text(
    "Practice Questions",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 15),

  Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "1. Define photosynthesis.\n\n"
            "2. State the overall word equation for photosynthesis.\n\n"
            "3. What is the function of chlorophyll?\n\n"
            "4. Distinguish between chlorophyll a and chlorophyll b.\n\n"
            "5. Where do the light-dependent reactions occur?\n\n"
            "6. What is photolysis?\n\n"
            "7. Explain the role of the Electron Transport Chain.\n\n"
            "8. What is the role of ATP in photosynthesis?\n\n"
            "9. What is the function of the Calvin Cycle?\n\n"
            "10. Name five factors affecting photosynthesis.",
        style: TextStyle(
          fontSize: 16,
          height: 1.6,
        ),
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Suggested Answers",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 15),

  Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "1. Photosynthesis is the process of converting light energy into chemical energy stored in glucose.\n\n"
            "2. Carbon dioxide + Water + Light Energy → Glucose + Oxygen.\n\n"
            "3. Chlorophyll absorbs light energy.\n\n"
            "4. Chlorophyll a is the primary pigment while chlorophyll b is an accessory pigment.\n\n"
            "5. In the thylakoid membranes.\n\n"
            "6. Photolysis is the splitting of water using light energy.\n\n"
            "7. It transfers electrons and helps produce ATP and NADPH.\n\n"
            "8. ATP provides energy for the Calvin Cycle.\n\n"
            "9. The Calvin Cycle produces sugars using ATP, NADPH and carbon dioxide.\n\n"
            "10. Light intensity, carbon dioxide concentration, temperature, water availability and chlorophyll concentration.",
        style: TextStyle(
          fontSize: 16,
          height: 1.6,
        ),
      ),
    ),
  ),

  const SizedBox(height: 30),

  Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(12),
    ),
    child: const Text(
      "Congratulations! You have completed the Photosynthesis topic. Focus especially on the Light Reactions, the Calvin Cycle, ATP, NADPH and the factors affecting photosynthesis because these are frequently examined concepts.",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 1.6,
      ),
    ),
  ),

  const SizedBox(height: 50),
],
),
),
);
}
}


class MoleculesChemistryPage extends StatelessWidget {
const MoleculesChemistryPage({super.key});

Widget topicImage(String imagePath) {
return Padding(
padding: const EdgeInsets.symmetric(vertical: 12),
child: Image.asset(imagePath),
);
}

Widget bodyText(String text) {
return Padding(
padding: const EdgeInsets.only(bottom: 12),
child: Text(
text,
style: const TextStyle(
fontSize: 16,
height: 1.7,
),
),
);
}

Widget bullet(String text) {
return Padding(
padding: const EdgeInsets.only(left: 12, bottom: 6),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text("• "),
Expanded(
child: Text(
text,
style: const TextStyle(
fontSize: 16,
height: 1.6,
),
),
),
],
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Molecules and Chemistry of the Cell"),
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

const Text(
"Molecules and Chemistry of the Cell",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 15),

bodyText(
"Every cell is built from atoms, molecules and larger biological compounds. Understanding cell chemistry helps us understand how cells obtain energy, build structures, communicate and carry out life processes.",
),

bodyText(
"Many students struggle with this topic because lecturers often jump directly into biological molecules without first explaining the chemical foundations. In this section we will start from the very beginning.",
),

const SizedBox(height: 25),

const Text(
"Matter",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

bodyText(
"Matter is anything that occupies space and has mass. Everything in a cell is made of matter, including water, proteins, DNA, membranes and organelles.",
),

bullet("Matter has mass"),
bullet("Matter occupies space"),
bullet("All living organisms are made of matter"),

const SizedBox(height: 25),

const Text(
"Atoms, Molecules and Macromolecules",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

topicImage(
"assets/Difference_Atom_Molecule_Macromolecule.png",
),

bodyText(
"Atoms are the smallest units of an element that retain the properties of that element.",
),

bodyText(
"When two or more atoms join together through chemical bonds, they form molecules.",
),

bodyText(
"Large biological molecules built from many smaller units are called macromolecules.",
),

bullet("Atom = smallest unit of an element"),
bullet("Molecule = two or more atoms bonded together"),
bullet("Macromolecule = very large biological molecule"),

bodyText(
"Example: Hydrogen and oxygen atoms combine to form a water molecule. Thousands of atoms can combine to form large molecules such as proteins and DNA.",
),

Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.blue.shade50,
borderRadius: BorderRadius.circular(10),
),
child: const Text(
"Think of an atom as a brick, a molecule as a wall built from bricks, and a macromolecule as an entire building.",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 40),

  const Text(
    "Structure of an Atom",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Atoms are the basic building blocks of matter. Every atom consists of subatomic particles called protons, neutrons and electrons.",
  ),

  bullet("Protons have a positive charge (+)"),
  bullet("Neutrons have no charge"),
  bullet("Electrons have a negative charge (-)"),

  bodyText(
    "Protons and neutrons are found in the nucleus, while electrons move around the nucleus in energy levels.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Remember: Protons = Positive, Electrons = Negative, Neutrons = Neutral.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Elements",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "An element is a pure substance consisting of only one type of atom.",
  ),

  bodyText(
    "Living organisms are mainly composed of a few key elements that repeatedly appear throughout biology.",
  ),

  bullet("Carbon (C)"),
  bullet("Hydrogen (H)"),
  bullet("Oxygen (O)"),
  bullet("Nitrogen (N)"),
  bullet("Phosphorus (P)"),
  bullet("Sulfur (S)"),

  bodyText(
    "These six elements are often remembered as CHNOPS and form the majority of biological molecules.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Chemical Bonds",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Atoms rarely exist alone. Most atoms become more stable by forming chemical bonds with other atoms.",
  ),

  bodyText(
    "Chemical bonds hold atoms together and allow the formation of molecules.",
  ),

  bullet("Covalent bonds"),
  bullet("Ionic bonds"),
  bullet("Hydrogen bonds"),

  const SizedBox(height: 30),

  const Text(
    "Covalent Bonds",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "A covalent bond forms when atoms share electrons.",
  ),

  bodyText(
    "Most biological molecules are held together by covalent bonds because they are strong and stable.",
  ),

  bullet("Electrons are shared"),
  bullet("Strong bond"),
  bullet("Common in living organisms"),

  bodyText(
    "Example: In a water molecule, oxygen shares electrons with hydrogen atoms.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Think of covalent bonding as two people sharing a resource together.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Ionic Bonds",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "An ionic bond forms when one atom transfers electrons to another atom.",
  ),

  bullet("Electrons are transferred"),
  bullet("Produces charged particles called ions"),
  bullet("Positive and negative ions attract each other"),

  bodyText(
    "For example, sodium chloride (table salt) forms through ionic bonding.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Covalent = Share. Ionic = Transfer.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Hydrogen Bonds",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Hydrogen bonds are weak attractions between molecules. Individually they are weak, but collectively they are extremely important in biology.",
  ),

  bullet("Weak bond"),
  bullet("Occurs between molecules"),
  bullet("Important in water"),
  bullet("Helps stabilise DNA"),

  bodyText(
    "Many properties of water depend on hydrogen bonding.",
  ),

  const SizedBox(height: 40),

  const Text(
    "Water: The Molecule of Life",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  topicImage("assets/Propertise_of_water.png"),

  bodyText(
    "Water is the most abundant molecule in most living organisms. Cells are largely composed of water, and nearly all biochemical reactions occur in a watery environment.",
  ),

  bodyText(
    "Water is considered the molecule of life because life as we know it would not exist without its unique properties.",
  ),

  bullet("Makes up most of the cell"),
  bullet("Acts as a solvent"),
  bullet("Participates in chemical reactions"),
  bullet("Transports substances"),
  bullet("Helps regulate temperature"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Important Idea: Water is not just present in cells — it actively supports life.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Why Water is Polar",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Water is a polar molecule. Oxygen attracts electrons more strongly than hydrogen, creating an uneven distribution of charge.",
  ),

  bullet("Oxygen becomes slightly negative"),
  bullet("Hydrogen becomes slightly positive"),
  bullet("Creates polarity"),

  bodyText(
    "Because water is polar, it can form hydrogen bonds with other water molecules.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Cohesion",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Cohesion is the attraction between molecules of the same substance.",
  ),

  bodyText(
    "Water molecules stick to one another because of hydrogen bonding.",
  ),

  bullet("Water sticks to water"),
  bullet("Caused by hydrogen bonds"),
  bullet("Important in plants"),

  bodyText(
    "Cohesion helps water move upward through plant xylem vessels.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Memory Trick: Cohesion = Co-operating with the same substance.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Adhesion",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Adhesion is the attraction between different substances.",
  ),

  bodyText(
    "Water can stick to other surfaces such as glass, soil particles and plant cell walls.",
  ),

  bullet("Water sticks to other substances"),
  bullet("Works together with cohesion"),
  bullet("Helps water move through plants"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Exam Tip: Cohesion = water to water. Adhesion = water to something else.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Surface Tension",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Surface tension is the resistance of a liquid surface to breaking.",
  ),

  bodyText(
    "Because water molecules strongly attract one another, the surface behaves almost like a thin elastic sheet.",
  ),

  bullet("Caused by cohesion"),
  bullet("Creates a strong surface layer"),
  bullet("Allows some insects to walk on water"),

  bodyText(
    "Without hydrogen bonding, water would not possess such strong surface tension.",
  ),

  const SizedBox(height: 30),

  const Text(
    "High Specific Heat Capacity",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Specific heat capacity refers to the amount of energy needed to raise the temperature of a substance.",
  ),

  bodyText(
    "Water has a high specific heat capacity, meaning it can absorb large amounts of heat before its temperature changes significantly.",
  ),

  bullet("Resists rapid temperature changes"),
  bullet("Helps maintain stable cell temperatures"),
  bullet("Helps stabilise body temperature"),
  bullet("Helps stabilise environmental temperatures"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.red.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Why this matters: Cells function best within a narrow temperature range. Water helps maintain that stability.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 40),

  const Text(
    "Solutions and Solvents",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Many substances in cells exist as solutions. A solution consists of a solute dissolved in a solvent.",
  ),

  bullet("Solvent = substance that does the dissolving"),
  bullet("Solute = substance being dissolved"),
  bullet("Solution = mixture of solute and solvent"),

  bodyText(
    "Water is called the universal solvent because it dissolves more substances than any other liquid.",
  ),

  bodyText(
    "Many molecules required by cells are transported after dissolving in water.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Acids and Bases",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Many chemical reactions in cells depend on the concentration of hydrogen ions (H⁺). Acids and bases affect this concentration.",
  ),

  bullet("Acids release hydrogen ions (H⁺)"),
  bullet("Bases remove hydrogen ions or release hydroxide ions (OH⁻)"),
  bullet("The balance between acids and bases affects cell function"),

  bodyText(
    "Even small changes in acidity can affect enzymes and cellular processes.",
  ),

  const SizedBox(height: 30),

  const Text(
    "The pH Scale",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "The pH scale measures how acidic or basic a solution is.",
  ),

  bullet("pH 7 = Neutral"),
  bullet("pH less than 7 = Acidic"),
  bullet("pH greater than 7 = Basic (alkaline)"),

  bodyText(
    "Most cells function within a narrow pH range. Large changes in pH can damage proteins and disrupt metabolism.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Exam Tip: A lower pH means a higher hydrogen ion concentration.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Buffers",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Buffers are substances that resist sudden changes in pH.",
  ),

  bullet("Help maintain stable conditions"),
  bullet("Prevent harmful pH fluctuations"),
  bullet("Essential for normal cell function"),

  bodyText(
    "Without buffers, many enzymes would stop functioning properly.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Think of a buffer as a shock absorber that prevents sudden pH changes.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 40),

  const Text(
    "Biological Macromolecules",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Living organisms are built from four major classes of biological macromolecules.",
  ),

  bullet("Carbohydrates"),
  bullet("Lipids"),
  bullet("Proteins"),
  bullet("Nucleic Acids"),

  bodyText(
    "Together these molecules build cells, store energy, transmit information and perform most biological functions.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Carbohydrates",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Carbohydrates are molecules composed mainly of carbon, hydrogen and oxygen. Their primary role is providing energy.",
  ),

  bullet("Primary energy source"),
  bullet("Short-term energy storage"),
  bullet("Structural functions in some organisms"),

  bodyText(
    "Examples include glucose, sucrose, starch, glycogen and cellulose.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Glucose is one of the most important carbohydrates because cells use it to produce ATP.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Lipids",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Lipids include fats, oils, waxes and phospholipids. They are largely hydrophobic molecules.",
  ),

  bullet("Long-term energy storage"),
  bullet("Thermal insulation"),
  bullet("Protection of organs"),
  bullet("Major component of cell membranes"),

  bodyText(
    "Lipids store more energy per gram than carbohydrates.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Proteins",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Proteins are among the most important molecules in cells. They are built from amino acids joined together by peptide bonds.",
  ),

  bullet("Structural support"),
  bullet("Transport molecules"),
  bullet("Cell signalling"),
  bullet("Movement"),
  bullet("Enzyme function"),

  bodyText(
    "The shape of a protein determines its function. If a protein loses its shape, it may stop working.",
  ),

  const SizedBox(height: 40),

  const Text(
    "Enzymes",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Enzymes are biological catalysts that speed up chemical reactions without being consumed during the reaction.",
  ),

  bullet("Usually proteins"),
  bullet("Speed up reactions"),
  bullet("Lower activation energy"),
  bullet("Not used up during reactions"),
  bullet("Highly specific"),

  bodyText(
    "Without enzymes, most reactions in cells would occur far too slowly to support life.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Key Idea: Enzymes make life possible by accelerating chemical reactions.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "The Active Site",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "The active site is the region of an enzyme where the substrate binds.",
  ),

  bullet("Substrate binds to active site"),
  bullet("Reaction occurs"),
  bullet("Products are released"),
  bullet("Enzyme remains unchanged"),

  bodyText(
    "The shape of the active site determines which substrate can bind.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Factors Affecting Enzyme Activity",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bullet("Temperature"),
  bullet("pH"),
  bullet("Substrate concentration"),
  bullet("Enzyme concentration"),

  bodyText(
    "Changes in these factors can increase or decrease the rate of enzyme-controlled reactions.",
  ),

  const SizedBox(height: 30),

  const Text(
    "Denaturation",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Denaturation occurs when an enzyme loses its three-dimensional shape and can no longer function properly.",
  ),

  bullet("Caused by extreme temperatures"),
  bullet("Caused by extreme pH"),
  bullet("Changes enzyme shape"),
  bullet("Active site no longer fits substrate"),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.red.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Exam Tip: A denatured enzyme usually cannot regain its original function.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 40),

  const Text(
    "Nucleic Acids",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "Nucleic acids are biological molecules responsible for storing and transmitting genetic information.",
  ),

  bullet("DNA"),
  bullet("RNA"),

  const SizedBox(height: 20),

  const Text(
    "DNA",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "DNA (Deoxyribonucleic Acid) stores genetic information used to build and maintain an organism.",
  ),

  bullet("Stores hereditary information"),
  bullet("Contains genes"),
  bullet("Located mainly in the nucleus"),

  bodyText(
    "DNA provides the instructions needed to build proteins.",
  ),

  const SizedBox(height: 20),

  const Text(
    "RNA",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "RNA (Ribonucleic Acid) helps transfer genetic information and participates in protein synthesis.",
  ),

  bullet("Involved in protein production"),
  bullet("Carries genetic instructions"),
  bullet("Works with ribosomes"),

  const SizedBox(height: 30),

  const Text(
    "ATP",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  bodyText(
    "ATP (Adenosine Triphosphate) is the immediate energy currency of the cell.",
  ),

  bullet("Stores usable energy"),
  bullet("Powers cellular activities"),
  bullet("Used in transport, movement and biosynthesis"),

  bodyText(
    "When ATP releases a phosphate group, energy becomes available for cellular work.",
  ),

  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      "Think of ATP as the cell's rechargeable energy battery.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  const SizedBox(height: 40),

  const Text(
    "Topic Summary",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  bullet("Matter is composed of atoms"),
  bullet("Atoms combine to form molecules"),
  bullet("Macromolecules build living organisms"),
  bullet("Water possesses unique life-supporting properties"),
  bullet("Chemical bonds hold atoms together"),
  bullet("Carbohydrates provide energy"),
  bullet("Lipids store energy and form membranes"),
  bullet("Proteins perform numerous functions"),
  bullet("DNA stores genetic information"),
  bullet("RNA helps produce proteins"),
  bullet("ATP provides usable energy"),
  bullet("Enzymes accelerate chemical reactions"),

  const SizedBox(height: 35),

  const Text(
    "Practice Questions",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 15),

  Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "1. Distinguish between an atom, molecule and macromolecule.\n\n"
            "2. Explain the difference between covalent and ionic bonds.\n\n"
            "3. Why is water considered the molecule of life?\n\n"
            "4. Distinguish between cohesion and adhesion.\n\n"
            "5. Explain the importance of buffers.\n\n"
            "6. State the four major classes of biological macromolecules.\n\n"
            "7. Explain the function of carbohydrates.\n\n"
            "8. Explain the function of lipids.\n\n"
            "9. What is an enzyme?\n\n"
            "10. What is denaturation?\n\n"
            "11. Compare DNA and RNA.\n\n"
            "12. Explain the role of ATP.",
        style: TextStyle(
          fontSize: 16,
          height: 1.6,
        ),
      ),
    ),
  ),

  const SizedBox(height: 30),

  const Text(
    "Suggested Answers",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 15),

  Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "1. An atom is the smallest unit of an element, molecules consist of bonded atoms, and macromolecules are large biological molecules.\n\n"
            "2. Covalent bonds share electrons while ionic bonds transfer electrons.\n\n"
            "3. Water supports life through its solvent properties, temperature regulation and hydrogen bonding.\n\n"
            "4. Cohesion is attraction between water molecules, while adhesion is attraction between water and other substances.\n\n"
            "5. Buffers resist sudden changes in pH.\n\n"
            "6. Carbohydrates, lipids, proteins and nucleic acids.\n\n"
            "7. Carbohydrates primarily provide energy.\n\n"
            "8. Lipids store energy and form cell membranes.\n\n"
            "9. An enzyme is a biological catalyst.\n\n"
            "10. Denaturation is the loss of an enzyme's shape and function.\n\n"
            "11. DNA stores genetic information while RNA helps use that information to produce proteins.\n\n"
            "12. ATP provides immediately usable energy for cellular processes.",
        style: TextStyle(
          fontSize: 16,
          height: 1.6,
        ),
      ),
    ),
  ),

  const SizedBox(height: 30),

  Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(12),
    ),
    child: const Text(
      "Congratulations! You have completed Molecules and Chemistry of the Cell. If you understand water properties, chemical bonds, macromolecules, enzymes, DNA, RNA and ATP, you have mastered the foundation upon which the rest of cell biology is built.",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 1.6,
      ),
    ),
  ),

  const SizedBox(height: 50),
],
),
),
);
}
}


class EnergyEnzymesMetabolismPage extends StatelessWidget {
  const EnergyEnzymesMetabolismPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Energy, Enzymes and Metabolism"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Energy, Enzymes and Metabolism",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bodyText(
              "Cells require a continuous supply of energy to perform life processes. Every movement, transport process, growth event and chemical reaction depends on energy.",
            ),

            bodyText(
              "Metabolism refers to all chemical reactions occurring inside living organisms. These reactions allow organisms to obtain, transform and use energy.",
            ),

            topicImage("assets/Metabolism.png"),

            const SizedBox(height: 25),

            const Text(
              "Metabolism",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Metabolism is the sum of all chemical reactions occurring within a cell or organism.",
            ),

            bullet("Maintains life"),
            bullet("Provides energy"),
            bullet("Builds cellular structures"),
            bullet("Breaks down molecules"),
            bullet("Supports growth and repair"),

            const SizedBox(height: 20),

            const Text(
              "Two Components of Metabolism",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Catabolism",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Catabolic reactions break large molecules into smaller molecules and release energy.",
            ),

            bullet("Breakdown reactions"),
            bullet("Release energy"),
            bullet("Example: Cellular respiration"),

            const SizedBox(height: 10),

            const Text(
              "Anabolism",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Anabolic reactions build large molecules from smaller molecules and require energy.",
            ),

            bullet("Building reactions"),
            bullet("Require energy"),
            bullet("Example: Protein synthesis"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Catabolism Cuts Apart. Anabolism Adds Together.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Energy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Energy is the capacity to do work or cause change. Every cellular activity requires energy.",
            ),

            bullet("Movement requires energy"),
            bullet("Transport requires energy"),
            bullet("Growth requires energy"),
            bullet("Biosynthesis requires energy"),
            bullet("Cell division requires energy"),

            bodyText(
              "Cells constantly transform energy from one form into another in order to survive.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Key Idea: Living organisms do not create energy; they transform energy.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Laws of Thermodynamics",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Laws_of_Thermodynamics.png"),

            bodyText(
              "Thermodynamics is the study of energy transformations. The laws of thermodynamics explain how energy behaves in biological systems.",
            ),

            const SizedBox(height: 20),

            const Text(
              "First Law of Thermodynamics",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The First Law states that energy cannot be created or destroyed. Energy can only be transferred or transformed from one form into another.",
            ),

            bullet("Energy cannot be created"),
            bullet("Energy cannot be destroyed"),
            bullet("Energy changes form"),

            bodyText(
              "For example, plants convert light energy into chemical energy during photosynthesis.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Energy In = Energy Out. Energy simply changes form.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Second Law of Thermodynamics",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The Second Law states that every energy transfer increases the disorder of the universe and some usable energy is lost as heat.",
            ),

            bullet("Energy transfers are not 100% efficient"),
            bullet("Some energy becomes heat"),
            bullet("Disorder (entropy) increases"),

            bodyText(
              "This explains why organisms constantly need new energy sources.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Important: Every biological process releases some heat energy.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Entropy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Entropy is a measure of disorder or randomness in a system.",
            ),

            bullet("High entropy = more disorder"),
            bullet("Low entropy = more order"),

            bodyText(
              "Living organisms maintain internal order by continuously using energy.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Free Energy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Free energy is the energy available to perform useful work.",
            ),

            bullet("Used to drive cellular processes"),
            bullet("Used in transport"),
            bullet("Used in biosynthesis"),
            bullet("Used in movement"),

            bodyText(
              "Cells constantly manage free energy to maintain life.",
            ),

            const SizedBox(height: 40),

            const Text(
              "Exergonic and Endergonic Reactions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Exergonic_vs_Endergonic.png"),

            const Text(
              "Exergonic Reactions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Exergonic reactions release free energy.",
            ),

            bullet("Release energy"),
            bullet("Products contain less energy than reactants"),
            bullet("Can occur spontaneously"),

            bodyText(
              "Cellular respiration is an example of an exergonic reaction.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Endergonic Reactions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Endergonic reactions require an input of energy.",
            ),

            bullet("Require energy"),
            bullet("Products contain more energy than reactants"),
            bullet("Cannot occur without energy input"),

            bodyText(
              "Photosynthesis is an example of an endergonic reaction.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Exergonic = Exit Energy. Endergonic = Energy Needed.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Enzymes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Enzymes are biological catalysts that speed up chemical reactions without being consumed during the reaction.",
            ),

            bullet("Usually proteins"),
            bullet("Increase reaction rate"),
            bullet("Lower activation energy"),
            bullet("Not used up during reactions"),
            bullet("Highly specific"),

            bodyText(
              "Without enzymes, many chemical reactions required for life would occur too slowly.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Key Idea: Enzymes make life possible by speeding up chemical reactions.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Activation Energy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Activation energy is the minimum amount of energy required to start a chemical reaction.",
            ),

            bullet("Every reaction requires activation energy"),
            bullet("Higher activation energy = slower reaction"),
            bullet("Lower activation energy = faster reaction"),

            bodyText(
              "Enzymes lower activation energy, allowing reactions to occur more rapidly.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Enzyme Structure",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Enzyme_and_Active_Site.png"),

            bodyText(
              "Each enzyme possesses a unique three-dimensional structure that determines its function.",
            ),

            bodyText(
              "A specific region of the enzyme called the active site binds the substrate.",
            ),

            bullet("Enzyme = biological catalyst"),
            bullet("Substrate = molecule acted upon"),
            bullet("Active site = region where substrate binds"),

            const SizedBox(height: 20),

            const Text(
              "The Active Site",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The active site has a shape that is complementary to its substrate.",
            ),

            bullet("Specific binding"),
            bullet("Temporary enzyme-substrate complex forms"),
            bullet("Products are released"),
            bullet("Enzyme remains unchanged"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Active Site = Working Site.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Lock and Key Model",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The Lock and Key Model proposes that the substrate fits exactly into the enzyme's active site.",
            ),

            bullet("Enzyme = lock"),
            bullet("Substrate = key"),
            bullet("Specific fit required"),

            bodyText(
              "Only substrates with the correct shape can bind to the active site.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Induced Fit Model",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The Induced Fit Model suggests that the enzyme changes shape slightly when the substrate binds.",
            ),

            bullet("More flexible model"),
            bullet("Improves substrate binding"),
            bullet("Explains enzyme efficiency better"),

            bodyText(
              "Today, the induced fit model is considered a more accurate explanation of enzyme action.",
            ),

            const SizedBox(height: 40),

            const Text(
              "Factors Affecting Enzyme Activity",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Factors_affecting_Enzyme_Reaction.png"),

            bodyText(
              "Several factors influence how quickly enzymes function.",
            ),

            bullet("Temperature"),
            bullet("pH"),
            bullet("Substrate concentration"),
            bullet("Enzyme concentration"),

            const SizedBox(height: 25),

            const Text(
              "Temperature",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "As temperature increases, enzyme activity usually increases because molecules move faster and collide more frequently.",
            ),

            bodyText(
              "However, excessively high temperatures cause enzymes to denature.",
            ),

            bullet("Low temperature = slower reactions"),
            bullet("Optimum temperature = maximum activity"),
            bullet("High temperature = denaturation"),

            const SizedBox(height: 25),

            const Text(
              "pH",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Each enzyme has an optimum pH at which it functions best.",
            ),

            bullet("Low pH may reduce activity"),
            bullet("High pH may reduce activity"),
            bullet("Extreme pH causes denaturation"),

            bodyText(
              "Changes in pH can alter the shape of the active site.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Substrate Concentration",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Increasing substrate concentration increases reaction rate until all active sites become occupied.",
            ),

            bullet("More substrate = faster reactions"),
            bullet("Eventually enzymes become saturated"),
            bullet("Rate reaches maximum"),

            const SizedBox(height: 25),

            const Text(
              "Enzyme Concentration",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Increasing enzyme concentration increases reaction rate provided enough substrate is available.",
            ),

            bullet("More enzymes = more active sites"),
            bullet("Higher reaction rate"),
            bullet("Requires sufficient substrate"),

            const SizedBox(height: 30),

            const Text(
              "Denaturation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Denaturation occurs when an enzyme loses its three-dimensional structure and can no longer function properly.",
            ),

            bullet("High temperature"),
            bullet("Extreme pH"),
            bullet("Shape changes"),
            bullet("Active site altered"),
            bullet("Enzyme loses function"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Denaturation changes the shape of the active site, preventing substrate binding.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "ATP: The Energy Currency of the Cell",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "ATP (Adenosine Triphosphate) is the main energy-carrying molecule used by cells. It provides immediate energy for cellular processes.",
            ),

            bullet("Universal energy carrier"),
            bullet("Provides usable cellular energy"),
            bullet("Used in nearly every cell"),
            bullet("Links energy-releasing and energy-requiring reactions"),

            bodyText(
              "ATP consists of three main components:",
            ),

            bullet("Adenine"),
            bullet("Ribose sugar"),
            bullet("Three phosphate groups"),

            bodyText(
              "The phosphate bonds store potential energy. When ATP loses its terminal phosphate group, energy is released.",
            ),

            const Text(
              "ATP Hydrolysis",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "ATP is converted into ADP (Adenosine Diphosphate) when one phosphate group is removed.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "ATP → ADP + Pi + Energy",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            bodyText(
              "Cells continuously recycle ADP back into ATP using energy obtained from food or sunlight.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Energy Coupling",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cells use energy coupling to link exergonic reactions with endergonic reactions.",
            ),

            bullet("Exergonic reactions release energy"),
            bullet("Endergonic reactions require energy"),
            bullet("ATP transfers energy between reactions"),

            bodyText(
              "Energy released during cellular respiration is captured in ATP. ATP then provides energy for processes such as protein synthesis, active transport and cell division.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Think of ATP as a rechargeable battery that stores and delivers energy where needed.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Metabolic Pathways",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Metabolic pathways are sequences of enzyme-controlled reactions in which the product of one reaction becomes the substrate for the next reaction.",
            ),

            bullet("Occur in specific steps"),
            bullet("Controlled by enzymes"),
            bullet("Increase efficiency"),
            bullet("Allow regulation of metabolism"),

            bodyText(
              "Examples include cellular respiration and photosynthesis.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Benefits of Metabolic Pathways",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Better regulation"),
            bullet("Higher efficiency"),
            bullet("Energy released gradually"),
            bullet("Allows control of reaction rates"),

            bodyText(
              "Without metabolic pathways, large amounts of energy could be released suddenly and damage the cell.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Feedback Inhibition",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Feedback inhibition is a regulatory mechanism in which the final product of a metabolic pathway inhibits an earlier enzyme in the pathway.",
            ),

            bullet("Prevents waste"),
            bullet("Saves energy"),
            bullet("Maintains balance within cells"),

            bodyText(
              "When enough product has been produced, the pathway slows down or stops.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Feedback inhibition is the cell's way of saying: 'We have enough, stop producing more.'",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Topic Summary",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Energy drives all biological processes. Metabolism includes all chemical reactions in living organisms. Catabolic reactions release energy while anabolic reactions require energy. Thermodynamics explains energy transformations. Enzymes lower activation energy and speed up reactions. ATP acts as the cell's energy currency and metabolic pathways ensure efficient regulation of cellular activities.",
            ),

            const SizedBox(height: 40),

            const Text(
              "Practice Questions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Define metabolism.\n\n"
                      "2. Differentiate between catabolism and anabolism.\n\n"
                      "3. State the First Law of Thermodynamics.\n\n"
                      "4. State the Second Law of Thermodynamics.\n\n"
                      "5. Define entropy.\n\n"
                      "6. Differentiate between exergonic and endergonic reactions.\n\n"
                      "7. Define an enzyme.\n\n"
                      "8. Explain the role of the active site.\n\n"
                      "9. What is denaturation?\n\n"
                      "10. Describe how temperature affects enzyme activity.\n\n"
                      "11. What is ATP?\n\n"
                      "12. Explain feedback inhibition.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Suggested Answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Metabolism is the sum of all chemical reactions occurring in an organism.\n\n"
                      "2. Catabolism breaks molecules down and releases energy, while anabolism builds molecules and requires energy.\n\n"
                      "3. Energy cannot be created or destroyed, only transformed.\n\n"
                      "4. Every energy transfer increases entropy and releases some heat.\n\n"
                      "5. Entropy is a measure of disorder.\n\n"
                      "6. Exergonic reactions release energy while endergonic reactions require energy.\n\n"
                      "7. An enzyme is a biological catalyst.\n\n"
                      "8. The active site is the region where substrates bind.\n\n"
                      "9. Denaturation is the loss of an enzyme's structure and function.\n\n"
                      "10. Activity increases to an optimum temperature then decreases due to denaturation.\n\n"
                      "11. ATP is the cell's main energy carrier.\n\n"
                      "12. Feedback inhibition occurs when the final product inhibits an earlier enzyme in the pathway.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Congratulations! You have completed Energy, Enzymes and Metabolism. If you understand metabolism, thermodynamics, ATP, enzymes, activation energy, denaturation and feedback inhibition, you have mastered one of the most important foundations of biology.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}
Widget topicImage(String imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Image.asset(imagePath),
  );
}

Widget bodyText(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        height: 1.7,
      ),
    ),
  );
}

Widget bullet(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 12, bottom: 6),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• "),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
            ),
          ),
        ),
      ],
    ),
  );
}


class PathwaysHarvestChemicalEnergyPage extends StatelessWidget {
  const PathwaysHarvestChemicalEnergyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pathways that Harvest Chemical Energy"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            const SizedBox(height: 20),

            const Text(
              "Pathways that Harvest Chemical Energy",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bodyText(
              "All living cells require a constant supply of energy. The primary source of energy for most cells is glucose. Cells harvest energy from glucose through a series of metabolic pathways that ultimately produce ATP, the energy currency of the cell.",
            ),

            bodyText(
              "The complete breakdown of glucose during cellular respiration occurs through four major stages: Glycolysis, Pyruvate Oxidation, the Citric Acid Cycle and the Electron Transport Chain.",
            ),

            topicImage("assets/Harvesting_energy_from_glucose.png"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Cellular respiration converts the chemical energy stored in glucose into ATP.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Overall Cellular Respiration Equation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The overall equation for aerobic cellular respiration is:",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Glucose + Oxygen → Carbon Dioxide + Water + ATP",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            bullet("Glucose stores chemical energy"),
            bullet("Oxygen acts as the final electron acceptor"),
            bullet("Carbon dioxide is released as waste"),
            bullet("Water is produced"),
            bullet("ATP is generated"),

            const SizedBox(height: 30),

            const Text(
              "Stage 1: Glycolysis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Glycolysis means 'splitting sugar'. It occurs in the cytoplasm and does not require oxygen.",
            ),

            bullet("Occurs in cytoplasm"),
            bullet("One glucose molecule enters"),
            bullet("Two pyruvate molecules are produced"),
            bullet("Produces 2 ATP"),
            bullet("Produces NADH"),
            bullet("Does not require oxygen"),

            bodyText(
              "Glycolysis is important because it can occur whether oxygen is present or absent.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Glycolysis = Glucose gets split.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "What Happens After Glycolysis?",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "After glycolysis, the two pyruvate molecules produced move into the mitochondrion if oxygen is available.",
            ),

            bodyText(
              "Inside the mitochondrion, pyruvate is further broken down so that more energy can be extracted from the original glucose molecule.",
            ),

            bullet("Pyruvate enters the mitochondrion"),
            bullet("Carbon dioxide is released"),
            bullet("NADH is produced"),
            bullet("Acetyl-CoA is formed"),

            bodyText(
              "Acetyl-CoA is the molecule that enters the Citric Acid Cycle.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Glycolysis produces pyruvate. Pyruvate is converted into Acetyl-CoA before entering the Citric Acid Cycle.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Stage 2: Citric Acid Cycle (Krebs Cycle)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Citric_acid_cycle.png"),

            bodyText(
              "The Citric Acid Cycle occurs in the mitochondrial matrix. Its main purpose is not to make large amounts of ATP directly, but to generate high-energy electron carriers.",
            ),

            bullet("Occurs in mitochondrial matrix"),
            bullet("Starts with Acetyl-CoA"),
            bullet("Produces carbon dioxide"),
            bullet("Produces NADH(3 per single turn)"),
            bullet("Produces FADH₂(1 per single turn)"),
            bullet("Produces a small amount of ATP(1 per single turn)"),

            bodyText(
              "During the cycle, carbon atoms originally present in glucose are removed and released as carbon dioxide.",
            ),

            bodyText(
              "The most important products of the cycle are NADH and FADH₂ because they carry high-energy electrons to the Electron Transport Chain.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Why Are NADH and FADH₂ Important?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Think of NADH and FADH₂ as energy delivery trucks. They collect high-energy electrons and transport them to the Electron Transport Chain.",
            ),

            bullet("Carry high-energy electrons"),
            bullet("Transport energy to the ETC"),
            bullet("Help produce most ATP"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: NADH and FADH₂ are rechargeable batteries carrying energy to the Electron Transport Chain.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Summary So Far",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Glucose → Glycolysis"),
            bullet("Glycolysis → Pyruvate"),
            bullet("Pyruvate → Acetyl-CoA"),
            bullet("Acetyl-CoA → Citric Acid Cycle"),
            bullet("Citric Acid Cycle → NADH + FADH₂ + ATP"),

            bodyText(
              "At this point, only a small amount of ATP has been produced. Most of the energy is still stored inside NADH and FADH₂ and will be released during the Electron Transport Chain.",
            ),

            const SizedBox(height: 40),

            const Text(
              "Stage 3: Electron Transport Chain (ETC)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Electron_Transport_Chain .png"),

            bodyText(
              "The Electron Transport Chain is located in the inner mitochondrial membrane. This is where most ATP is produced during cellular respiration.",
            ),

            bullet("Located in inner mitochondrial membrane"),
            bullet("Uses electrons from NADH and FADH₂"),
            bullet("Produces most ATP"),
            bullet("Requires oxygen"),

            bodyText(
              "The ETC consists of a series of protein complexes embedded within the inner mitochondrial membrane.",
            ),

            bodyText(
              "NADH and FADH₂ arrive carrying high-energy electrons collected during glycolysis and the Citric Acid Cycle.",
            ),

            const SizedBox(height: 20),

            const Text(
              "How the ETC Works",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Step 1: NADH and FADH₂ donate high-energy electrons to the Electron Transport Chain.",
            ),

            bodyText(
              "Step 2: The electrons move from one protein complex to the next.",
            ),

            bodyText(
              "Step 3: As electrons move, energy is released.",
            ),

            bodyText(
              "Step 4: The released energy is used to pump hydrogen ions (H⁺) across the membrane.",
            ),

            bodyText(
              "Step 5: Hydrogen ions accumulate on one side of the membrane, creating a concentration gradient.",
            ),

            bodyText(
              "Step 6: Hydrogen ions flow back through ATP Synthase.",
            ),

            bodyText(
              "Step 7: ATP Synthase uses this movement to produce ATP.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: ATP is produced when hydrogen ions flow through ATP Synthase.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "ATP Synthase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "ATP Synthase is a protein that functions like a molecular turbine.",
            ),

            bullet("Hydrogen ions flow through it"),
            bullet("The protein rotates"),
            bullet("ATP is produced"),

            bodyText(
              "Most ATP generated during cellular respiration is produced by ATP Synthase.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Why Oxygen Is Essential",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Many students memorize that oxygen is needed, but understanding WHY is more important.",
            ),

            bodyText(
              "Electrons continuously move through the Electron Transport Chain. However, they cannot simply accumulate at the end of the chain.",
            ),

            bodyText(
              "A final electron acceptor is required to receive these electrons.",
            ),

            bodyText(
              "Oxygen serves as the final electron acceptor.",
            ),

            bullet("Accepts electrons"),
            bullet("Combines with hydrogen ions"),
            bullet("Forms water"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Oxygen + Electrons + Hydrogen Ions → Water",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "What Happens If Oxygen Is Not Present?",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "This is one of the most important exam concepts.",
            ),

            bodyText(
              "Without oxygen, the final electron acceptor disappears.",
            ),

            bodyText(
              "As a result, electrons can no longer leave the Electron Transport Chain.",
            ),

            bullet("Electrons accumulate"),
            bullet("ETC stops functioning"),
            bullet("Hydrogen pumping stops"),
            bullet("ATP Synthase stops producing ATP"),

            bodyText(
              "Eventually NADH can no longer unload its electrons.",
            ),

            bodyText(
              "NADH accumulates while NAD⁺ becomes unavailable.",
            ),

            bodyText(
              "Without NAD⁺, glycolysis cannot continue efficiently because glycolysis requires NAD⁺ to accept electrons.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "No Oxygen → ETC Stops → NAD⁺ Runs Out → Glycolysis Stops → ATP Production Collapses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            bodyText(
              "To prevent this problem, some organisms use fermentation to regenerate NAD⁺ and keep glycolysis running.",
            ),

            const SizedBox(height: 40),

            const Text(
              "Aerobic vs Anaerobic Respiration",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Aerobic_vs_Anaerobic.png"),

            bodyText(
              "Cells can produce ATP either in the presence of oxygen (aerobic respiration) or in the absence of oxygen (anaerobic respiration).",
            ),

            const SizedBox(height: 20),

            const Text(
              "Aerobic Respiration",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Requires oxygen"),
            bullet("Occurs mainly in mitochondria"),
            bullet("Completely breaks down glucose"),
            bullet("Produces large amounts of ATP"),
            bullet("Produces carbon dioxide and water"),

            bodyText(
              "Because oxygen is available, the Electron Transport Chain functions efficiently and produces most of the ATP.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Aerobic Respiration = High ATP Yield",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Anaerobic Respiration",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Occurs without oxygen"),
            bullet("ETC cannot function"),
            bullet("Relies on glycolysis"),
            bullet("Produces much less ATP"),

            bodyText(
              "Without oxygen, cells cannot fully extract all the energy stored in glucose.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Anaerobic Respiration = Low ATP Yield",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Fermentation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Fermentation is a process that allows glycolysis to continue when oxygen is unavailable.",
            ),

            bodyText(
              "The main purpose of fermentation is NOT to produce lots of ATP. Its purpose is to regenerate NAD⁺ so glycolysis can continue.",
            ),

            bullet("Occurs without oxygen"),
            bullet("Regenerates NAD⁺"),
            bullet("Allows glycolysis to continue"),
            bullet("Produces only small amounts of ATP"),

            const SizedBox(height: 20),

            const Text(
              "Lactic Acid Fermentation",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Occurs in animal muscle cells during intense exercise when oxygen delivery cannot keep up with demand.",
            ),

            bullet("Pyruvate is converted into lactate"),
            bullet("NAD⁺ is regenerated"),
            bullet("Glycolysis continues"),

            bodyText(
              "This allows muscles to keep producing ATP for a short period even when oxygen is limited.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: The purpose of lactic acid fermentation is to regenerate NAD⁺.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Alcoholic Fermentation",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Occurs in yeast and some microorganisms.",
            ),

            bullet("Produces ethanol"),
            bullet("Produces carbon dioxide"),
            bullet("Regenerates NAD⁺"),

            bodyText(
              "This process is used in bread making and alcoholic beverage production.",
            ),

            const SizedBox(height: 30),

            const Text(
              "ATP Production Summary",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Glycolysis → 2 ATP"),
            bullet("Citric Acid Cycle → Small amount of ATP"),
            bullet("Electron Transport Chain → Most ATP"),

            bodyText(
              "The Electron Transport Chain produces the majority of ATP because it uses the energy carried by NADH and FADH₂.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Most ATP comes from the Electron Transport Chain, not glycolysis.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Big Picture Summary",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cells harvest energy from glucose through glycolysis, pyruvate oxidation, the Citric Acid Cycle and the Electron Transport Chain. NADH and FADH₂ transport high-energy electrons to the ETC where most ATP is produced. Oxygen acts as the final electron acceptor. Without oxygen, the ETC stops and cells must rely on fermentation to regenerate NAD⁺ and maintain glycolysis.",
            ),

            const SizedBox(height: 40),

            const Text(
              "Exam Essentials",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  bullet("Glycolysis occurs in the cytoplasm."),
                  bullet("Glycolysis produces 2 ATP and 2 pyruvate."),
                  bullet("Pyruvate is converted into Acetyl-CoA."),
                  bullet("The Citric Acid Cycle occurs in the mitochondrial matrix."),
                  bullet("NADH and FADH₂ carry high-energy electrons."),
                  bullet("The Electron Transport Chain occurs in the inner mitochondrial membrane."),
                  bullet("ATP Synthase produces ATP."),
                  bullet("Oxygen is the final electron acceptor."),
                  bullet("Without oxygen, the ETC stops."),
                  bullet("Fermentation regenerates NAD⁺."),
                  bullet("Most ATP is produced by the Electron Transport Chain."),

                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Practice Questions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. What is the purpose of cellular respiration?\n\n"
                      "2. Where does glycolysis occur?\n\n"
                      "3. What are the products of glycolysis?\n\n"
                      "4. What is Acetyl-CoA?\n\n"
                      "5. Where does the Citric Acid Cycle occur?\n\n"
                      "6. What is the function of NADH and FADH₂?\n\n"
                      "7. Where is the Electron Transport Chain located?\n\n"
                      "8. What is the role of ATP Synthase?\n\n"
                      "9. Why is oxygen important in cellular respiration?\n\n"
                      "10. What happens to the ETC if oxygen is absent?\n\n"
                      "11. Why is NAD⁺ important for glycolysis?\n\n"
                      "12. What is the purpose of fermentation?\n\n"
                      "13. What is lactic acid fermentation?\n\n"
                      "14. What is alcoholic fermentation?\n\n"
                      "15. Which stage produces most ATP?",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Suggested Answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. To convert energy stored in glucose into ATP.\n\n"
                      "2. In the cytoplasm.\n\n"
                      "3. 2 pyruvate, 2 ATP and NADH.\n\n"
                      "4. A molecule that enters the Citric Acid Cycle.\n\n"
                      "5. In the mitochondrial matrix.\n\n"
                      "6. They transport high-energy electrons.\n\n"
                      "7. In the inner mitochondrial membrane.\n\n"
                      "8. To produce ATP using the hydrogen ion gradient.\n\n"
                      "9. It acts as the final electron acceptor.\n\n"
                      "10. The ETC stops functioning.\n\n"
                      "11. Glycolysis requires NAD⁺ to accept electrons.\n\n"
                      "12. To regenerate NAD⁺ when oxygen is unavailable.\n\n"
                      "13. Conversion of pyruvate to lactate.\n\n"
                      "14. Fermentation that produces ethanol and carbon dioxide.\n\n"
                      "15. The Electron Transport Chain.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Congratulations! You have completed Pathways that Harvest Chemical Energy. If you understand glycolysis, the Citric Acid Cycle, NADH, FADH₂, the Electron Transport Chain, ATP Synthase, oxygen's role and fermentation, then you understand how cells obtain the energy required for life.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}


class CellCycleAndCellDivisionPage extends StatelessWidget {
  const CellCycleAndCellDivisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cell Cycle and Cell Division"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Cell Cycle and Cell Division",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            bodyText(
              "One of the most remarkable abilities of living organisms is the ability to produce new cells. New cells are needed for growth, repair, replacement of damaged cells and reproduction.",
            ),

            bodyText(
              "For a cell to divide successfully, it must first copy its DNA accurately and then distribute that DNA equally to daughter cells.",
            ),

            bodyText(
              "The Cell Cycle is the series of events that occur from the time a cell is formed until it divides into new cells.",
            ),

            topicImage("assets/Cell_Cycle.png"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: The Cell Cycle describes the life of a cell from one division to the next.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Why Cells Divide",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cells divide for several important reasons.",
            ),

            bullet("Growth of multicellular organisms"),
            bullet("Repair of damaged tissues"),
            bullet("Replacement of old cells"),
            bullet("Reproduction"),

            bodyText(
              "Without cell division, organisms would not be able to grow, heal wounds or reproduce.",
            ),

            const SizedBox(height: 30),

            const Text(
              "DNA Must Be Copied First",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Before a cell divides, it must make an exact copy of its DNA. Each daughter cell must receive a complete set of genetic instructions.",
            ),

            bodyText(
              "If DNA is copied incorrectly, mutations can occur. These mutations may affect cell function and can sometimes lead to disease.",
            ),

            topicImage("assets/DNA_Compacting.png"),

            bodyText(
              "DNA is extremely long. To fit inside the nucleus, it is compacted and organized into structures called chromosomes.",
            ),

            bullet("DNA contains genetic information"),
            bullet("DNA is compacted into chromosomes"),
            bullet("Chromosomes become visible during cell division"),

            const SizedBox(height: 40),

            const Text(
              "How DNA Is Packaged",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Human DNA is extremely long. If the DNA from a single cell were stretched out, it would be approximately 2 metres long. Therefore, cells must package DNA efficiently so that it fits inside the nucleus.",
            ),

            bodyText(
              "DNA wraps around special proteins called histones. The DNA-histone combination forms a structure known as chromatin.",
            ),

            bullet("DNA wraps around histone proteins"),
            bullet("DNA + Histones = Chromatin"),
            bullet("Chromatin helps DNA fit inside the nucleus"),

            bodyText(
              "Most of the time DNA exists as loosely packed chromatin because the cell needs access to genes for transcription and protein synthesis.",
            ),

            bodyText(
              "When a cell prepares to divide, chromatin becomes tightly condensed and forms chromosomes.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Chromatin is relaxed DNA. Chromosomes are condensed DNA.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Chromosomes and Sister Chromatids",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Before cell division, DNA is replicated. Each chromosome now consists of two identical copies called sister chromatids.",
            ),

            bodyText(
              "The sister chromatids are attached at a region called the centromere.",
            ),

            bullet("Chromosome = packaged DNA"),
            bullet("Sister chromatids = identical DNA copies"),
            bullet("Centromere = attachment point"),

            bodyText(
              "During cell division, sister chromatids separate and move into different daughter cells so that each new cell receives a complete copy of the DNA.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: A replicated chromosome consists of TWO sister chromatids joined by ONE centromere.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "The Cell Cycle",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The cell cycle is the sequence of events through which a cell grows, copies its DNA and divides.",
            ),

            bodyText(
              "The cell cycle can be divided into two major stages:",
            ),

            bullet("Interphase"),
            bullet("Mitotic (M) Phase"),

            bodyText(
              "Most of a cell's life is spent in Interphase.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Interphase",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Interphase is the longest stage of the cell cycle. During this period the cell is not dividing, but it is highly active. The cell grows, performs normal functions and prepares for division.",
            ),

            bodyText(
              "Interphase consists of three phases:",
            ),

            bullet("G1 Phase (Growth 1)"),
            bullet("S Phase (Synthesis)"),
            bullet("G2 Phase (Growth 2)"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Most of a cell's life is spent in Interphase.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "G1 Phase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "During G1, the cell grows in size and produces proteins and organelles needed for normal cellular activities.",
            ),

            bullet("Cell grows"),
            bullet("Organelles increase in number"),
            bullet("Proteins are synthesized"),
            bullet("Normal cell functions occur"),

            const SizedBox(height: 20),

            const Text(
              "S Phase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The S phase is the DNA replication phase.",
            ),

            bodyText(
              "Every chromosome is copied so that two identical sister chromatids are produced.",
            ),

            bullet("DNA replication occurs"),
            bullet("Chromosomes are duplicated"),
            bullet("Sister chromatids are formed"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: S = Synthesis of DNA.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "G2 Phase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "After DNA replication, the cell enters G2. During this phase the cell continues growing and prepares for mitosis.",
            ),

            bullet("Cell grows further"),
            bullet("Proteins for division are produced"),
            bullet("DNA is checked for errors"),
            bullet("Preparation for mitosis"),

            const SizedBox(height: 30),

            const Text(
              "Cell Cycle Checkpoints",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cells do not divide blindly. They pass through checkpoints that ensure everything is functioning correctly before moving to the next phase.",
            ),

            bodyText(
              "Checkpoints act like quality-control inspectors.",
            ),

            bullet("Check cell size"),
            bullet("Check nutrient availability"),
            bullet("Check DNA integrity"),
            bullet("Check whether DNA replication is complete"),

            bodyText(
              "If a problem is detected, the cell cycle can be stopped until the problem is fixed.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Without checkpoints, damaged DNA could be passed to daughter cells.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Cyclins and CDKs",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/CDK_and_Cyclin.png"),

            bodyText(
              "The cell cycle is controlled by proteins called cyclins and cyclin-dependent kinases (CDKs).",
            ),

            bodyText(
              "Cyclins act like managers that determine when a cell should move to the next stage of the cycle.",
            ),

            bodyText(
              "CDKs are enzymes that become active when attached to cyclins.",
            ),

            bullet("Cyclins regulate timing"),
            bullet("CDKs carry out cell-cycle control"),
            bullet("Together they control progression through the cell cycle"),

            bodyText(
              "If cyclins or CDKs malfunction, cells may divide uncontrollably, which can contribute to cancer development.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Cyclins and CDKs are the main regulators of the cell cycle.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Binary Fission",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Binary_Fission_Bacterium.png"),

            bodyText(
              "Before discussing mitosis, it is important to understand how prokaryotic cells such as bacteria divide.",
            ),

            bodyText(
              "Bacteria do not undergo mitosis because they do not possess a nucleus. Instead, they divide through a simpler process called binary fission.",
            ),

            bullet("Occurs in bacteria"),
            bullet("Produces two identical daughter cells"),
            bullet("DNA replicates first"),
            bullet("Cell splits into two"),

            bodyText(
              "Binary fission is rapid and allows bacterial populations to grow very quickly under favourable conditions.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Binary fission occurs in prokaryotes while mitosis occurs in eukaryotes.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Mitosis",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Mitosis.png"),

            bodyText(
              "Mitosis is the process by which a eukaryotic cell divides to produce two genetically identical daughter cells.",
            ),

            bodyText(
              "The purpose of mitosis is to ensure that each daughter cell receives a complete and identical set of chromosomes.",
            ),

            bullet("Produces two daughter cells"),
            bullet("Daughter cells are genetically identical"),
            bullet("Maintains chromosome number"),
            bullet("Used for growth and repair"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Mitosis Makes Matching cells.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Stages of Mitosis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Mitosis occurs in four main stages: Prophase, Metaphase, Anaphase and Telophase.",
            ),

            const SizedBox(height: 20),

            const Text(
              "1. Prophase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Prophase is the preparation stage of mitosis.",
            ),

            bullet("Chromatin condenses into visible chromosomes"),
            bullet("Each chromosome consists of two sister chromatids"),
            bullet("Nuclear envelope begins to break down"),
            bullet("Spindle fibres begin forming"),

            bodyText(
              "This stage makes the chromosomes visible under a microscope.",
            ),

            const SizedBox(height: 20),

            const Text(
              "2. Metaphase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "During metaphase, chromosomes line up at the centre of the cell.",
            ),

            bullet("Chromosomes align at the equator"),
            bullet("Spindle fibres attach to centromeres"),

            bodyText(
              "This alignment ensures that each daughter cell will receive one copy of every chromosome.",
            ),

            const SizedBox(height: 20),

            const Text(
              "3. Anaphase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Anaphase is the stage where sister chromatids separate.",
            ),

            bullet("Centromeres split"),
            bullet("Sister chromatids separate"),
            bullet("Chromatids move to opposite poles"),

            bodyText(
              "Once separated, each chromatid is considered an individual chromosome.",
            ),

            const SizedBox(height: 20),

            const Text(
              "4. Telophase",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Telophase is the final stage of mitosis.",
            ),

            bullet("Chromosomes arrive at opposite poles"),
            bullet("New nuclear envelopes form"),
            bullet("Chromosomes begin to uncoil"),
            bullet("Spindle fibres disappear"),

            bodyText(
              "Two nuclei are now present within the cell.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: PMAT = Prophase, Metaphase, Anaphase, Telophase.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Cytokinesis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "After mitosis, the cytoplasm divides through a process called cytokinesis.",
            ),

            bullet("Divides the cytoplasm"),
            bullet("Produces two separate daughter cells"),

            bodyText(
              "Mitosis divides the nucleus, while cytokinesis divides the cell itself.",
            ),

            const SizedBox(height: 40),
            
            const Text(
              "When Cell Division Goes Wrong",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The cell cycle is tightly regulated because uncontrolled cell division can be dangerous. If cells divide when they should not, tissues can become damaged and diseases may develop.",
            ),

            bodyText(
              "Normally, checkpoints, cyclins and CDKs ensure that only healthy cells continue through the cell cycle.",
            ),

            bullet("Healthy cells follow checkpoints"),
            bullet("Damaged cells are repaired"),
            bullet("Dangerous cells are removed"),
            bullet("Cell division remains controlled"),

            bodyText(
              "However, mutations in genes controlling the cell cycle can remove these safeguards.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Cancer is often caused by loss of normal cell-cycle control.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Cancer",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cancer is a disease in which cells divide uncontrollably and ignore the normal signals that regulate cell growth.",
            ),

            bullet("Uncontrolled cell division"),
            bullet("Loss of checkpoint control"),
            bullet("Formation of tumours"),
            bullet("Can spread to other tissues"),

            bodyText(
              "Many cancers begin when mutations occur in genes that regulate the cell cycle.",
            ),

            bodyText(
              "Instead of stopping, repairing damage or dying, the abnormal cell continues dividing repeatedly.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Programmed Cell Death",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Not every cell is meant to live forever. Some cells must be removed when they become damaged, infected or are no longer needed.",
            ),

            bodyText(
              "Cells can die through apoptosis or necrosis.",
            ),

            topicImage("assets/Apoptosis_vs_Nectosis.png"),

            const SizedBox(height: 20),

            const Text(
              "Apoptosis",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Apoptosis is programmed cell death. It is a controlled process in which the cell deliberately destroys itself for the benefit of the organism.",
            ),

            bullet("Controlled process"),
            bullet("Cell shrinks"),
            bullet("Cell contents remain contained"),
            bullet("No inflammation"),

            bodyText(
              "Apoptosis is important during development, tissue maintenance and removal of damaged cells.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Apoptosis = Planned cell death.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Necrosis",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Necrosis is uncontrolled cell death caused by injury, toxins, infection or lack of oxygen.",
            ),

            bullet("Uncontrolled process"),
            bullet("Cell swells"),
            bullet("Cell bursts"),
            bullet("Causes inflammation"),

            bodyText(
              "Unlike apoptosis, necrosis damages surrounding tissues because cell contents spill into the environment.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Apoptosis is organised. Necrosis is messy.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Types_of_Mutation.png"),

            bodyText(
              "A mutation is a change in the DNA sequence.",
            ),

            bodyText(
              "Mutations can occur naturally during DNA replication or be caused by environmental factors such as radiation and certain chemicals.",
            ),

            bullet("Change in DNA sequence"),
            bullet("Can be harmful"),
            bullet("Can be beneficial"),
            bullet("Can have no effect"),

            const SizedBox(height: 20),

            const Text(
              "Major Types of Mutations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Substitution"),
            bullet("Insertion"),
            bullet("Deletion"),

            bodyText(
              "A substitution replaces one nucleotide with another.",
            ),

            bodyText(
              "An insertion adds extra nucleotides into the DNA sequence.",
            ),

            bodyText(
              "A deletion removes nucleotides from the DNA sequence.",
            ),

            bodyText(
              "Insertions and deletions are often particularly harmful because they can shift the reading frame of a gene.",
            ),

            bodyText("For clear difference between Silent Mutation, Nonsense Mutation and Frameshift Mutation visualise from the above image for understanding.",),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Mutations create genetic variation but may also cause disease.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Big Picture Summary",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The Cell Cycle ensures that cells grow, copy their DNA and divide correctly. DNA is packaged into chromosomes, replicated during Interphase and distributed equally during Mitosis. Cell-cycle checkpoints, cyclins and CDKs regulate division and help prevent errors. When regulation fails, diseases such as cancer can occur.",
            ),

            bodyText(
              "Cells can also die through apoptosis (controlled cell death) or necrosis (uncontrolled cell death). Mutations introduce changes into DNA and can influence how cells function.",
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Mastering the Cell Cycle means understanding how cells grow, copy DNA, divide and maintain healthy tissues.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Exam Essentials",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("• DNA wraps around histones to form chromatin."),
                    Text("• Chromatin condenses into chromosomes."),
                    Text("• Sister chromatids are joined by a centromere."),
                    Text("• Interphase consists of G1, S and G2."),
                    Text("• DNA replication occurs during S phase."),
                    Text("• Cyclins and CDKs regulate the cell cycle."),
                    Text("• Binary fission occurs in prokaryotes."),
                    Text("• Mitosis consists of PMAT."),
                    Text("• Cytokinesis divides the cytoplasm."),
                    Text("• Cancer results from uncontrolled cell division."),
                    Text("• Apoptosis is programmed cell death."),
                    Text("• Necrosis is uncontrolled cell death."),
                    Text("• Mutations are changes in DNA sequence."),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Practice Questions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Why must DNA be packaged?\n\n"
                      "2. What is chromatin?\n\n"
                      "3. What is a chromosome?\n\n"
                      "4. What are sister chromatids?\n\n"
                      "5. What is the function of the centromere?\n\n"
                      "6. What are the three phases of Interphase?\n\n"
                      "7. During which phase is DNA replicated?\n\n"
                      "8. What are cyclins and CDKs?\n\n"
                      "9. What is binary fission?\n\n"
                      "10. What is the purpose of mitosis?\n\n"
                      "11. Name the four stages of mitosis.\n\n"
                      "12. What happens during metaphase?\n\n"
                      "13. What happens during anaphase?\n\n"
                      "14. What is cytokinesis?\n\n"
                      "15. What is cancer?\n\n"
                      "16. What is apoptosis?\n\n"
                      "17. What is necrosis?\n\n"
                      "18. What is a mutation?\n\n"
                      "19. Name three major mutation types.\n\n"
                      "20. Why are cell-cycle checkpoints important?",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Suggested Answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. To fit DNA inside the nucleus.\n\n"
                      "2. DNA wrapped around histone proteins.\n\n"
                      "3. Condensed DNA.\n\n"
                      "4. Identical copies of a chromosome.\n\n"
                      "5. It holds sister chromatids together.\n\n"
                      "6. G1, S and G2.\n\n"
                      "7. S phase.\n\n"
                      "8. Proteins that regulate the cell cycle.\n\n"
                      "9. Cell division in prokaryotes.\n\n"
                      "10. To produce two genetically identical daughter cells.\n\n"
                      "11. Prophase, Metaphase, Anaphase and Telophase.\n\n"
                      "12. Chromosomes align at the equator.\n\n"
                      "13. Sister chromatids separate.\n\n"
                      "14. Division of the cytoplasm.\n\n"
                      "15. Uncontrolled cell division.\n\n"
                      "16. Programmed cell death.\n\n"
                      "17. Uncontrolled cell death.\n\n"
                      "18. A change in DNA sequence.\n\n"
                      "19. Substitution, insertion and deletion.\n\n"
                      "20. They prevent damaged cells from dividing.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Congratulations! You have completed Cell Cycle and Cell Division. If you understand DNA packaging, Interphase, Mitosis, Cytokinesis, Cell-Cycle Control, Cancer, Apoptosis and Mutations, then you have mastered one of the most important foundations of modern biology.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}


class DNAAndHeredityPage extends StatelessWidget {
  const DNAAndHeredityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DNA and Heredity"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "DNA and Heredity",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            bodyText(
              "Every cell in your body contains instructions that tell it how to function. These instructions determine everything from the proteins a cell produces to how the organism grows and develops.",
            ),

            bodyText(
              "The molecule that stores these instructions is DNA. DNA is one of the most important molecules in biology because it contains the information needed for life.",
            ),

            topicImage("assets/DNA.png"),

            const Text(
              "What Is Heredity?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Heredity is the passing of characteristics from parents to offspring.",
            ),

            bodyText(
              "When children resemble their parents in eye colour, hair colour, height or other characteristics, this occurs because genetic information has been inherited.",
            ),

            bullet("Parents pass genetic information to offspring"),
            bullet("DNA carries inherited information"),
            bullet("Inherited information influences traits"),

            bodyText(
              "The study of how characteristics are inherited is called genetics.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Heredity is the transmission of genetic information from one generation to the next.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Why Is DNA So Important?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA acts like a biological information storage system. Just as a computer stores instructions in code, cells store instructions in DNA.",
            ),

            bodyText(
              "These instructions tell cells:",
            ),

            bullet("Which proteins to make"),
            bullet("When to grow"),
            bullet("When to divide"),
            bullet("How to perform specialised functions"),

            bodyText(
              "Without DNA, cells would have no instructions and life could not exist.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Think of DNA as the instruction manual for building and operating an organism.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "How Do We Know DNA Is the Genetic Material?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Experiments.png"),

            bodyText(
              "Scientists once debated whether proteins or DNA carried genetic information.",
            ),

            bodyText(
              "A series of experiments eventually demonstrated that DNA is the molecule responsible for heredity.",
            ),

            bodyText(
              "The most important conclusion from these experiments was that DNA contains the instructions that can be passed from one generation to the next.",
            ),

            bullet("DNA stores genetic information"),
            bullet("DNA can be copied"),
            bullet("DNA can be inherited"),
            bullet("DNA controls cell activities"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "You do not need to memorise every experimental detail. Understand the conclusion: DNA is the hereditary material.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "The Structure of DNA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA stands for Deoxyribonucleic Acid.",
            ),

            bodyText(
              "DNA has a unique double-helix structure that resembles a twisted ladder.",
            ),

            bullet("DNA consists of two strands"),
            bullet("The strands twist around each other"),
            bullet("The structure is called a double helix"),

            bodyText(
              "The sides of the ladder are formed by sugar and phosphate molecules, while the rungs are formed by nitrogenous bases.",
            ),

            const SizedBox(height: 20),

            const Text(
              "The Four Nitrogenous Bases",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Adenine (A)"),
            bullet("Thymine (T)"),
            bullet("Cytosine (C)"),
            bullet("Guanine (G)"),

            bodyText(
              "The sequence of these bases stores genetic information in the same way letters form words in a language.",
            ),

            bodyText(
              "The order of bases determines the instructions contained in the DNA molecule.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Complementary Base Pairing",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The bases do not pair randomly. They always follow specific pairing rules.",
            ),

            bullet("A pairs with T"),
            bullet("C pairs with G"),

            bodyText(
              "These pairing rules are extremely important because they allow DNA to be copied accurately during replication.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: A always pairs with T, and C always pairs with G.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Understanding DNA Bonds",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "To understand DNA replication, students must first understand the different bonds found in DNA.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Hydrogen Bonds",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Hydrogen bonds hold the two DNA strands together by connecting complementary bases.",
            ),

            bullet("A pairs with T using 2 hydrogen bonds"),
            bullet("C pairs with G using 3 hydrogen bonds"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Remember: A-T = 2 hydrogen bonds, C-G = 3 hydrogen bonds.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Calculating Hydrogen Bonds",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Example: A DNA molecule contains 100 A-T pairs and 50 C-G pairs.",
            ),

            bodyText(
              "Hydrogen bonds = (100 × 2) + (50 × 3)",
            ),

            bodyText(
              "= 200 + 150",
            ),

            bodyText(
              "= 350 hydrogen bonds",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Formula: Hydrogen Bonds = (A-T pairs × 2) + (C-G pairs × 3)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Phosphodiester Bonds",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Phosphodiester bonds connect nucleotides together along a single DNA strand, forming the sugar-phosphate backbone.",
            ),

            bodyText(
              "If a strand contains n nucleotides, the number of phosphodiester bonds is always one less than the number of nucleotides.",
            ),

            bullet("10 nucleotides → 9 phosphodiester bonds"),
            bullet("100 nucleotides → 99 phosphodiester bonds"),
            bullet("1000 nucleotides → 999 phosphodiester bonds"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Formula: Phosphodiester Bonds = Number of Nucleotides − 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "DNA Calculation Tricks",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Because DNA follows complementary base pairing, once you know one strand you automatically know the other.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "If one strand contains:",
            ),

            bodyText(
              "A A T G C",
            ),

            bodyText(
              "The complementary strand must be:",
            ),

            bodyText(
              "T T A C G",
            ),

            bullet("A pairs with T"),
            bullet("T pairs with A"),
            bullet("C pairs with G"),
            bullet("G pairs with C"),

            bodyText(
              "This principle is the foundation of DNA replication.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Chargaff's Rule",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Chargaff discovered that in double-stranded DNA:",
            ),

            bullet("Amount of A = Amount of T"),
            bullet("Amount of C = Amount of G"),

            bodyText(
              "If a DNA molecule contains 30% Adenine, it must also contain 30% Thymine.",
            ),

            bodyText(
              "This means 60% of the DNA is A + T.",
            ),

            bodyText(
              "The remaining 40% must be C + G.",
            ),

            bodyText(
              "Therefore:",
            ),

            bodyText(
              "C = 20%",
            ),

            bodyText(
              "G = 20%",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: If you know one base percentage, you can calculate all the others.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            const SizedBox(height: 40),

            const Text(
              "DNA Replication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Before a cell divides, it must copy its DNA so that each daughter cell receives a complete set of genetic information. This copying process is called DNA replication.",
            ),

            bodyText(
              "DNA replication occurs during the S phase of Interphase.",
            ),

            bullet("Occurs before cell division"),
            bullet("Occurs during S phase"),
            bullet("Produces two identical DNA molecules"),
            bullet("Ensures genetic continuity"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: DNA replication occurs during the S phase of Interphase.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "The Origin of Replication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Origin.png"),

            bodyText(
              "Replication does not begin randomly. It starts at specific DNA sequences called origins of replication.",
            ),

            bodyText(
              "These origins act like starting points where replication machinery assembles.",
            ),

            bullet("Replication begins here"),
            bullet("Special proteins recognize the origin"),
            bullet("DNA starts opening at this location"),

            bodyText(
              "In eukaryotic chromosomes, there are many origins of replication. This allows large chromosomes to be copied more quickly.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Step 1: Helicase Opens the DNA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Helicase_to_Ligase.png"),

            bodyText(
              "The first major enzyme involved in replication is helicase.",
            ),

            bodyText(
              "Helicase breaks the hydrogen bonds between complementary base pairs.",
            ),

            bullet("Breaks hydrogen bonds"),
            bullet("Separates DNA strands"),
            bullet("Unwinds the double helix"),

            bodyText(
              "As helicase moves along the DNA molecule, a Y-shaped structure called a replication fork forms.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Helicase = DNA zipper opener.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Step 2: Complementary Bases Pair",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Once the strands separate, each original strand acts as a template for building a new strand.",
            ),

            bodyText(
              "Free nucleotides in the nucleus move into position according to complementary base-pairing rules.",
            ),

            bullet("A pairs with T"),
            bullet("T pairs with A"),
            bullet("C pairs with G"),
            bullet("G pairs with C"),

            bodyText(
              "The sequence on the original strand determines the sequence on the newly forming strand.",
            ),

            const SizedBox(height: 25),

            const Text(
              "Step 3: DNA Polymerase Builds New DNA",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA Polymerase is the enzyme responsible for adding nucleotides to the growing DNA strand.",
            ),

            bullet("Adds nucleotides"),
            bullet("Builds new DNA strands"),
            bullet("Works using complementary base pairing"),

            bodyText(
              "DNA Polymerase moves along the template strand and joins nucleotides together using phosphodiester bonds.",
            ),

            bodyText(
              "As a result, two complete DNA molecules gradually form.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Helicase opens DNA, DNA Polymerase builds DNA.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Protecting the Open DNA Strands",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Once helicase separates the two DNA strands, the strands naturally tend to rejoin because complementary bases attract one another.",
            ),

            bodyText(
              "If the strands rejoined immediately, replication could not continue.",
            ),

            bodyText(
              "To prevent this problem, special proteins called Single-Stranded Binding Proteins (SSBs) attach to the exposed DNA strands.",
            ),

            bullet("Bind to separated DNA strands"),
            bullet("Prevent strands from rejoining"),
            bullet("Protect DNA from damage"),
            bullet("Keep DNA accessible for replication"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Think of SSB proteins as clips holding the DNA strands apart while replication takes place.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Why Replication Is Not The Same On Both Strands",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA Polymerase can only build new DNA in one direction: from 5' to 3'.",
            ),

            bodyText(
              "Because the two template strands run in opposite directions, replication cannot occur identically on both strands.",
            ),

            bodyText(
              "As a result, one strand is synthesized continuously while the other is synthesized in small fragments.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Leading Strand",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The leading strand is synthesized continuously in the same direction as the movement of the replication fork.",
            ),

            bullet("Continuous synthesis"),
            bullet("Requires fewer interruptions"),
            bullet("Built smoothly by DNA Polymerase"),

            const SizedBox(height: 20),

            const Text(
              "Lagging Strand",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The lagging strand cannot be synthesized continuously because of DNA Polymerase's directional limitation.",
            ),

            bodyText(
              "Instead, it is built in short sections called Okazaki fragments.",
            ),

            bullet("Discontinuous synthesis"),
            bullet("Produced in fragments"),
            bullet("Forms Okazaki fragments"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Leading strand = continuous. Lagging strand = discontinuous.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Okazaki Fragments",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Okazaki fragments are short DNA segments produced on the lagging strand during replication.",
            ),

            bodyText(
              "Each fragment is synthesized separately and must later be joined together.",
            ),

            bullet("Found only on the lagging strand"),
            bullet("Produced during discontinuous synthesis"),
            bullet("Must be connected together"),

            const SizedBox(height: 20),

            const Text(
              "DNA Ligase",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA Ligase is the enzyme responsible for joining Okazaki fragments together.",
            ),

            bodyText(
              "Ligase seals the gaps between fragments by forming phosphodiester bonds.",
            ),

            bullet("Joins Okazaki fragments"),
            bullet("Forms phosphodiester bonds"),
            bullet("Completes the lagging strand"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Ligase = Glue of DNA replication.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Semi-Discontinuous Replication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA replication is often described as semi-discontinuous because the two strands are copied differently.",
            ),

            bullet("Leading strand = continuous"),
            bullet("Lagging strand = discontinuous"),

            bodyText(
              "Since one strand is synthesized continuously and the other discontinuously, replication is neither completely continuous nor completely discontinuous.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: DNA replication is semi-discontinuous because only the lagging strand forms Okazaki fragments.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Semi-Conservative Replication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "When DNA replication finishes, two DNA molecules are produced. A key question scientists once asked was: how much of the original DNA is retained in the new molecules?",
            ),

            bodyText(
              "Experiments showed that DNA replication is semi-conservative.",
            ),

            bodyText(
              "Semi-conservative means that each new DNA molecule contains:",
            ),

            bullet("One original (parental) strand"),
            bullet("One newly synthesized strand"),

            bodyText(
              "In other words, half of the original DNA molecule is conserved in each daughter DNA molecule.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Semi-conservative replication means each daughter DNA molecule contains one old strand and one new strand.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Why DNA Replication Must Be Accurate",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Human DNA contains billions of base pairs. Even a small number of copying mistakes could have serious consequences for cells.",
            ),

            bodyText(
              "Therefore cells possess mechanisms that greatly reduce errors during DNA replication.",
            ),

            bullet("Incorrect bases must be detected"),
            bullet("Errors must be corrected"),
            bullet("Genetic information must be preserved"),

            bodyText(
              "Without these mechanisms, mutations would accumulate rapidly and many cells would stop functioning properly.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Proofreading",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Proofreading.png"),

            bodyText(
              "DNA Polymerase does more than simply add nucleotides. It also checks its own work through a process called proofreading.",
            ),

            bodyText(
              "As DNA Polymerase moves along the DNA strand, it continuously checks whether the correct base has been added.",
            ),

            bullet("Checks newly added nucleotides"),
            bullet("Detects incorrect base pairing"),
            bullet("Removes mistakes"),
            bullet("Replaces incorrect bases"),

            bodyText(
              "For example, if a G is mistakenly inserted opposite an A, DNA Polymerase can detect the error, remove the incorrect nucleotide and replace it with the correct one.",
            ),

            bodyText(
              "This proofreading process dramatically reduces the number of mutations that occur during replication.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: DNA Polymerase is both the builder and the editor of DNA.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Telomeres",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Telomere_Telomerase.png"),

            bodyText(
              "Linear chromosomes have a special problem. Each time DNA replication occurs, a small portion at the end of the chromosome cannot be copied completely.",
            ),

            bodyText(
              "If important genes were located at chromosome ends, genetic information would be lost during every cell division.",
            ),

            bodyText(
              "To prevent this, chromosomes contain protective regions called telomeres.",
            ),

            bullet("Found at chromosome ends"),
            bullet("Contain repetitive DNA sequences"),
            bullet("Protect important genes"),
            bullet("Act as protective buffers"),

            bodyText(
              "Telomeres can be compared to the plastic tips found at the ends of shoelaces. Just as the plastic tip prevents a shoelace from fraying, telomeres protect chromosomes from deterioration.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Think of telomeres as chromosome protection caps.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Telomerase",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Telomerase is an enzyme that helps maintain telomeres.",
            ),

            bodyText(
              "It adds additional DNA sequences to chromosome ends, helping compensate for DNA that is lost during replication.",
            ),

            bullet("Extends telomeres"),
            bullet("Protects chromosome ends"),
            bullet("Reduces loss of genetic information"),

            bodyText(
              "Telomerase is highly active in stem cells, reproductive cells and many cancer cells.",
            ),

            bodyText(
              "Most ordinary body cells have little or no telomerase activity, which is one reason why telomeres gradually shorten as people age.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Telomeres protect chromosome ends, while telomerase helps rebuild and maintain telomeres.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "DNA Calculation Masterclass",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA calculations are common in tests and exams. Fortunately, most DNA calculations follow a few simple rules.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Calculation 1: Complementary DNA Strands",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "Original Strand:",
            ),

            bodyText(
              "A T G C C A T G",
            ),

            bodyText(
              "Complementary Strand:",
            ),

            bodyText(
              "T A C G G T A C",
            ),

            bodyText(
              "Always remember:",
            ),

            bullet("A pairs with T"),
            bullet("T pairs with A"),
            bullet("C pairs with G"),
            bullet("G pairs with C"),

            const SizedBox(height: 25),

            const Text(
              "Calculation 2: Hydrogen Bonds",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A-T pairs form 2 hydrogen bonds.",
            ),

            bodyText(
              "C-G pairs form 3 hydrogen bonds.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "DNA contains:",
            ),

            bullet("120 A-T pairs"),
            bullet("80 C-G pairs"),

            bodyText(
              "Hydrogen Bonds = (120 × 2) + (80 × 3)",
            ),

            bodyText(
              "= 240 + 240",
            ),

            bodyText(
              "= 480 Hydrogen Bonds",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Formula: (A-T × 2) + (C-G × 3)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Calculation 3: Phosphodiester Bonds",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Phosphodiester bonds connect neighbouring nucleotides within a DNA strand.",
            ),

            bodyText(
              "The number of phosphodiester bonds is always one less than the number of nucleotides in a strand.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "If a strand contains 500 nucleotides:",
            ),

            bodyText(
              "Phosphodiester Bonds = 500 − 1",
            ),

            bodyText(
              "= 499",
            ),

            bodyText("Caution: On one strand not both strands, then on both strands you substract 2 and not 1.",),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Formula: Number of Nucleotides − 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Calculation 4: Chargaff's Rule",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "In double-stranded DNA:",
            ),

            bullet("A = T"),
            bullet("C = G"),

            bodyText(
              "Example:",
            ),

            bodyText(
              "If Adenine = 35%",
            ),

            bodyText(
              "Then Thymine = 35%",
            ),

            bodyText(
              "Total A + T = 70%",
            ),

            bodyText(
              "Remaining = 30%",
            ),

            bodyText(
              "Therefore:",
            ),

            bodyText(
              "Cytosine = 15%",
            ),

            bodyText(
              "Guanine = 15%",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Once you know one base percentage, you can calculate all the others.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Big Picture Summary of DNA Replication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "DNA replication begins at origins of replication. Helicase opens the DNA double helix by breaking hydrogen bonds. Single-Stranded Binding Proteins keep the strands apart. DNA Polymerase builds new strands using complementary base pairing. The leading strand is synthesized continuously, while the lagging strand is synthesized discontinuously as Okazaki fragments. DNA Ligase joins these fragments together. DNA Polymerase proofreads the new DNA to reduce errors. The final result is two identical DNA molecules produced through semi-conservative replication.",
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "If you understand origins, helicase, SSB proteins, DNA polymerase, leading strand, lagging strand, Okazaki fragments, ligase, proofreading, telomeres and telomerase, then you understand DNA replication.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Exam Essentials",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("• DNA is the hereditary material."),
                    Text("• DNA stands for Deoxyribonucleic Acid."),
                    Text("• DNA has a double-helix structure."),
                    Text("• A pairs with T."),
                    Text("• C pairs with G."),
                    Text("• A-T has 2 hydrogen bonds."),
                    Text("• C-G has 3 hydrogen bonds."),
                    Text("• DNA replication occurs during S phase."),
                    Text("• Replication begins at origins of replication."),
                    Text("• Helicase breaks hydrogen bonds."),
                    Text("• SSB proteins keep strands apart."),
                    Text("• DNA Polymerase builds new DNA."),
                    Text("• DNA Polymerase proofreads DNA."),
                    Text("• Leading strand is continuous."),
                    Text("• Lagging strand is discontinuous."),
                    Text("• Okazaki fragments occur on the lagging strand."),
                    Text("• DNA Ligase joins Okazaki fragments."),
                    Text("• Replication is semi-discontinuous."),
                    Text("• Replication is semi-conservative."),
                    Text("• Telomeres protect chromosome ends."),
                    Text("• Telomerase maintains telomeres."),
                    Text("• Chargaff's Rule: A=T and C=G."),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Practice Questions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Define heredity.\n\n"
                      "2. Why is DNA important?\n\n"
                      "3. What does DNA stand for?\n\n"
                      "4. Describe the structure of DNA.\n\n"
                      "5. Name the four nitrogenous bases.\n\n"
                      "6. State the complementary base-pairing rules.\n\n"
                      "7. How many hydrogen bonds occur between A and T?\n\n"
                      "8. How many hydrogen bonds occur between C and G?\n\n"
                      "9. What is the function of helicase?\n\n"
                      "10. What is the function of Single-Stranded Binding Proteins?\n\n"
                      "11. What is the function of DNA Polymerase?\n\n"
                      "12. What is the function of DNA Ligase?\n\n"
                      "13. What are Okazaki fragments?\n\n"
                      "14. Distinguish between the leading and lagging strands.\n\n"
                      "15. Why is replication described as semi-discontinuous?\n\n"
                      "16. Why is replication described as semi-conservative?\n\n"
                      "17. What is proofreading?\n\n"
                      "18. What are telomeres?\n\n"
                      "19. What is telomerase?\n\n"
                      "20. State Chargaff's Rule.\n\n"
                      "21. Calculate the number of hydrogen bonds in a DNA molecule containing 100 A-T pairs and 50 C-G pairs.\n\n"
                      "22. A DNA molecule contains 30% Adenine. Calculate the percentages of T, C and G.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Suggested Answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. The passing of genetic information from parents to offspring.\n\n"
                      "2. It stores genetic information and controls cell activities.\n\n"
                      "3. Deoxyribonucleic Acid.\n\n"
                      "4. A double helix consisting of two strands.\n\n"
                      "5. Adenine, Thymine, Cytosine and Guanine.\n\n"
                      "6. A pairs with T and C pairs with G.\n\n"
                      "7. Two.\n\n"
                      "8. Three.\n\n"
                      "9. Unwinds DNA and breaks hydrogen bonds.\n\n"
                      "10. They keep DNA strands separated.\n\n"
                      "11. Builds new DNA and proofreads it.\n\n"
                      "12. Joins Okazaki fragments.\n\n"
                      "13. Short DNA fragments on the lagging strand.\n\n"
                      "14. Leading is continuous, lagging is discontinuous.\n\n"
                      "15. One strand is continuous and the other discontinuous.\n\n"
                      "16. Each new DNA molecule contains one old strand and one new strand.\n\n"
                      "17. Error-checking during DNA replication.\n\n"
                      "18. Protective DNA sequences at chromosome ends.\n\n"
                      "19. An enzyme that maintains telomeres.\n\n"
                      "20. A=T and C=G.\n\n"
                      "21. (100 × 2) + (50 × 3) = 350 hydrogen bonds.\n\n"
                      "22. T = 30%, C = 20%, G = 20%.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Congratulations! You have completed DNA and Heredity. You should now understand DNA structure, DNA replication, complementary base pairing, DNA calculations, proofreading, telomeres and how genetic information is accurately passed from one generation to the next.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}


class GeneExpressionAndMutationPage extends StatelessWidget {
  const GeneExpressionAndMutationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gene Expression and Mutation"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Gene Expression and Mutation",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            bodyText(
              "Every cell in the body contains DNA, but DNA itself does not perform cellular functions. Instead, DNA contains instructions for building proteins, and proteins perform most of the work inside cells.",
            ),

            bodyText(
              "Gene expression is the process by which information stored in DNA is used to produce functional proteins.",
            ),

            bullet("DNA stores information"),
            bullet("RNA carries information"),
            bullet("Proteins perform cellular functions"),

            bodyText(
              "Gene expression allows cells to use genetic information when it is needed.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Gene Expression = Using DNA information to make proteins.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Genes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A gene is a specific segment of DNA that contains instructions for producing a particular protein or functional RNA molecule.",
            ),

            bodyText(
              "Different genes contain different instructions.",
            ),

            bullet("One gene may code for insulin"),
            bullet("Another gene may code for haemoglobin"),
            bullet("Different genes produce different proteins"),

            bodyText(
              "The sequence of bases in a gene determines the amino acid sequence of the protein that will eventually be produced.",
            ),

            const SizedBox(height: 30),

            const Text(
              "The Central Dogma of Molecular Biology",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The Central Dogma describes the flow of genetic information within cells.",
            ),

            bodyText(
              "Information flows in the following direction:",
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "DNA → RNA → Protein",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            bodyText(
              "DNA stores information. RNA carries the information. Proteins are produced from that information.",
            ),

            bullet("DNA → Transcription → RNA"),
            bullet("RNA → Translation → Protein"),

            bodyText(
              "The entire process of gene expression can therefore be divided into two major stages:",
            ),

            bullet("Transcription"),
            bullet("Translation"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: The Central Dogma is DNA → RNA → Protein.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Overview of Transcription and Translation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            topicImage("assets/Transcription_until_Proteins.png"),

            bodyText(
              "During transcription, a gene's DNA sequence is copied into RNA.",
            ),

            bodyText(
              "During translation, the RNA sequence is used to build a protein.",
            ),

            bodyText(
              "Together, these two processes convert genetic information into a functional protein.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Think of DNA as a recipe book, RNA as a copied recipe and the protein as the finished meal.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Transcription",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Transcription is the process by which information stored in DNA is copied into messenger RNA (mRNA).",
            ),

            bodyText(
              "Transcription occurs inside the nucleus in eukaryotic cells.",
            ),

            bullet("Uses DNA as a template"),
            bullet("Produces mRNA"),
            bullet("Occurs in the nucleus"),

            topicImage("assets/Initiators_Promoters.png"),

            const SizedBox(height: 20),

            const Text(
              "The Parts Needed For Transcription",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Before transcription can begin, the cell must identify exactly where a gene starts and where it ends.",
            ),

            bodyText(
              "Several important DNA regions and proteins work together to ensure that the correct gene is copied.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Initiator",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The initiator is a DNA sequence located near the beginning of a gene.",
            ),

            bodyText(
              "It helps recruit proteins that are needed to start transcription.",
            ),

            bullet("Helps start transcription"),
            bullet("Located near the beginning of a gene"),
            bullet("Assists assembly of transcription machinery"),

            const SizedBox(height: 20),

            const Text(
              "Promoter",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The promoter is a special DNA region where RNA Polymerase binds.",
            ),

            bodyText(
              "You can think of the promoter as the 'start here' sign for transcription.",
            ),

            bullet("RNA Polymerase binds here"),
            bullet("Marks the beginning of transcription"),
            bullet("Controls whether a gene is expressed"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: RNA Polymerase binds to the promoter.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "RNA Polymerase",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "RNA Polymerase is the enzyme responsible for building RNA.",
            ),

            bodyText(
              "Its job is similar to DNA Polymerase during replication, except that it builds RNA instead of DNA.",
            ),

            bullet("Reads DNA"),
            bullet("Builds RNA"),
            bullet("Moves along the gene"),
            bullet("Links RNA nucleotides together"),

            const SizedBox(height: 30),

            const Text(
              "Template Strand vs Coding Strand",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Only one DNA strand is actually used during transcription.",
            ),

            bodyText(
              "The strand used by RNA Polymerase is called the template strand.",
            ),

            bullet("Template strand = used to build RNA"),
            bullet("Read directly by RNA Polymerase"),

            bodyText(
              "The other strand is called the coding strand.",
            ),

            bullet("Coding strand is not directly read"),
            bullet("Has almost the same sequence as mRNA"),

            bodyText(
              "The only difference is that DNA contains Thymine (T) while RNA contains Uracil (U).",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Important: mRNA matches the coding strand except that U replaces T.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Building mRNA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "As RNA Polymerase moves along the template strand, RNA nucleotides pair with exposed DNA bases.",
            ),

            bodyText(
              "RNA uses slightly different base-pairing rules because RNA contains Uracil instead of Thymine.",
            ),

            bullet("DNA A pairs with RNA U"),
            bullet("DNA T pairs with RNA A"),
            bullet("DNA C pairs with RNA G"),
            bullet("DNA G pairs with RNA C"),

            bodyText(
              "The growing RNA strand therefore becomes complementary to the DNA template strand.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Example",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Template DNA:",
            ),

            bodyText(
              "A T G C C A",
            ),

            bodyText(
              "mRNA Produced:",
            ),

            bodyText(
              "U A C G G U",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: RNA contains U (Uracil) instead of T (Thymine).",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Terminator",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The terminator is a DNA sequence that signals the end of transcription.",
            ),

            bodyText(
              "When RNA Polymerase reaches the terminator, transcription stops and the newly formed RNA molecule is released.",
            ),

            bullet("Stops transcription"),
            bullet("Marks the end of a gene"),
            bullet("Causes RNA release"),

            bodyText(
              "The completed RNA molecule is called a primary transcript (pre-mRNA).",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Transcription Summary: Promoter → RNA Polymerase binds → RNA is built → Terminator stops transcription.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "RNA Processing",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "When transcription finishes, the RNA molecule that is produced is called pre-mRNA (precursor mRNA).",
            ),

            bodyText(
              "Pre-mRNA cannot immediately be used for protein synthesis. It must first undergo several modifications inside the nucleus.",
            ),

            bullet("5' Cap added"),
            bullet("Poly-A Tail added"),
            bullet("Introns removed"),
            bullet("Exons joined together"),

            bodyText(
              "These modifications transform pre-mRNA into mature mRNA that can leave the nucleus and be translated.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Introns and Exons",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Not all parts of a gene contain useful protein-coding information.",
            ),

            bodyText(
              "Genes contain two important types of sequences:",
            ),

            const Text(
              "Exons",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Contain useful coding information"),
            bullet("Remain in mature mRNA"),
            bullet("Used to build proteins"),

            const SizedBox(height: 15),

            const Text(
              "Introns",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Non-coding regions"),
            bullet("Removed before translation"),
            bullet("Do not contribute directly to the final protein"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: EXons EXIT the nucleus. INtrons stay IN and are removed.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "RNA Splicing",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "RNA splicing is the process that removes introns and joins exons together.",
            ),

            bodyText(
              "Special protein-RNA complexes called spliceosomes perform this task.",
            ),

            bullet("Introns removed"),
            bullet("Exons joined"),
            bullet("Produces mature mRNA"),

            bodyText(
              "Without splicing, the ribosome would read unnecessary sequences and produce incorrect proteins.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Splicing removes introns and joins exons.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "The 5' Cap",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A modified guanine nucleotide is added to the 5' end of the mRNA molecule.",
            ),

            bodyText(
              "This structure is called the 5' Cap.",
            ),

            bodyText(
              "The 5' Cap has several important functions.",
            ),

            bullet("Protects mRNA from degradation"),
            bullet("Helps ribosomes recognize mRNA"),
            bullet("Assists export from the nucleus"),

            bodyText(
              "Without a 5' Cap, mRNA molecules would be much less stable and translation would be inefficient.",
            ),

            const SizedBox(height: 30),

            const Text(
              "The Poly-A Tail",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A long sequence of adenine nucleotides is added to the 3' end of the mRNA molecule.",
            ),

            bodyText(
              "This structure is called the Poly-A Tail.",
            ),

            bodyText(
              "The Poly-A Tail performs several important functions.",
            ),

            bullet("Protects mRNA from breakdown"),
            bullet("Increases mRNA stability"),
            bullet("Assists transport from nucleus"),
            bullet("Improves translation efficiency"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "5' Cap protects the front of mRNA. Poly-A Tail protects the back of mRNA.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Mature mRNA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "After splicing, 5' capping and Poly-A tail addition, the mature mRNA is complete.",
            ),

            bullet("Contains only exons"),
            bullet("Has a 5' Cap"),
            bullet("Has a Poly-A Tail"),
            bullet("Ready for translation"),

            bodyText(
              "The mature mRNA now leaves the nucleus through nuclear pores and travels to ribosomes in the cytoplasm.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Flow So Far: DNA → Transcription → pre-mRNA → RNA Processing → Mature mRNA → Translation.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Translation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Translation is the process by which the information stored in mRNA is used to build a protein.",
            ),

            bodyText(
              "Translation occurs on ribosomes in the cytoplasm.",
            ),

            bodyText(
              "During translation, the language of nucleotides is converted into the language of amino acids.",
            ),

            bullet("Uses mRNA"),
            bullet("Occurs on ribosomes"),
            bullet("Produces proteins"),
            bullet("Uses amino acids"),

            topicImage("assets/Transcription_until_Protein.png"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Translation = Converting the message in mRNA into a protein.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Codons",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "The genetic code is read in groups of three nucleotides called codons.",
            ),

            bodyText(
              "Each codon specifies a particular amino acid.",
            ),

            bodyText(
              "Example:",
            ),

            bullet("AUG = Methionine"),
            bullet("UUU = Phenylalanine"),
            bullet("GCU = Alanine"),

            bodyText(
              "Because there are four possible bases and codons contain three positions, there are 64 possible codons.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: A codon consists of 3 mRNA nucleotides.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Transfer RNA (tRNA)",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Transfer RNA acts as an adaptor molecule between mRNA and amino acids.",
            ),

            bodyText(
              "Each tRNA carries a specific amino acid and delivers it to the ribosome.",
            ),

            bullet("Carries amino acids"),
            bullet("Recognises codons"),
            bullet("Contains an anticodon"),

            bodyText(
              "The anticodon is a three-base sequence complementary to an mRNA codon.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "mRNA Codon: AUG",
            ),

            bodyText(
              "tRNA Anticodon: UAC",
            ),

            const SizedBox(height: 30),

            const Text(
              "Aminoacyl-tRNA Synthetase",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Before translation can occur, amino acids must be attached to their correct tRNA molecules.",
            ),

            bodyText(
              "This task is performed by Aminoacyl-tRNA Synthetase.",
            ),

            bullet("Attaches amino acids to tRNA"),
            bullet("Ensures correct matching"),
            bullet("Critical for translation accuracy"),

            bodyText(
              "If the wrong amino acid is attached, the wrong protein could be produced.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Aminoacyl-tRNA Synthetase = The enzyme that loads amino acids onto tRNA.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Ribosomes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Ribosomes are the structures where proteins are assembled.",
            ),

            bodyText(
              "Ribosomes consist of ribosomal RNA (rRNA) and proteins.",
            ),

            bullet("Site of translation"),
            bullet("Read mRNA"),
            bullet("Join amino acids together"),

            bodyText(
              "Ribosomes move along mRNA one codon at a time while building a protein.",
            ),

            const SizedBox(height: 20),

            const Text(
              "The Three Ribosome Sites",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Ribosomes contain three important binding sites for tRNA molecules.",
            ),

            const Text(
              "A Site (Aminoacyl Site)",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Entry site"),
            bullet("Incoming tRNA arrives here"),

            const Text(
              "P Site (Peptidyl Site)",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Holds growing protein chain"),
            bullet("Peptide bond formation occurs here"),

            const Text(
              "E Site (Exit Site)",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            bullet("Used tRNA leaves here"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: A = Arrive, P = Protein, E = Exit.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Wobble Hypothesis",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Scientists discovered that some tRNA molecules can recognise more than one codon.",
            ),

            bodyText(
              "This occurs because the third base of a codon is often less strict in its pairing requirements.",
            ),

            bodyText(
              "This flexibility is called wobble.",
            ),

            bullet("Occurs at the third codon position"),
            bullet("Allows one tRNA to recognise multiple codons"),
            bullet("Reduces the number of different tRNAs required"),

            bodyText(
              "For example, two codons that differ only in the third position may still be recognised by the same tRNA.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Wobble occurs at the third base of the codon and allows one tRNA to recognise multiple codons.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "The Three Phases of Translation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Translation occurs in three major phases: Initiation, Elongation and Termination.",
            ),

            const SizedBox(height: 30),

            const Text(
              "1. Initiation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Initiation is the stage where the ribosome assembles around the mRNA and prepares to begin protein synthesis.",
            ),

            bodyText(
              "Translation usually begins at the start codon AUG.",
            ),

            bullet("mRNA binds to the small ribosomal subunit"),
            bullet("Start codon AUG is identified"),
            bullet("Initiator tRNA carrying Methionine binds"),
            bullet("Large ribosomal subunit joins"),

            bodyText(
              "Methionine is usually the first amino acid added to a newly forming protein.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: AUG is the start codon and codes for Methionine.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "2. Elongation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Elongation is the stage where amino acids are added one after another to the growing protein chain.",
            ),

            bodyText(
              "This stage repeats many times until the protein is completed.",
            ),

            bodyText(
              "The process follows a repeating cycle:",
            ),

            bullet("New tRNA enters the A site"),
            bullet("Codon and anticodon pair"),
            bullet("Peptide bond forms"),
            bullet("Protein chain transfers to new amino acid"),
            bullet("Ribosome moves forward"),
            bullet("Used tRNA exits through E site"),

            bodyText(
              "As elongation continues, the protein becomes longer and longer.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Peptide Bonds",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Amino acids are connected together by peptide bonds.",
            ),

            bodyText(
              "These peptide bonds create a polypeptide chain that eventually folds into a functional protein.",
            ),

            bullet("Connect amino acids"),
            bullet("Form proteins"),
            bullet("Created by ribosomal activity"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "A protein is simply a long chain of amino acids connected by peptide bonds.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "3. Termination",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Termination occurs when the ribosome reaches a stop codon.",
            ),

            bodyText(
              "Unlike normal codons, stop codons do not code for amino acids.",
            ),

            bodyText(
              "The three stop codons are:",
            ),

            bullet("UAA"),
            bullet("UAG"),
            bullet("UGA"),

            bodyText(
              "When a stop codon enters the A site, release factors bind instead of tRNA molecules.",
            ),

            bullet("Protein is released"),
            bullet("Ribosome disassembles"),
            bullet("Translation ends"),

            bodyText(
              "The newly synthesized protein can now fold into its functional three-dimensional structure.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Translation ends when a stop codon is reached.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Translation Summary",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "During initiation the ribosome assembles on mRNA. During elongation amino acids are added to the growing protein chain. During termination a stop codon signals the end of protein synthesis and the completed protein is released.",
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Initiation → Elongation → Termination = Complete Protein Synthesis",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A mutation is a permanent change in the nucleotide sequence of DNA.",
            ),

            bodyText(
              "Mutations may affect a single nucleotide, an entire gene or even whole chromosomes.",
            ),

            bodyText(
              "Some mutations have no effect, some are harmful and some may even be beneficial.",
            ),

            bullet("Can change DNA sequence"),
            bullet("Can alter proteins"),
            bullet("Can cause diseases"),
            bullet("Can create genetic variation"),

            topicImage("assets/Types_of_Mutation.png"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Mutation = Permanent change in DNA sequence.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Causes of Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Mutations may occur naturally or be caused by environmental factors called mutagens.",
            ),

            bullet("Errors during DNA replication"),
            bullet("Radiation"),
            bullet("Ultraviolet light"),
            bullet("Certain chemicals"),
            bullet("Viruses"),

            bodyText(
              "Although proofreading reduces mistakes, some errors still escape correction and become permanent mutations.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Point Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A point mutation involves a change in a single nucleotide base.",
            ),

            bodyText(
              "One base is substituted for another base.",
            ),

            bullet("Only one nucleotide changes"),
            bullet("Often affects a single codon"),

            const SizedBox(height: 20),

            const Text(
              "Silent Mutation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A silent mutation changes a DNA sequence but does not change the amino acid that is produced.",
            ),

            bodyText(
              "Because multiple codons can code for the same amino acid, the protein remains unchanged.",
            ),

            bullet("DNA changes"),
            bullet("Protein remains unchanged"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Silent mutation = Mutation with no change in amino acid.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Missense Mutation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A missense mutation changes one amino acid into another amino acid.",
            ),

            bodyText(
              "The protein is still produced but may function differently.",
            ),

            bullet("One amino acid replaced"),
            bullet("Protein may be altered"),

            const SizedBox(height: 20),

            const Text(
              "Nonsense Mutation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A nonsense mutation changes a normal codon into a stop codon.",
            ),

            bodyText(
              "Translation stops too early, producing a shortened protein.",
            ),

            bullet("Premature stop codon"),
            bullet("Shortened protein"),
            bullet("Often harmful"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Silent = Same amino acid. Missense = Different amino acid. Nonsense = Stop codon.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Insertion Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "An insertion mutation occurs when one or more nucleotides are added to a DNA sequence.",
            ),

            bullet("Extra nucleotide added"),
            bullet("Can disrupt codons"),

            const SizedBox(height: 20),

            const Text(
              "Deletion Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A deletion mutation occurs when one or more nucleotides are removed from DNA.",
            ),

            bullet("Nucleotide removed"),
            bullet("Can alter protein sequence"),

            const SizedBox(height: 20),

            const Text(
              "Frameshift Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Insertions and deletions often cause frameshift mutations.",
            ),

            bodyText(
              "Because codons are read in groups of three, adding or removing nucleotides shifts the reading frame.",
            ),

            bodyText(
              "This changes every codon downstream of the mutation.",
            ),

            bullet("Changes reading frame"),
            bullet("Alters many amino acids"),
            bullet("Usually severe"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Frameshift mutations are usually more harmful than point mutations because many codons are affected.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Cancer and Mutations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Most cells carefully control when they grow, divide and die. Cancer develops when mutations disrupt these normal control mechanisms.",
            ),

            bodyText(
              "As mutations accumulate, cells may begin dividing uncontrollably.",
            ),

            bullet("Normal growth control is lost"),
            bullet("Cell division increases"),
            bullet("Damaged cells survive"),
            bullet("Tumours may form"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Cancer is fundamentally a disease caused by mutations in genes that control cell growth and division.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "What Is A Tumour?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A tumour is a mass of abnormal cells produced when cell division becomes uncontrolled.",
            ),

            bodyText(
              "Instead of stopping division when necessary, tumour cells continue multiplying.",
            ),

            bullet("Abnormal cell mass"),
            bullet("Produced by excessive cell division"),
            bullet("May be harmless or dangerous"),

            const SizedBox(height: 20),

            const Text(
              "Benign Tumours",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Benign tumours remain localized and do not spread to other parts of the body.",
            ),

            bullet("Usually slow growing"),
            bullet("Remain in one location"),
            bullet("Do not invade nearby tissues"),

            const SizedBox(height: 20),

            const Text(
              "Malignant Tumours",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Malignant tumours are cancerous tumours that invade surrounding tissues and may spread throughout the body.",
            ),

            bullet("Cancerous"),
            bullet("Invade nearby tissues"),
            bullet("Can spread to distant organs"),

            const SizedBox(height: 20),

            const Text(
              "Metastasis",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Metastasis is the process by which cancer cells spread from one part of the body to another.",
            ),

            bullet("Cancer cells detach"),
            bullet("Travel through blood or lymph"),
            bullet("Establish new tumours elsewhere"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: Metastasis is the spread of cancer cells to new locations.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Proto-Oncogenes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Proto-oncogenes are normal genes that help regulate cell growth and cell division.",
            ),

            bodyText(
              "Under normal conditions they are beneficial and necessary for life.",
            ),

            bullet("Normal genes"),
            bullet("Promote controlled growth"),
            bullet("Promote controlled division"),

            bodyText(
              "You can think of proto-oncogenes as the accelerator pedal of a car. They help cells move forward when growth is needed.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Proto-oncogenes are normal growth-promoting genes.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Oncogenes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "When a proto-oncogene becomes mutated, it may become an oncogene.",
            ),

            bodyText(
              "An oncogene causes excessive cell growth and division.",
            ),

            bullet("Mutated proto-oncogene"),
            bullet("Overstimulates cell division"),
            bullet("Can contribute to cancer"),

            bodyText(
              "Using the car analogy, an oncogene is like an accelerator pedal stuck to the floor.",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Proto-oncogene → Mutation → Oncogene",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Tumour Suppressor Genes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Tumour suppressor genes normally prevent uncontrolled cell division.",
            ),

            bodyText(
              "They act as the cell's braking system.",
            ),

            bullet("Slow cell division"),
            bullet("Repair damaged DNA"),
            bullet("Trigger apoptosis when necessary"),
            bullet("Prevent cancer formation"),

            bodyText(
              "Examples include genes such as p53, which helps prevent damaged cells from dividing.",
            ),

            bodyText(
              "When tumour suppressor genes become mutated, the brakes stop working.",
            ),

            bullet("Growth control lost"),
            bullet("Damaged cells survive"),
            bullet("Cancer risk increases"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Memory Trick: Oncogenes are the accelerator. Tumour suppressor genes are the brakes.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "How Cancer Develops",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Cancer usually develops through the accumulation of multiple mutations over time.",
            ),

            bodyText(
              "A typical sequence may be:",
            ),

            bullet("DNA mutation occurs"),
            bullet("Proto-oncogene becomes oncogene"),
            bullet("Tumour suppressor gene becomes damaged"),
            bullet("Cell cycle control fails"),
            bullet("Abnormal division occurs"),
            bullet("Tumour develops"),
            bullet("Cancer may spread through metastasis"),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Big Picture: Cancer develops when mutations activate growth-promoting genes and/or disable growth-inhibiting genes.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Gene Expression Calculations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "Gene expression calculations are common in tests and exams. Fortunately, they follow a few simple rules.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Calculation 1: DNA To mRNA",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "During transcription, mRNA is built using the DNA template strand.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "DNA Template: A T G C C A T",
            ),

            bodyText(
              "mRNA: U A C G G U A",
            ),

            bodyText(
              "Remember:",
            ),

            bullet("A → U"),
            bullet("T → A"),
            bullet("C → G"),
            bullet("G → C"),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Exam Tip: RNA uses U instead of T.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Calculation 2: Codons",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "A codon consists of three nucleotides.",
            ),

            bodyText(
              "To calculate the number of codons:",
            ),

            bodyText(
              "Number of Codons = Number of Nucleotides ÷ 3",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "300 nucleotides ÷ 3 = 100 codons",
            ),

            const SizedBox(height: 30),

            const Text(
              "Calculation 3: Amino Acids",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "One codon usually codes for one amino acid.",
            ),

            bodyText(
              "However, one codon will be a stop codon.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "100 codons",
            ),

            bodyText(
              "1 stop codon",
            ),

            bodyText(
              "Protein contains 99 amino acids",
            ),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Number of Amino Acids = Number of Codons − 1 Stop Codon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Calculation 4: Anticodons",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            bodyText(
              "An anticodon is complementary to an mRNA codon.",
            ),

            bodyText(
              "Example:",
            ),

            bodyText(
              "mRNA Codon: AUG",
            ),

            bodyText(
              "tRNA Anticodon: UAC",
            ),

            bodyText(
              "Another Example:",
            ),

            bodyText(
              "mRNA Codon: GCU",
            ),

            bodyText(
              "tRNA Anticodon: CGA",
            ),

            const SizedBox(height: 40),

            const Text(
              "Exam Essentials",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("• Gene expression produces proteins."),
                    Text("• Central Dogma = DNA → RNA → Protein."),
                    Text("• Transcription occurs in the nucleus."),
                    Text("• Translation occurs on ribosomes."),
                    Text("• RNA Polymerase builds RNA."),
                    Text("• Promoter is where RNA Polymerase binds."),
                    Text("• Terminator stops transcription."),
                    Text("• Introns are removed."),
                    Text("• Exons remain."),
                    Text("• Splicing removes introns."),
                    Text("• 5' Cap protects mRNA."),
                    Text("• Poly-A Tail stabilises mRNA."),
                    Text("• Codons contain three nucleotides."),
                    Text("• AUG is the start codon."),
                    Text("• UAA, UAG and UGA are stop codons."),
                    Text("• tRNA carries amino acids."),
                    Text("• Anticodons pair with codons."),
                    Text("• Aminoacyl-tRNA Synthetase loads amino acids onto tRNA."),
                    Text("• Ribosomes contain A, P and E sites."),
                    Text("• Wobble occurs at the third codon position."),
                    Text("• Mutations permanently alter DNA."),
                    Text("• Silent, Missense and Nonsense are point mutations."),
                    Text("• Insertions and deletions may cause frameshifts."),
                    Text("• Proto-oncogenes promote normal growth."),
                    Text("• Oncogenes promote uncontrolled growth."),
                    Text("• Tumour suppressor genes inhibit growth."),
                    Text("• Cancer results from accumulated mutations."),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Practice Questions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Define gene expression.\n\n"
                      "2. State the Central Dogma.\n\n"
                      "3. What is transcription?\n\n"
                      "4. What is translation?\n\n"
                      "5. What is the function of RNA Polymerase?\n\n"
                      "6. Distinguish between a promoter and a terminator.\n\n"
                      "7. What are introns?\n\n"
                      "8. What are exons?\n\n"
                      "9. What is RNA splicing?\n\n"
                      "10. What is the function of the 5' Cap?\n\n"
                      "11. What is the function of the Poly-A Tail?\n\n"
                      "12. What is a codon?\n\n"
                      "13. What is an anticodon?\n\n"
                      "14. What is the function of tRNA?\n\n"
                      "15. What is the role of Aminoacyl-tRNA Synthetase?\n\n"
                      "16. Name the three ribosomal sites.\n\n"
                      "17. Explain wobble.\n\n"
                      "18. Define mutation.\n\n"
                      "19. Distinguish between silent, missense and nonsense mutations.\n\n"
                      "20. What is a frameshift mutation?\n\n"
                      "21. Define tumour.\n\n"
                      "22. Distinguish between benign and malignant tumours.\n\n"
                      "23. What is metastasis?\n\n"
                      "24. What is a proto-oncogene?\n\n"
                      "25. What is an oncogene?\n\n"
                      "26. What is a tumour suppressor gene?\n\n"
                      "27. Convert DNA template ATGCCA into mRNA.\n\n"
                      "28. Determine the anticodon for AUG.\n\n"
                      "29. How many codons are present in 300 nucleotides?\n\n"
                      "30. How many amino acids are produced from 90 codons?",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Suggested Answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Gene expression is the process by which DNA information is used to produce proteins.\n\n"
                      "2. DNA → RNA → Protein.\n\n"
                      "3. Transcription is the synthesis of RNA from a DNA template.\n\n"
                      "4. Translation is the synthesis of proteins from mRNA.\n\n"
                      "5. RNA Polymerase synthesizes RNA.\n\n"
                      "6. A promoter starts transcription while a terminator ends transcription.\n\n"
                      "7. Introns are non-coding regions removed from pre-mRNA.\n\n"
                      "8. Exons are coding regions that remain in mature mRNA.\n\n"
                      "9. RNA splicing removes introns and joins exons.\n\n"
                      "10. The 5' Cap protects mRNA and assists ribosome binding.\n\n"
                      "11. The Poly-A Tail stabilizes mRNA and protects it from degradation.\n\n"
                      "12. A codon is a sequence of three mRNA nucleotides.\n\n"
                      "13. An anticodon is a complementary three-base sequence on tRNA.\n\n"
                      "14. tRNA transports amino acids to the ribosome.\n\n"
                      "15. Aminoacyl-tRNA Synthetase attaches amino acids to tRNA.\n\n"
                      "16. A site, P site and E site.\n\n"
                      "17. Wobble is flexibility in pairing at the third codon position.\n\n"
                      "18. A mutation is a permanent change in DNA sequence.\n\n"
                      "19. Silent = same amino acid, Missense = different amino acid, Nonsense = stop codon.\n\n"
                      "20. A frameshift mutation changes the reading frame of codons.\n\n"
                      "21. A tumour is a mass of abnormally dividing cells.\n\n"
                      "22. Benign tumours remain localized while malignant tumours spread and invade tissues.\n\n"
                      "23. Metastasis is the spread of cancer cells to new locations.\n\n"
                      "24. A proto-oncogene is a normal growth-promoting gene.\n\n"
                      "25. An oncogene is a mutated proto-oncogene that promotes excessive cell division.\n\n"
                      "26. Tumour suppressor genes inhibit uncontrolled cell growth.\n\n"
                      "27. DNA template ATGCCA → mRNA UACGGU.\n\n"
                      "28. AUG anticodon = UAC.\n\n"
                      "29. 300 ÷ 3 = 100 codons.\n\n"
                      "30. 90 codons − 1 stop codon = 89 amino acids.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Congratulations! You have completed Gene Expression and Mutation. You should now understand how genetic information flows from DNA to RNA to proteins, how transcription and translation work, how mutations affect genes, and how oncogenes and tumour suppressor genes contribute to cancer development. This topic connects DNA structure, replication, protein synthesis and cell division into one complete biological system.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}