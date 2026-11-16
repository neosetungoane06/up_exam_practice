import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

import '../../models/study_tools_models.dart';
import '../../services/study_tools_service.dart';

/// Generate a deck of flashcards from the note's source and let the
/// student flip through them. Tapping a card flips front↔back.
class FlashcardsTab extends StatefulWidget {
  final String noteId;
  final String? storagePath;
  final String moduleTitle;
  final Color accent;

  const FlashcardsTab({
    super.key,
    required this.noteId,
    required this.storagePath,
    required this.moduleTitle,
    required this.accent,
  });

  @override
  State<FlashcardsTab> createState() => _FlashcardsTabState();
}

class _FlashcardsTabState extends State<FlashcardsTab> {
  final StudyToolsService _service = StudyToolsService();

  List<Flashcard> _cards = const [];
  int _index = 0;
  bool _showingBack = false;
  bool _loading = false;
  String? _error;

  bool get _available =>
      widget.storagePath != null && widget.storagePath!.isNotEmpty;

  Future<void> _generate() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final cards = await _service.generateFlashcards(
        noteId: widget.noteId,
        count: 12,
      );
      if (!mounted) return;
      setState(() {
        _cards = cards;
        _index = 0;
        _showingBack = false;
        _loading = false;
      });
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = e.message ?? "The flashcards couldn't be generated.";
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = "The flashcards couldn't be generated. Try again.";
      });
    }
  }

  void _next() {
    if (_cards.isEmpty) return;
    setState(() {
      _index = (_index + 1) % _cards.length;
      _showingBack = false;
    });
  }

  void _prev() {
    if (_cards.isEmpty) return;
    setState(() {
      _index = (_index - 1 + _cards.length) % _cards.length;
      _showingBack = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textColor = isDark ? Colors.white : Colors.black;
    final subtitleColor =
    isDark ? Colors.grey.shade400 : Colors.grey.shade600;

    if (!_available) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            "Flashcards can't be built for this set because its source file "
                "isn't available.",
            textAlign: TextAlign.center,
            style: TextStyle(color: subtitleColor),
          ),
        ),
      );
    }

    if (_cards.isEmpty) {
      return _intro(cardColor, textColor, subtitleColor);
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Card ${_index + 1} of ${_cards.length}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: subtitleColor,
                  fontSize: 13,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: _generate,
                icon: Icon(Icons.refresh, size: 16, color: widget.accent),
                label: Text(
                  "New deck",
                  style: TextStyle(color: widget.accent, fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _showingBack = !_showingBack),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                transitionBuilder: (child, anim) =>
                    FadeTransition(opacity: anim, child: child),
                child: Container(
                  key: ValueKey('${_index}_$_showingBack'),
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: _showingBack
                        ? widget.accent.withValues(alpha: 0.08)
                        : cardColor,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: widget.accent.withValues(alpha: 0.35),
                      width: 1.4,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _showingBack ? "Answer" : "Prompt",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: widget.accent,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Center(
                            child: Text(
                              _showingBack
                                  ? _cards[_index].back
                                  : _cards[_index].front,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: _showingBack ? 15 : 20,
                                height: 1.5,
                                fontWeight: _showingBack
                                    ? FontWeight.w500
                                    : FontWeight.bold,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _showingBack ? "Tap to see prompt" : "Tap to reveal",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: subtitleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _prev,
                  icon: const Icon(Icons.arrow_back, size: 18),
                  label: const Text("Previous"),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: widget.accent,
                    minimumSize: const Size(double.infinity, 48),
                    side: BorderSide(color: widget.accent.withValues(alpha: 0.5)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: _next,
                  icon: const Icon(Icons.arrow_forward, size: 18),
                  label: const Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.accent,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _intro(Color cardColor, Color textColor, Color subtitleColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: widget.accent.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.style_outlined,
                  size: 38, color: widget.accent),
            ),
            const SizedBox(height: 18),
            Text(
              "Flashcards",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Kepler will build a short deck from your uploaded material. "
                  "Tap a card to flip it.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13.5, height: 1.45, color: subtitleColor),
            ),
            const SizedBox(height: 22),
            if (_error != null) ...[
              Text(
                _error!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.red, fontSize: 12.5),
              ),
              const SizedBox(height: 12),
            ],
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _loading ? null : _generate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.accent,
                  disabledBackgroundColor: Colors.grey.shade400,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: _loading
                    ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
                    : const Text(
                  "Generate flashcards",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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