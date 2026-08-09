import 'package:flutter/material.dart';

class AllUniversitiesScreen extends StatefulWidget {
  const AllUniversitiesScreen({super.key});

  @override
  State<AllUniversitiesScreen> createState() =>
      _AllUniversitiesScreenState();
}

class _AllUniversitiesScreenState
    extends State<AllUniversitiesScreen> {

  final TextEditingController searchController =
  TextEditingController();

  String search = "";

  final List<Map<String,String>> universities = [

  {"name":"University of Pretoria","abbr":"UP"},
{"name":"University of Johannesburg","abbr":"UJ"},
{"name":"University of Cape Town","abbr":"UCT"},
{"name":"University of the Witwatersrand","abbr":"Wits"},
{"name":"University of South Africa","abbr":"UNISA"},
{"name":"Tshwane University of Technology","abbr":"TUT"},
{"name":"North-West University","abbr":"NWU"},
{"name":"University of Limpopo","abbr":"UL"},
{"name":"University of Venda","abbr":"UNIVEN"},
{"name":"Rhodes University","abbr":"RU"},
{"name":"Nelson Mandela University","abbr":"NMU"},
{"name":"University of the Free State","abbr":"UFS"},
{"name":"University of Zululand","abbr":"UNIZULU"},
{"name":"University of Fort Hare","abbr":"UFH"},
{"name":"University of Mpumalanga","abbr":"UMP"},
{"name":"Sol Plaatje University","abbr":"SPU"},
{"name":"Sefako Makgatho Health Sciences University","abbr":"SMU"},
{"name":"Mangosuthu University of Technology","abbr":"MUT"},
{"name":"Cape Peninsula University of Technology","abbr":"CPUT"},
{"name":"Durban University of Technology","abbr":"DUT"},
{"name":"Walter Sisulu University","abbr":"WSU"},
{"name":"University of KwaZulu-Natal","abbr":"UKZN"},
{"name":"Stellenbosch University","abbr":"SU"},
{"name":"University of the Western Cape","abbr":"UWC"},
{"name":"Vaal University of Technology","abbr":"VUT"},
{"name":"Central University of Technology","abbr":"CUT"},
  ];

  @override
  Widget build(BuildContext context) {

    final filtered = universities.where((university){

      final query = search.toLowerCase().replaceAll(" ", "");

      return university["name"]!
          .toLowerCase()
          .contains(search.toLowerCase())

          ||

          university["abbr"]!
              .toLowerCase()
              .replaceAll(" ", "")
              .contains(query);

    }).toList();

    return Scaffold(

      backgroundColor: const Color(0xFFF7F9FC),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9FC),
        elevation: 0,
        title: const Text("All Universities"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(

              controller: searchController,

              decoration: InputDecoration(

                hintText: "Search university...",

                prefixIcon: const Icon(Icons.search),

                filled: true,

                fillColor: Colors.white,

                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(16),

                  borderSide: BorderSide.none,

                ),

              ),

              onChanged: (value){

                setState(() {

                  search = value;

                });

              },

            ),

            const SizedBox(height:20),

            Expanded(

              child: ListView.builder(

                itemCount: filtered.length,

                itemBuilder: (context,index){

                  final university = filtered[index];

                  return Card(

                    margin: const EdgeInsets.only(bottom:12),

                    child: ListTile(

                      leading: const Icon(Icons.school),

                      title: Text(
                        university["name"]!,
                      ),

                      subtitle: Text(
                        university["abbr"]!,
                      ),

                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size:18,
                      ),

                      onTap: () {

                        if(university["abbr"]=="UP"){

                          Navigator.pop(
                            context,
                            university["name"],
                          );

                        }else{

                          ScaffoldMessenger.of(context)
                              .showSnackBar(

                            const SnackBar(

                              content: Text(
                                "Content for this university is coming soon.",
                              ),

                            ),

                          );

                        }

                      },

                    ),

                  );

                },

              ),

            ),

          ],

        ),

      ),

    );

  }

}