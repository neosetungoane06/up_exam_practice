import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

import '../../models/study_tools_models.dart';
import '../../services/study_tools_service.dart';

/// Two sub-modes inside one tab: multiple-choice Quiz, and open-ended
/// Practice. Practice grading is reported back to the reader via
/// [onPracticeScore], which surfaces the percentage in the top banner.
class QuizzesTab extends StatefulWidget {
  final String noteId;
  final String? storagePath;
  final String moduleTitle;
  final Color accent;
  final void Function(int score, String subtitle) onPracticeScore;

  const QuizzesTab({
    super.key,
    required this.noteId,
    required this.storagePath,
    required this.moduleTitle,
    required this.accent,
    required this.onPracticeScore,
  });

  @override
  State<QuizzesTab> createState() => _QuizzesTabState();
}

enum _Mode { quiz, practice }

class _QuizzesTabState extends State<QuizzesTab> {
  _Mode _mode = _Mode.quiz;

  bool get _available =>
      widget.storagePath != null && widget.storagePath!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? Colors.white : Colors.black;
    final subtitleColor =
    isDark ? Colors.grey.shade400 : Colors.grey.shade600;

    if (!_available) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            "Quizzes and practice can't be built for this set because its "
                "source file isn't available.",
            textAlign: TextAlign.center,
            style: TextStyle(color: subtitleColor),
          ),
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
          child: SegmentedButton<_Mode>(
            segments: const [
              ButtonSegment(
                value: _Mode.quiz,
                label: Text("Quiz"),
                icon: Icon(Icons.quiz_outlined, size: 16),
              ),
              ButtonSegment(
                value: _Mode.practice,
                label: Text("Practice"),
                icon: Icon(Icons.edit_note_outlined, size: 16),
              ),
            ],
            selected: {_mode},
            onSelectionChanged: (s) => setState(() => _mode = s.first),
            style: ButtonStyle(
              foregroundColor:
              WidgetStatePropertyAll(textColor),
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return widget.accent.withValues(alpha: 0.15);
                }
                return null;
              }),
            ),
          ),
        ),
        Expanded(
          child: _mode == _Mode.quiz
              ? _QuizPanel(
            noteId: widget.noteId,
            accent: widget.accent,
          )
              : _PracticePanel(
            noteId: widget.noteId,
            accent: widget.accent,
            onScored: widget.onPracticeScore,
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------
// Quiz panel
// ---------------------------------------------------------------------

class _QuizPanel extends StatefulWidget {
  final String noteId;
  final Color accent;

  const _QuizPanel({required this.noteId, required this.accent});

  @override
  State<_QuizPanel> createState() => _QuizPanelState();
}

class _QuizPanelState extends State<_QuizPanel> {
  final StudyToolsService _service = StudyToolsService();

  final List<QuizQuestion> _asked = [];
  List<QuizQuestion> _batch = const [];
  int _index = 0;
  int? _selected;
  bool _answered = false;
  bool _loading = false;
  bool _finishedBatch = false;
  String? _error;

  int get _correctSoFar =>
      _asked.where((_) => false).length; // placeholder - see _score

  int _score = 0;
  int _attempts = 0;

  Future<void> _generate({required bool append}) async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final questions = await _service.generateQuizzes(
        noteId: widget.noteId,
        count: 5,
        excludeQuestions: _asked.map((q) => q.question).toList(),
      );
      if (!mounted) return;

      setState(() {
        _batch = questions;
        _asked.addAll(questions);
        _index = 0;
        _selected = null;
        _answered = false;
        _finishedBatch = false;
        _loading = false;
      });
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = e.message ?? "The quiz couldn't be generated.";
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = "The quiz couldn't be generated. Try again.";
      });
    }
  }

  void _pick(int i) {
    if (_answered) return;
    setState(() {
      _selected = i;
      _answered = true;
      _attempts += 1;
      if (i == _batch[_index].correctIndex) _score += 1;
    });
  }

  void _nextQuestion() {
    if (_index + 1 >= _batch.length) {
      setState(() => _finishedBatch = true);
      return;
    }
    setState(() {
      _index += 1;
      _selected = null;
      _answered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textColor = isDark ? Colors.white : Colors.black;
    final subtitleColor =
    isDark ? Colors.grey.shade400 : Colors.grey.shade600;

    if (_batch.isEmpty && !_loading) {
      return _intro(cardColor, textColor, subtitleColor);
    }
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (_finishedBatch) {
      return _batchComplete(cardColor, textColor, subtitleColor);
    }

    final q = _batch[_index];

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Question ${_index + 1} of ${_batch.length}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: subtitleColor,
                ),
              ),
              const Spacer(),
              Text(
                "$_score / $_attempts correct",
                style: TextStyle(
                  fontSize: 12.5,
                  color: subtitleColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: widget.accent.withValues(alpha: 0.25),
              ),
            ),
            child: Text(
              q.question,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 14),
          for (var i = 0; i < q.options.length; i++)
            _optionTile(i, q, cardColor, textColor, subtitleColor),
          if (_answered) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: widget.accent.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: widget.accent.withValues(alpha: 0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Why",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.accent,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    q.explanation,
                    style: TextStyle(
                        color: textColor, fontSize: 14, height: 1.45),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _nextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.accent,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: Text(
                  _index + 1 >= _batch.length
                      ? "See results"
                      : "Next question",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _optionTile(
      int i,
      QuizQuestion q,
      Color cardColor,
      Color textColor,
      Color subtitleColor,
      ) {
    Color border = Colors.grey.withValues(alpha: 0.25);
    Color? fill;

    if (_answered) {
      if (i == q.correctIndex) {
        border = Colors.green;
        fill = Colors.green.withValues(alpha: 0.08);
      } else if (i == _selected) {
        border = Colors.red;
        fill = Colors.red.withValues(alpha: 0.08);
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => _pick(i),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: fill ?? cardColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: border, width: 1.4),
          ),
          child: Row(
            children: [
              Container(
                width: 26,
                height: 26,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: widget.accent.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  String.fromCharCode(65 + i),
                  style: TextStyle(
                    color: widget.accent,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  q.options[i],
                  style: TextStyle(
                    fontSize: 14.5,
                    color: textColor,
                    height: 1.35,
                  ),
                ),
              ),
            ],
          ),
        ),
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
              child: Icon(Icons.quiz_outlined,
                  size: 38, color: widget.accent),
            ),
            const SizedBox(height: 18),
            Text(
              "Ready for a quick quiz?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Kepler will write 5 multiple-choice questions from your "
                  "uploaded material. Get them done, then keep going with 5 more.",
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
                onPressed: () => _generate(append: false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.accent,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text(
                  "Generate quiz",
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

  Widget _batchComplete(Color cardColor, Color textColor, Color subtitleColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: widget.accent.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                "$_score/${_batch.length}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: widget.accent,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              "Nice work — batch done",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Answer another 5 to keep sharpening.",
              textAlign: TextAlign.center,
              style: TextStyle(color: subtitleColor, fontSize: 13.5),
            ),
            const SizedBox(height: 22),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _generate(append: true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.accent,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text(
                  "Continue with 5 more",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => setState(() {
                _batch = const [];
                _asked.clear();
                _score = 0;
                _attempts = 0;
              }),
              child: Text(
                "Back to quiz home",
                style: TextStyle(color: subtitleColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------
// Practice panel
// ---------------------------------------------------------------------

class _PracticePanel extends StatefulWidget {
  final String noteId;
  final Color accent;
  final void Function(int score, String subtitle) onScored;

  const _PracticePanel({
    required this.noteId,
    required this.accent,
    required this.onScored,
  });

  @override
  State<_PracticePanel> createState() => _PracticePanelState();
}

class _PracticePanelState extends State<_PracticePanel> {
  final StudyToolsService _service = StudyToolsService();
  final TextEditingController _controller = TextEditingController();

  final List<String> _askedPrompts = [];
  PracticeQuestion? _question;
  PracticeGrade? _grade;

  bool _loadingQ = false;
  bool _grading = false;
  String? _error;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _loadQuestion() async {
    setState(() {
      _loadingQ = true;
      _error = null;
      _grade = null;
      _controller.clear();
    });

    try {
      final q = await _service.generatePracticeQuestion(
        noteId: widget.noteId,
        avoidQuestions: _askedPrompts,
      );
      if (!mounted) return;
      setState(() {
        _question = q;
        _askedPrompts.add(q.question);
        _loadingQ = false;
      });
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;
      setState(() {
        _loadingQ = false;
        _error = e.message ?? "The practice question couldn't be generated.";
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loadingQ = false;
        _error = "The practice question couldn't be generated. Try again.";
      });
    }
  }

  Future<void> _submit() async {
    final q = _question;
    if (q == null) return;
    final answer = _controller.text.trim();
    if (answer.isEmpty) return;

    setState(() {
      _grading = true;
      _error = null;
    });

    try {
      final grade = await _service.gradePracticeAnswer(
        noteId: widget.noteId,
        questionId: q.id,
        studentAnswer: answer,
      );
      if (!mounted) return;
      setState(() {
        _grade = grade;
        _grading = false;
      });
      widget.onScored(
        grade.score,
        grade.feedback.length > 60
            ? "${grade.feedback.substring(0, 60)}…"
            : grade.feedback,
      );
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;
      setState(() {
        _grading = false;
        _error = e.message ?? "That couldn't be marked right now.";
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _grading = false;
        _error = "That couldn't be marked right now. Try again.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textColor = isDark ? Colors.white : Colors.black;
    final subtitleColor =
    isDark ? Colors.grey.shade400 : Colors.grey.shade600;

    if (_question == null && !_loadingQ) {
      return _intro(textColor, subtitleColor);
    }
    if (_loadingQ) {
      return const Center(child: CircularProgressIndicator());
    }

    final q = _question!;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: widget.accent.withValues(alpha: 0.25),
              ),
            ),
            child: Text(
              q.question,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 14),
          TextField(
            controller: _controller,
            minLines: 5,
            maxLines: 10,
            enabled: _grade == null && !_grading,
            style: TextStyle(fontSize: 15, height: 1.5, color: textColor),
            decoration: InputDecoration(
              hintText: "Write your answer in your own words…",
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              fillColor: cardColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(14),
                border:
                Border.all(color: Colors.red.withValues(alpha: 0.3)),
              ),
              child: Text(
                _error!,
                style: const TextStyle(color: Colors.red, fontSize: 12.5),
              ),
            ),
          ],
          const SizedBox(height: 14),
          if (_grade == null)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _grading ? null : _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.accent,
                  disabledBackgroundColor: Colors.grey.shade400,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: _grading
                    ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
                    : const Text(
                  "Submit for marking",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          else
            _gradeCard(_grade!, cardColor, textColor, subtitleColor),
        ],
      ),
    );
  }

  Widget _intro(Color textColor, Color subtitleColor) {
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
              child: Icon(Icons.edit_note_outlined,
                  size: 38, color: widget.accent),
            ),
            const SizedBox(height: 18),
            Text(
              "Practice answering",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Kepler will ask you to explain part of this material in your "
                  "own words. You type the answer, the AI marks it out of 100%, "
                  "and your score shows at the top of this screen.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13.5, height: 1.45, color: subtitleColor),
            ),
            const SizedBox(height: 22),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _loadQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.accent,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text(
                  "Start practising",
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

  Widget _gradeCard(
      PracticeGrade g, Color cardColor, Color textColor, Color subtitleColor) {
    final color = _scoreColor(g.score);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: color.withValues(alpha: 0.4)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "${g.score}%",
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      g.feedback,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
              if (g.missingKeyPoints.isNotEmpty) ...[
                const SizedBox(height: 14),
                Text(
                  "Worth adding",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 6),
                for (final p in g.missingKeyPoints)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      "• $p",
                      style: TextStyle(
                          color: textColor, fontSize: 13.5, height: 1.4),
                    ),
                  ),
              ],
              const SizedBox(height: 14),
              Text(
                "Model answer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: subtitleColor,
                  fontSize: 12,
                  letterSpacing: 0.6,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                g.modelAnswer,
                style: TextStyle(
                    color: textColor, fontSize: 14, height: 1.5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _loadQuestion,
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.accent,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            child: const Text(
              "Next question",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _scoreColor(int score) {
    if (score >= 90) return Colors.green;
    if (score >= 70) return Colors.blue;
    if (score >= 50) return Colors.amber.shade800;
    if (score >= 30) return Colors.orange;
    return Colors.red;
  }
}