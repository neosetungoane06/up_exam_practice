import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/recording_controller.dart' show formatRecordingTime;

/// One stretch of a lecture where the speaker was talking. A new section
/// starts every time the lecturer went quiet and then carried on.
class TranscriptSectionView {
  final Duration start;
  final Duration end;
  final String text;

  const TranscriptSectionView({
    required this.start,
    required this.end,
    required this.text,
  });
}

/// Shows what Kepler heard in a recording, section by section, with the
/// quiet stretches in between.
class RecordingTranscriptScreen extends StatelessWidget {
  final List<TranscriptSectionView> sections;

  const RecordingTranscriptScreen({super.key, required this.sections});

  static const _indigo = Color(0xff4F46E5);

  static Future<void> open(
      BuildContext context,
      List<TranscriptSectionView> sections,
      ) {
    return Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => RecordingTranscriptScreen(sections: sections),
      ),
    );
  }

  String _everything() {
    final b = StringBuffer();
    for (var i = 0; i < sections.length; i++) {
      final s = sections[i];
      b.writeln(
        'Section ${i + 1} '
            '(${formatRecordingTime(s.start)} - ${formatRecordingTime(s.end)})',
      );
      b.writeln(s.text);
      b.writeln();
    }
    return b.toString().trim();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final background =
    isDark ? const Color(0xFF121212) : const Color(0xFFF7F9FC);
    final cardColor = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textColor = isDark ? Colors.white : Colors.black;
    final subtitleColor = isDark ? Colors.grey.shade400 : Colors.grey.shade600;

    final items = <Widget>[];
    for (var i = 0; i < sections.length; i++) {
      final s = sections[i];

      if (i > 0) {
        final quiet = s.start - sections[i - 1].end;
        if (quiet.inSeconds >= 1) {
          items.add(_quietPill(quiet, subtitleColor));
        }
      }

      items.add(
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(blurRadius: 10, color: Color(0x0F000000)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: _indigo.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Section ${i + 1}',
                      style: const TextStyle(
                        color: _indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${formatRecordingTime(s.start)} - '
                        '${formatRecordingTime(s.end)}',
                    style: TextStyle(color: subtitleColor, fontSize: 12.5),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SelectableText(
                s.text,
                style: TextStyle(color: textColor, fontSize: 15, height: 1.5),
              ),
            ],
          ),
        ),
      );
      items.add(const SizedBox(height: 10));
    }

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          'Lecture transcript',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            tooltip: 'Copy all',
            icon: const Icon(Icons.copy_rounded),
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: _everything()));
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Transcript copied.')),
              );
            },
          ),
        ],
      ),
      body: sections.isEmpty
          ? Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(
            'No speech was picked up in this recording.',
            textAlign: TextAlign.center,
            style: TextStyle(color: subtitleColor),
          ),
        ),
      )
          : ListView(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
        children: items,
      ),
    );
  }

  Widget _quietPill(Duration quiet, Color color) {
    final label = quiet.inSeconds >= 60
        ? '${quiet.inMinutes} min ${quiet.inSeconds.remainder(60)}s quiet'
        : '${quiet.inSeconds}s quiet';
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(child: Divider(color: color.withValues(alpha: 0.3))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.volume_off_rounded, size: 14, color: color),
                const SizedBox(width: 6),
                Text(label, style: TextStyle(color: color, fontSize: 12)),
              ],
            ),
          ),
          Expanded(child: Divider(color: color.withValues(alpha: 0.3))),
        ],
      ),
    );
  }
}