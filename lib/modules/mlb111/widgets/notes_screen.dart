import 'package:flutter/material.dart';
import '../../../theme/clario_colors.dart';
import '../../../services/learning_state_service.dart';
import 'package:up_exam_practice/data/reading_progress.dart';
import '../../../models/study_location.dart';

class NotesScreen extends StatefulWidget {
  final String title;
  final List<String> notes;
  final List<String> images;

  final StudyLocation? location;

  const NotesScreen({
    super.key,
    required this.title,
    required this.notes,
    required this.images,
    this.location,
  });

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();

    if (widget.location != null) {

      debugPrint("===== SAVING STUDY SESSION =====");

      debugPrint(widget.location!.module);
      debugPrint(widget.location!.topic);
      debugPrint(widget.location!.subtopic);
      debugPrint(widget.title);

      LearningStateService.saveCurrentPosition(
        location: widget.location!,
        note: widget.title,
      );

      debugPrint("===== STUDY SESSION SAVED =====");

      ReadingProgress.load(
        module: widget.location!.module,
        topic: widget.location!.topic,
        subtopic: widget.location!.subtopic,
      )
          .then((offset) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.hasClients) {
            _scrollController.jumpTo(offset);
          }
        });
      });
    }

    _scrollController.addListener(() {
      if (widget.location != null) {
        ReadingProgress.save(
          module: widget.location!.module,
          topic: widget.location!.topic,
          subtopic: widget.location!.subtopic,
          offset: _scrollController.offset,
        );
      }
    });
  }

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: ClarioColors.background(context),

appBar: AppBar(
elevation: 0,
centerTitle: true,
backgroundColor: ClarioColors.card(context),
foregroundColor: ClarioColors.text(context),
title: Text(widget.title,
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
color: ClarioColors.text(context),
),
),
),

  body: ListView.builder(
    controller: _scrollController,
padding: const EdgeInsets.all(20),
itemCount: widget.notes.length,
itemBuilder: (context, index) {
final line = widget.notes[index];

if (index == 0) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

const Padding(
padding: EdgeInsets.only(bottom: 8),
child: Text(
"MLB111 • CELL BIOLOGY",
style: TextStyle(
color: Colors.deepPurple,
fontWeight: FontWeight.bold,
letterSpacing: 1.2,
),
),
),

Text(
widget.title,
style: TextStyle(
fontSize: 34,
fontWeight: FontWeight.bold,
color: ClarioColors.text(context),
),
),

const SizedBox(height: 20),

Text(
line,
style: TextStyle(
fontSize: 17,
height: 1.8,
color: ClarioColors.text(context),
),
),

const SizedBox(height: 24),
],
);
}

if (line.isEmpty) {
return const SizedBox(height: 16);
}

if (line.startsWith("### ")) {
return Padding(
padding: const EdgeInsets.only(top: 24, bottom: 10),
child: Text(
line.substring(4),
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: ClarioColors.text(context),
),
),
);
}

if (line.startsWith("EXAM TIP")) {
return Container(
margin: const EdgeInsets.symmetric(vertical: 16),
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
  color: Theme.of(context).brightness == Brightness.dark
      ? const Color(0xFF2E2412)
      : Colors.orange.shade50,
borderRadius: BorderRadius.circular(12),
),
child: Text(
line,
style: TextStyle(
fontWeight: FontWeight.bold,
color: ClarioColors.text(context),
),
),
);
}

if (line.startsWith("MEMORY TRICK")) {
return Container(
margin: const EdgeInsets.symmetric(vertical: 16),
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
  color: Theme.of(context).brightness == Brightness.dark
      ? const Color(0xFF1D3020)
      : Colors.green.shade50,
borderRadius: BorderRadius.circular(12),
),
child: Text(
line,
style: TextStyle(
fontWeight: FontWeight.bold,
color: ClarioColors.text(context),
),
),
);
}

if (line.startsWith("PRACTICE")) {
return Container(
margin: const EdgeInsets.symmetric(vertical: 16),
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
  color: Theme.of(context).brightness == Brightness.dark
      ? const Color(0xFF152A45)
      : Colors.blue.shade50,
borderRadius: BorderRadius.circular(12),
),
child: Text(
line,
style: TextStyle(
fontWeight: FontWeight.bold,
color: ClarioColors.text(context),
),
),
);
}
if (line == "[IMAGE]") {
  final imageNumber = widget.notes
      .sublist(0, index + 1)
      .where((e) => e == "[IMAGE]")
      .length - 1;

  if (imageNumber >= widget.images.length) {
    return const SizedBox.shrink();
  }

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
  widget.images[imageNumber],
            fit: BoxFit.contain,
          ),
        ),

        const SizedBox(height: 10),

        const Text(
          "Figure",
          style: TextStyle(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ),
  );
}

if (line.startsWith("•") ||
    RegExp(r'^\d+\.').hasMatch(line)) {
  return Padding(
    padding: const EdgeInsets.only(left: 12, bottom: 8),
    child: Text(
      line,
      style: TextStyle(
        fontSize: 17,
        height: 1.9,
        color: ClarioColors.text(context),
      ),
    ),
  );
}

return Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child: Text(
    line,
    style: TextStyle(
      fontSize: 16,
      height: 1.7,
      color: ClarioColors.text(context),
    ),
  ),
);
},
),
);
}
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}