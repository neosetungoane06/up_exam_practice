import 'package:flutter/material.dart';
import 'subtopic_model.dart';
import 'package:flutter/rendering.dart';

class SubtopicListScreen extends StatefulWidget {
  final String title;
  final String description;
  final List<SubtopicItem> subtopics;

  const SubtopicListScreen({
    super.key,
    required this.title,
    required this.description,
    required this.subtopics,
  });

  @override
  State<SubtopicListScreen> createState() =>
      _SubtopicListScreenState();
}

class _SubtopicListScreenState extends State<SubtopicListScreen> {
  final ScrollController _scrollController = ScrollController();

  bool _showHeader = true;
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_showHeader) {
          setState(() {
            _showHeader = false;
          });
        }
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_showHeader) {
          setState(() {
            _showHeader = true;
          });
        }
      }
    });
  }

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

TextField(
decoration: InputDecoration(
hintText: "Search notes or concepts...",
prefixIcon: const Icon(Icons.search),
filled: true,
fillColor: Colors.grey.shade100,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(16),
borderSide: BorderSide.none,
),
),
),

const SizedBox(height: 20),

Expanded(
child: ListView.builder(

itemCount: widget.subtopics.length + 3,

itemBuilder: (context, index) {

if (index == 0) {
return Padding(
padding: const EdgeInsets.only(bottom: 20),
child: Text(
widget.description,
style: const TextStyle(
fontSize: 16,
color: Colors.grey,
),
),
);
}

if (index == 1) {
return Padding(
padding: const EdgeInsets.only(bottom: 20),
child: Text(
"${widget.subtopics.length} Subtopics",
style: const TextStyle(
fontSize: 15,
color: Colors.grey,
fontWeight: FontWeight.w600,
),
),
);
}

if (index == 2) {
return const Padding(
padding: EdgeInsets.only(bottom: 20),
child: Text(
"Subtopics",
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),
);
}

final subtopic = widget.subtopics[index - 3];

return Card(
elevation: 2,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(16),
),
margin: const EdgeInsets.only(bottom: 12),

child: ListTile(
title: Text(subtopic.title),
subtitle: Text(subtopic.description),

trailing: const Icon(
Icons.arrow_forward_ios,
color: Colors.orange,
),

onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (_) => subtopic.screen,
),
);
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