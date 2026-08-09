import 'package:flutter/material.dart';
import '../../widgets/notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

const String topicTitle = "Factors Affecting Enzyme Activity";

const List<String> notes = [

  "### Factors Affecting Enzyme Activity",

  "Enzymes do not always work at the same speed. Their activity changes depending on the conditions surrounding them. Some conditions make enzymes work faster, while others slow them down or even stop them completely.",

  "Understanding these factors is important because every cell in the human body depends on enzymes working under the correct conditions.",

  "Four major factors affect the rate of enzyme reactions:",

  "• Temperature",
  "• pH",
  "• Substrate concentration",
  "• Enzyme concentration",

  "In addition, enzyme activity can also be influenced by inhibitors that reduce enzyme function.",

  "",
  "### Temperature",

  "[IMAGE]",

  "Temperature is one of the most important factors affecting enzyme activity because it influences the movement of molecules.",

  "When temperature increases, enzyme molecules and substrate molecules move faster. Faster movement leads to more frequent collisions between enzymes and substrates, increasing the rate of enzyme-substrate complex formation.",

  "However, this only happens up to a certain point called the optimum temperature.",

  "",
  "### Optimum Temperature",

  "The optimum temperature is the temperature at which an enzyme works at its maximum rate.",

  "For most human enzymes, the optimum temperature is approximately **37°C**, which is normal body temperature.",

  "Below the optimum temperature:",

  "• Molecules move slowly.",
  "• Fewer enzyme-substrate collisions occur.",
  "• The reaction rate decreases.",

  "Above the optimum temperature:",

  "• The enzyme begins to lose its three-dimensional shape.",
  "• The active site changes shape.",
  "• The substrate can no longer bind properly.",
  "• The enzyme becomes denatured.",

  "",
  "### What is Denaturation?",

  "Denaturation is the permanent alteration of an enzyme's three-dimensional structure due to extreme conditions such as high temperature or extreme pH.",

  "Once an enzyme is denatured:",

  "• Its active site changes shape.",
  "• The substrate no longer fits.",
  "• The enzyme loses its biological function.",

  "For most enzymes, denaturation is irreversible.",

  "",
  "### Example",

  "Imagine placing an egg into boiling water.",

  "At first the egg is transparent because its proteins have their normal shape.",

  "After heating, the proteins permanently change shape and the egg turns white.",

  "The proteins cannot return to their original form.",

  "Enzymes behave in a very similar way when exposed to excessively high temperatures.",

  "",
  "### Understanding the Temperature Graph",

  "The temperature graph shows three important stages.",

  "1. Low temperatures",

  "• Low kinetic energy.",
  "• Slow molecular movement.",
  "• Few successful collisions.",
  "• Low reaction rate.",

  "2. Optimum temperature",

  "• Maximum enzyme activity.",
  "• Highest reaction rate.",
  "• Active site has the correct shape.",
  "• Most successful collisions occur.",

  "3. High temperatures",

  "• Enzyme begins to denature.",
  "• Active site changes shape.",
  "• Fewer enzyme-substrate complexes form.",
  "• Reaction rate rapidly decreases.",

  "",
  "### Everyday Example",

  "A refrigerator slows down enzyme activity inside food.",

  "This is why food lasts much longer inside a fridge than outside.",

  "The enzymes are still functional, but they work much more slowly because molecules have less kinetic energy.",

  "",
  "### Memory Trick",

  "Think of temperature like people entering a supermarket.",

  "• Too cold → everyone walks slowly.",
  "• Just right → shopping happens efficiently.",
  "• Too hot → the supermarket catches fire and closes.",

  "Likewise:",

  "• Low temperature = slow enzyme activity.",
  "• Optimum temperature = maximum activity.",
  "• High temperature = denaturation.",

  "",
  "### Exam Tips",

  "Students often lose marks because they say:",

  "'High temperature kills the enzyme.'",

  "This is incorrect.",

  "The correct statement is:",

  "'High temperature denatures the enzyme by changing the shape of its active site.'",

  "",
  "### Quick Summary",

  "• Temperature affects enzyme activity by changing molecular movement.",
  "• Activity increases as temperature increases until the optimum temperature is reached.",
  "• Human enzymes usually function best around 37°C.",
  "• Temperatures above the optimum cause denaturation.",
  "• Denaturation changes the active site's shape, preventing substrate binding.",

  "",
  "### Connect the Dots",

  "Temperature is not the only factor affecting enzyme activity. The acidity or alkalinity of the environment is equally important.",

  "The next factor is **pH**."

      "### pH",

  "[IMAGE]",

  "Another major factor that affects enzyme activity is **pH**. The pH of a solution measures how acidic or alkaline (basic) that solution is. Because enzymes are proteins with very specific three-dimensional structures, changes in pH can alter their shape and affect how well they function.",

  "Each enzyme has an **optimum pH**, which is the pH at which it catalyses reactions at its fastest rate.",

  "Different enzymes work best in different parts of the body because each part has a different pH.",

  "",
  "### Examples of Optimum pH",

  "• Pepsin (found in the stomach) works best at a pH of about **2**, which is highly acidic.",

  "• Salivary amylase (found in saliva) works best at a pH close to **7**, which is neutral.",

  "• Trypsin (found in the small intestine) works best at a pH of about **8**, which is slightly alkaline.",

  "",
  "### Why Does pH Affect Enzymes?",

  "The active site of an enzyme contains amino acids that carry electrical charges.",

  "When the pH changes:",

  "• The charges on these amino acids may change.",
  "• Chemical bonds inside the enzyme can weaken or break.",
  "• The three-dimensional shape of the enzyme changes.",
  "• The active site may no longer match the substrate.",

  "As a result, fewer enzyme-substrate complexes are formed and the reaction rate decreases.",

  "",
  "### Extreme pH",

  "If the pH becomes too acidic or too alkaline, the enzyme may become **denatured**.",

  "This means:",

  "• The active site permanently changes shape.",
  "• The substrate cannot bind.",
  "• The enzyme loses its catalytic ability.",

  "",
  "### Understanding the pH Graph",

  "The pH graph normally forms a bell-shaped curve.",

  "On the graph:",

  "• At very low pH, enzyme activity is low because the enzyme is damaged by excess hydrogen ions.",

  "• As the pH approaches the optimum, activity increases rapidly because the active site has the correct shape.",

  "• At the optimum pH, the reaction reaches its maximum rate.",

  "• Beyond the optimum pH, enzyme activity decreases because the enzyme begins to lose its proper shape.",

  "",
  "### Everyday Example",

  "Think about stomach enzymes.",

  "Pepsin is adapted to work inside the stomach, where hydrochloric acid creates a pH of about 2.",

  "If pepsin were placed inside the small intestine, where the pH is around 8, it would barely function because the environment is no longer suitable.",

  "",
  "### Memory Trick",

  "Different enzymes have different favourite pH environments.",

  "• Stomach enzymes like acidic conditions.",
  "• Mouth enzymes like neutral conditions.",
  "• Intestinal enzymes like alkaline conditions.",

  "",
  "### Substrate Concentration",

  "[IMAGE]",

  "The **substrate concentration** refers to the amount of substrate available for enzymes to act on.",

  "At low substrate concentrations:",

  "• Few substrate molecules are available.",
  "• Many enzyme active sites remain empty.",
  "• The reaction rate is slow.",

  "As substrate concentration increases:",

  "• More substrate molecules collide with enzymes.",
  "• More enzyme-substrate complexes form.",
  "• The reaction rate increases rapidly.",

  "",
  "### Enzyme Saturation",

  "Eventually, a point is reached where **every active site is occupied by a substrate molecule**.",

  "At this point:",

  "• The enzyme is said to be **saturated**.",
  "• The reaction has reached its **maximum rate (Vmax)**.",
  "• Adding more substrate will **NOT** increase the reaction rate because there are no free active sites available.",

  "",
  "### Understanding the Substrate Concentration Graph",

  "The graph shows two important phases.",

  "1. Rising Phase",

  "• More substrate molecules become available.",
  "• More successful collisions occur.",
  "• Reaction rate increases rapidly.",

  "2. Plateau Phase",

  "• All enzyme active sites are occupied.",
  "• The enzyme becomes saturated.",
  "• The reaction rate remains constant even if more substrate is added.",

  "",
  "### Everyday Example",

  "Imagine a supermarket with **10 cashiers**.",

  "When only a few customers arrive, many cashiers are standing idle.",

  "As more customers enter the store, more cashiers become busy and the checkout process speeds up.",

  "Eventually all 10 cashiers become occupied.",

  "Adding another 100 customers will not make checkout any faster because every cashier is already busy.",

  "The only way to increase the speed now would be to add **more cashiers (enzymes)**.",

  "",
  "### Exam Tip",

  "Students often write:",

  "'Increasing substrate concentration always increases the reaction rate.'",

  "This is **incorrect**.",

  "The correct statement is:",

  "'Increasing substrate concentration increases the reaction rate only until all enzyme active sites become saturated.'",

  "",
  "### Quick Summary",

  "• Every enzyme has an optimum pH.",
  "• Extreme pH may denature enzymes.",
  "• Increasing substrate concentration increases reaction rate initially.",
  "• Once enzymes become saturated, the reaction reaches its maximum rate.",
  "• Beyond saturation, adding more substrate has no effect on reaction rate.",

  "",
  "### Connect the Dots",

  "So far we have seen how temperature, pH and substrate concentration influence enzyme activity.",

  "The final major factor is **enzyme concentration**, which determines how many active sites are available for the reaction."
      "### Enzyme Concentration",

  "[IMAGE]",

  "The **enzyme concentration** is the amount of enzyme molecules available to catalyse a reaction.",

  "Each enzyme molecule contains at least one **active site**, therefore increasing the number of enzymes also increases the number of available active sites.",

  "If enough substrate is present, increasing enzyme concentration causes the reaction rate to increase because more substrate molecules can be converted into products at the same time.",

  "",
  "### How Enzyme Concentration Affects Reaction Rate",

  "• Low enzyme concentration = few active sites available.",

  "• Fewer enzyme-substrate complexes form each second.",

  "• Reaction rate is relatively slow.",

  "• Increasing enzyme concentration provides more active sites.",

  "• More enzyme-substrate complexes form simultaneously.",

  "• Reaction rate increases.",

  "",
  "### When Does It Stop Increasing?",

  "The reaction rate only continues increasing while **sufficient substrate molecules are available**.",

  "If substrate becomes limited:",

  "• Some enzyme molecules remain unused.",

  "• Active sites become empty.",

  "• Adding more enzyme will no longer increase the reaction rate.",

  "",
  "### Understanding the Enzyme Concentration Graph",

  "The enzyme concentration graph is usually a straight line.",

  "This shows that:",

  "• Doubling the enzyme concentration approximately doubles the reaction rate.",

  "• Tripling the enzyme concentration approximately triples the reaction rate.",

  "• This relationship continues only while substrate remains abundant.",

  "",
  "### Everyday Example",

  "Imagine a pizza restaurant.",

  "Each chef represents an enzyme.",

  "The pizza dough represents the substrate.",

  "If only one chef is working, pizzas are made slowly.",

  "If four chefs are working and there is plenty of dough, pizzas are produced much faster.",

  "However, if the restaurant runs out of dough, adding ten more chefs will not help because there is no substrate left to convert into product.",

  "",
  "### Comparing Substrate and Enzyme Concentration",

  "Students often confuse these two factors.",

  "Remember:",

  "• Increasing **substrate concentration** gives enzymes more molecules to work on.",

  "• Increasing **enzyme concentration** provides more active sites where reactions can occur.",

  "",
  "### Denaturation",

  "Denaturation is the process by which an enzyme loses its natural three-dimensional shape and therefore loses its ability to function.",

  "Because enzyme activity depends on the precise shape of the active site, any change in this shape can prevent the substrate from binding.",

  "",
  "### Causes of Denaturation",

  "Common causes include:",

  "• Very high temperatures.",

  "• Extremely acidic conditions (very low pH).",

  "• Extremely alkaline conditions (very high pH).",

  "• Certain chemicals or heavy metals.",

  "",
  "### What Happens During Denaturation?",

  "1. Weak chemical bonds holding the protein together begin to break.",

  "2. The enzyme unfolds and loses its specific three-dimensional structure.",

  "3. The active site changes shape.",

  "4. The substrate can no longer fit properly.",

  "5. Enzyme activity decreases dramatically or stops completely.",

  "",
  "### Is Denaturation Always Permanent?",

  "Not always.",

  "Mild changes in temperature or pH may only reduce enzyme activity temporarily.",

  "However, severe heating or extreme pH usually causes **irreversible denaturation**, meaning the enzyme cannot regain its original shape.",

  "",
  "### Example",

  "When an egg is cooked, the egg white changes from transparent to solid white.",

  "This happens because the proteins have become **denatured**.",

  "They cannot return to their original structure after cooling.",

  "This is a real-life example of irreversible protein denaturation.",

  "",
  "### Memory Trick",

  "Think of an enzyme as a key.",

  "If the key becomes bent, it can no longer fit into the lock.",

  "In the same way, when the active site changes shape, the substrate can no longer fit.",

  "",
  "### Summary of Factors Affecting Enzyme Activity",

  "• Temperature affects the movement of molecules and can cause denaturation at high temperatures.",

  "• pH affects the charges and structure of the active site.",

  "• Substrate concentration increases reaction rate until enzymes become saturated.",

  "• Enzyme concentration increases reaction rate while sufficient substrate is available.",

  "• Denaturation permanently changes the enzyme's shape, preventing substrate binding.",

  "",
  "### Exam Tip",

  "Many exam questions present graphs showing enzyme activity.",

  "Always identify:",

  "• The optimum temperature or pH.",

  "• The point where saturation occurs.",

  "• Whether the graph represents substrate concentration or enzyme concentration.",

  "",
  "### Connect the Dots",

  "Now that you understand how enzymes work and the factors that influence their activity, the next question is:",

  "**How do cells control thousands of enzyme-controlled reactions so that they occur in the correct order?**",

  "This leads directly into the next subtopic: **Metabolic Pathways and Feedback Inhibition.**",
];

const List<String> images = [
  "assets/modules/mlb111/Enzyme_Temperature_Graph.png",
  "assets/modules/mlb111/Enzyme_pH_Graph.png",
  "assets/modules/mlb111/Substrate_Concentration_Graph.png",
  "assets/modules/mlb111/Enzyme_Concentration_Graph.png",
];

class FactorsAffectingEnzymeReactionScreen extends StatelessWidget {
  const FactorsAffectingEnzymeReactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesScreen(
      title: topicTitle,
      notes: notes,
      images: images,
      location: StudyLocation(
        module: "MLB111",
        topic: "Energy, Enzymes and Metabolism",
        subtopic: "Factors Affecting Enzyme Reaction",
      ),
    );
  }
}