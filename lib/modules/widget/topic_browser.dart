import 'package:flutter/material.dart';
class Subtopic {

  final String title;
  final String description;
  final Widget screen;

  const Subtopic({
    required this.title,
    required this.description,
    required this.screen,
  });

}
class TopicBrowser extends StatefulWidget {

  final String title;
  final String description;
  final List<Subtopic> subtopics;

  const TopicBrowser({
    super.key,
    required this.title,
    required this.description,
    required this.subtopics,
  });

  @override
  State<TopicBrowser> createState() => _TopicBrowserState();
}
class _TopicBrowserState extends State<TopicBrowser> {

  final TextEditingController searchController = TextEditingController();

  String search = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              widget.description,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color(0xff667085),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  search = value.toLowerCase();
                });
              },
              decoration: InputDecoration(
                hintText: "Search notes or concepts...",
                hintStyle: const TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "${widget.subtopics.length} Subtopics",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView(
                children: widget.subtopics
                    .where((topic) =>
                topic.title.toLowerCase().contains(search) ||
                    topic.description.toLowerCase().contains(search))
                    .map((topic) => _buildCard(topic))
                    .toList(),
              ),
            ),

          ],
        ),
      ),

    );
  }
  Widget _buildCard(Subtopic topic) {

    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(

        contentPadding: const EdgeInsets.all(18),

        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple.shade100,
          child: const Icon(
            Icons.menu_book,
            color: Colors.deepPurple,
          ),
        ),

        title: Text(
          topic.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            topic.description,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey.shade300
                  : const Color(0xff667085),
            ),
          ),
        ),

        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),

        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => topic.screen,
            ),
          );

        },

      ),
    );

  }
}