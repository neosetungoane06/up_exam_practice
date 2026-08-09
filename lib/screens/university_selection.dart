import 'package:flutter/material.dart';
import 'all_universities_screen.dart';
import 'module_selection_screen.dart';

class UniversitySelectionScreen extends StatefulWidget {
  const UniversitySelectionScreen({super.key});

  @override
  State<UniversitySelectionScreen> createState() =>
      _UniversitySelectionScreenState();
}

class _UniversitySelectionScreenState
    extends State<UniversitySelectionScreen> {

final TextEditingController _searchController =
TextEditingController();

String searchText = "";
String? selectedUniversity;

final List<Map<String, String>> popularUniversities = [

{
"name": "University of Pretoria",
"abbr": "UP",
},

{
"name": "University of Johannesburg",
"abbr": "UJ",
},

{
"name":
"University of the Witwatersrand",
"abbr": "Wits",
},

{
"name": "University of Cape Town",
"abbr": "UCT",
},

];

@override
Widget build(BuildContext context) {

final filtered =
popularUniversities.where((university) {

final query = searchText.toLowerCase();

return university["name"]!
.toLowerCase()
.contains(query) ||

university["abbr"]!
.toLowerCase()
.contains(query);

}).toList();

return Scaffold(

backgroundColor: const Color(0xFFF7F9FC),

appBar: AppBar(
backgroundColor: const Color(0xFFF7F9FC),
elevation: 0,
centerTitle: true,
title: const Text(
"Choose Your University",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
),
),
),

body: Padding(
padding: const EdgeInsets.all(22),

child: Column(

crossAxisAlignment:
CrossAxisAlignment.start,

children: [

const Text(
"Find your university to personalise your learning experience.",
style: TextStyle(
fontSize: 16,
color: Color(0xFF64748B),
height: 1.5,
),
),

const SizedBox(height: 25),

TextField(

controller: _searchController,

decoration: InputDecoration(

hintText:
"Search university...",

prefixIcon:
const Icon(Icons.search),

filled: true,

fillColor: Colors.white,

border: OutlineInputBorder(

borderRadius:
BorderRadius.circular(16),

borderSide:
BorderSide.none,

),

),

onChanged: (value) {

setState(() {

searchText = value;

});

},

),

const SizedBox(height: 30),

const Text(

"Popular Universities",

style: TextStyle(

fontSize: 20,

fontWeight: FontWeight.bold,

),

),

const SizedBox(height: 15),

Expanded(

child: ListView(

children: [

...filtered.map((university) {

final selected =
selectedUniversity ==
university["name"];

return GestureDetector(

onTap: () {

setState(() {

selectedUniversity =
university["name"];

});

},

child: Container(

margin:
const EdgeInsets.only(
bottom: 14),

padding:
const EdgeInsets.all(18),

decoration:
BoxDecoration(

color: selected
? const Color(
0xFFEAF2FF)
: Colors.white,

borderRadius:
BorderRadius.circular(
18),

border: Border.all(

color: selected
? const Color(
0xFF2563EB)
: Colors.grey
.shade300,

width: 2,

),

),

child: Row(

children: [

Expanded(

child: Text(

"${university["name"]} (${university["abbr"]})",

style:
const TextStyle(

fontSize: 17,

fontWeight:
FontWeight
.w600,

),

),

),

if (selected)

const Icon(

Icons.check_circle,

color: Colors.blue,

),

],

),

),

);

}),

ListTile(

title: const Text(
"View All Universities",
style: TextStyle(
fontWeight:
FontWeight.bold,
),
),

trailing: const Icon(
Icons.arrow_forward_ios),

  onTap: () async {

    final selected = await Navigator.push<String>(

      context,

      MaterialPageRoute(

        builder: (_) =>
        const AllUniversitiesScreen(),

      ),

    );

    if (selected != null) {

      setState(() {

        selectedUniversity = selected;

      });

    }

  },

),
  const SizedBox(height: 25),

  if (selectedUniversity != null)

    SizedBox(

      width: double.infinity,

      height: 58,

      child: ElevatedButton(

        style: ElevatedButton.styleFrom(

          backgroundColor:
          const Color(0xFF2563EB),

          shape: RoundedRectangleBorder(

            borderRadius:
            BorderRadius.circular(16),

          ),

        ),

          onPressed: () {

            if (selectedUniversity == "University of Pretoria") {

              Navigator.push(

                context,

                MaterialPageRoute(

                  builder: (_) => ModuleSelectionScreen(

                    universityName: selectedUniversity!,

                  ),

                ),

              );

            } else {

              ScaffoldMessenger.of(context).showSnackBar(

                const SnackBar(

                  content: Text(
                    "Content for this university is coming soon.",
                  ),

                ),

              );

            }

          },


        child: const Text(

          "Continue →",

          style: TextStyle(

            fontSize: 18,

            fontWeight:
            FontWeight.bold,

            color: Colors.white,

          ),

        ),

      ),

    ),

],

),

),

],

),

),

);

}

}