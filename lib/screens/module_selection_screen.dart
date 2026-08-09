import 'package:flutter/material.dart';
import '../services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_gate.dart';

class ModuleSelectionScreen extends StatefulWidget {
  final String universityName;

  const ModuleSelectionScreen({
    super.key,
    required this.universityName,
  });

  @override
  State<ModuleSelectionScreen> createState() =>
      _ModuleSelectionScreenState();
}

class _ModuleSelectionScreenState
    extends State<ModuleSelectionScreen> {

final TextEditingController _searchController =
TextEditingController();

String search = "";

final List<Map<String, String>> modules = [

{
"code":"MLB111",
"display":"MLB 111",
"name":"Molecular and Cell Biology"
},

{
"code":"CMY117",
"display":"CMY 117",
"name":"General Chemistry"
},

{
"code":"CMY127",
"display":"CMY 127",
"name":"General Chemistry"
},

{
"code":"GTS161",
"display":"GTS 161",
"name":"Genetics"
},

{
"code":"MBY161",
"display":"MBY 161",
"name":"Microbiology"
},

{
"code":"PHY131",
"display":"PHY 131",
"name":"Physics for Bio Students"
},

{
"code":"WTW134",
"display":"WTW 134",
"name":"Mathematics"
},

{
"code":"ZEN161",
"display":"ZEN 161",
"name":"Animal Diversity"
},

{
"code":"BME120",
"display":"BME 120",
"name":"Biometry"
},

{
"code":"BOT161",
"display":"BOT 161",
"name":"Plants and Society"
},

{
"code":"AIM111",
"display":"AIM 111",
"name":"Academic Information Management"
},

{
"code":"AIM121",
"display":"AIM 121",
"name":"Academic Information Management"
},

{
"code":"LST110",
"display":"LST 110",
"name":"Language and Study Skills"
},

];

final List<Map<String,String>> selectedModules = [];
final FirestoreService firestoreService = FirestoreService();

@override
Widget build(BuildContext context) {

final filtered = modules.where((module){

final query =
search.toLowerCase().replaceAll(" ","");

return module["code"]!
.toLowerCase()
.replaceAll(" ","")
.contains(query)

||

module["display"]!
.toLowerCase()
.replaceAll(" ","")
.contains(query)

||

module["name"]!
.toLowerCase()
.contains(search.toLowerCase());

}).toList();

return Scaffold(

backgroundColor: const Color(0xFFF7F9FC),

appBar: AppBar(
backgroundColor: const Color(0xFFF7F9FC),
elevation: 0,
centerTitle: true,
title: const Text(
"Choose Modules",
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

Text(
widget.universityName,
style: const TextStyle(
color: Color(0xFF2563EB),
fontWeight: FontWeight.bold,
fontSize: 18,
),
),

const SizedBox(height:20),

TextField(

controller:_searchController,

decoration: InputDecoration(

hintText:"Search modules...",

prefixIcon:
const Icon(Icons.search),

filled:true,

fillColor: Colors.white,

border: OutlineInputBorder(

borderRadius:
BorderRadius.circular(16),

borderSide: BorderSide.none,

),

),

onChanged:(value){

setState((){

search=value;

});

},

),

const SizedBox(height:25),
  if (selectedModules.isNotEmpty) ...[

    const Text(
      "Selected Modules",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),

    const SizedBox(height:10),

    Wrap(
      spacing: 8,
      runSpacing: 8,
      children: selectedModules.map((module){

        return Chip(
          label: Text(module["display"]!),
          deleteIcon: const Icon(Icons.close,size:18),
          onDeleted: (){
            setState(() {
              selectedModules.remove(module);
            });
          },
        );

      }).toList(),
    ),

    const SizedBox(height:20),

  ],

  Expanded(

    child: ListView.builder(

      itemCount: filtered.length,

      itemBuilder:(context,index){

        final module = filtered[index];

        final selected =
        selectedModules.contains(module);

        return Card(

          margin:
          const EdgeInsets.only(bottom:12),

          elevation:0,

          color: selected
              ? const Color(0xFFEAF2FF)
              : Colors.white,

          shape: RoundedRectangleBorder(

            borderRadius:
            BorderRadius.circular(18),

            side: BorderSide(

              color: selected
                  ? const Color(0xFF2563EB)
                  : Colors.grey.shade300,

              width:2,

            ),

          ),

          child: ListTile(

            title: Text(
              module["display"]!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Text(
              module["name"]!,
            ),

            trailing: selected
                ? const Icon(
              Icons.check_circle,
              color: Colors.blue,
            )
                : null,

            onTap:(){

              setState((){

                if(selected){

                  selectedModules.remove(module);

                }else{

                  selectedModules.add(module);

                }

              });

            },

          ),

        );

      },

    ),

  ),

  if(selectedModules.isNotEmpty)

    SizedBox(

      width: double.infinity,

      height:58,

      child: ElevatedButton(

        style: ElevatedButton.styleFrom(

          backgroundColor:
          const Color(0xFF2563EB),

          shape: RoundedRectangleBorder(

            borderRadius:
            BorderRadius.circular(16),

          ),

        ),

        onPressed: () async {

          final uid = FirebaseAuth.instance.currentUser!.uid;

          await firestoreService.updateUser(
            uid: uid,
            university: widget.universityName,
            modules: selectedModules
                .map((e) => e["code"]!)
                .toList(),
          );

          if (!mounted) return;

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (_) => const AuthGate(),
            ),
                (route) => false,
          );
        },

        child: const Text(

          "Continue →",

          style: TextStyle(

            fontSize:18,

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

);

}

}