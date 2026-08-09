import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import '../../../theme/clario_colors.dart';
import '../../../services/learning_state_service.dart';
import '../../../data/reading_progress.dart';
import '../../../models/study_location.dart';

class MathNotesScreen extends StatefulWidget {
  final String title;
  final List<String> notes;
  final List<String> images;

  final StudyLocation? location;

  const MathNotesScreen({
    super.key,
    required this.title,
    required this.notes,
    required this.images,
    this.location,
  });

  @override
  State<MathNotesScreen> createState() => _MathNotesScreenState();
}

class _MathNotesScreenState extends State<MathNotesScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _saveAndRestoreLearningPosition();

    _scrollController.addListener(_saveReadingPosition);
  }

  Future<void> _saveAndRestoreLearningPosition() async {
    if (widget.location == null) return;

    await LearningStateService.saveCurrentPosition(
      location: widget.location!,
      note: widget.title,
    );

    final offset = await ReadingProgress.load(
      module: widget.location!.module,
      topic: widget.location!.topic,
      subtopic: widget.location!.subtopic,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;

      final maxScroll =
          _scrollController.position.maxScrollExtent;

      _scrollController.jumpTo(
        offset.clamp(0.0, maxScroll),
      );
    });
  }

  void _saveReadingPosition() {
    if (widget.location == null) return;

    ReadingProgress.save(
      module: widget.location!.module,
      topic: widget.location!.topic,
      subtopic: widget.location!.subtopic,
      offset: _scrollController.offset,
    );
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

        title: Text(
          widget.title,
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

          return _buildNoteLine(
            context,
            line,
            index,
          );
        },
      ),
    );
  }

  Widget _buildNoteLine(
      BuildContext context,
      String line,
      int index,
      ) {
    // EMPTY LINE
    if (line.isEmpty) {
      return const SizedBox(height: 16);
    }

    // FIRST NOTE LINE
    if (index == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),

            child: Text(
              "WTW134 • MATHEMATICS",
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

          _buildSmartText(
            context,
            line,
          ),

          const SizedBox(height: 24),
        ],
      );
    }

    // SECTION HEADING
    if (line.startsWith("### ")) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 10,
        ),

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

    // EXAM TIP
    if (line.startsWith("EXAM TIP")) {
      return _buildSpecialBox(
        context,
        line,
        Colors.orange,
      );
    }

    // MEMORY TRICK
    if (line.startsWith("MEMORY TRICK")) {
      return _buildSpecialBox(
        context,
        line,
        Colors.green,
      );
    }

    // PRACTICE
    if (line.startsWith("PRACTICE")) {
      return _buildSpecialBox(
        context,
        line,
        Colors.blue,
      );
    }

    // IMAGE
    if (line == "[IMAGE]") {
      final imageNumber = widget.notes
          .sublist(0, index + 1)
          .where((e) => e == "[IMAGE]")
          .length -
          1;

      if (imageNumber >= widget.images.length) {
        return const SizedBox.shrink();
      }

      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),

              child: Image.asset(
                widget.images[imageNumber],
                fit: BoxFit.contain,

                errorBuilder: (
                    context,
                    error,
                    stackTrace,
                    ) {
                  return Container(
                    padding: const EdgeInsets.all(20),

                    child: Text(
                      "Unable to load image.",

                      style: TextStyle(
                        color: Colors.red.shade700,
                      ),
                    ),
                  );
                },
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

    // BULLET POINTS AND NUMBERED LISTS
    if (line.startsWith("•") ||
        RegExp(r'^\d+\.').hasMatch(line)) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 12,
          bottom: 8,
        ),

        child: _buildSmartText(
          context,
          line,
          fontSize: 17,
          height: 1.9,
        ),
      );
    }

    // EVERYTHING ELSE
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),

      child: _buildSmartText(
        context,
        line,
        fontSize: 16,
        height: 1.7,
      ),
    );
  }

  // ============================================================
  // MATHEMATICAL TEXT RENDERING
  // ============================================================

  Widget _buildSmartText(
      BuildContext context,
      String text, {
        double fontSize = 16,
        double height = 1.7,
      }) {
    if (text.startsWith("MATH:")) {
      final latex = text.substring(5).trim();

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Math.tex(
          latex,

          mathStyle: MathStyle.display,

          textStyle: TextStyle(
            fontSize: fontSize + 2,
            color: ClarioColors.text(context),
          ),

          onErrorFallback: (error) {
            return Text(
              latex,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.red,
              ),
            );
          },
        ),
      );
    }

    return Text(
      text,

      style: TextStyle(
        fontSize: fontSize,
        height: height,
        color: ClarioColors.text(context),
      ),
    );
  }

  // ============================================================
  // SPECIAL BOXES
  // ============================================================

  Widget _buildSpecialBox(
      BuildContext context,
      String text,
      MaterialColor color,
      ) {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16,
      ),

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: isDark
            ? Color.lerp(
          const Color(0xFF121212),
          color,
          0.15,
        )
            : color.shade50,

        borderRadius: BorderRadius.circular(12),
      ),

      child: _buildSmartText(
        context,
        text,
        fontSize: 16,
        height: 1.6,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(
      _saveReadingPosition,
    );

    _scrollController.dispose();

    super.dispose();
  }
}