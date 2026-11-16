import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

import '../services/active_recall_service.dart';

/// "Explain to AI" - the Today's Tasks flow.
///
/// Same grading backend as ActiveRecallScreen, but framed as a
/// single prompt rather than a timed challenge: no countdown, and
/// the opening question is stated up front instead of the student
/// being told to dump everything they know in three minutes.
///
/// Pops with `true` when a session actually completed, so the home
/// screen only marks the task done on real completion - backing out
/// halfway must not clear the card.
class ExplainToAiScreen extends StatefulWidget {
  final String moduleCode;
  final String topic;

  /// Human-readable subtopic name, e.g. "Introduction to Cells".
  /// Slugified into the rubric key by ActiveRecallService.
  final String subtopic;

  const ExplainToAiScreen({
    super.key,
    required this.moduleCode,
    required this.topic,
    required this.subtopic,
  });

  @override
  State<ExplainToAiScreen> createState() => _ExplainToAiScreenState();
}

class _ChatMessage {
  final bool isStudent;
  final String text;
  const _ChatMessage({required this.isStudent, required this.text});
}

class _ExplainToAiScreenState extends State<ExplainToAiScreen> {

  static const _indigo = Color(0xff4F46E5);

  final ActiveRecallService _service = ActiveRecallService();
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<_ChatMessage> _messages = [];
  final Set<String> _keyTermsUsed = {};
  List<String> _allKeyTerms = [];

  String? _sessionId;
  int? _currentScore;
  bool _isSubmitting = false;
  bool _isComplete = false;
  bool _completedSuccessfully = false;
  ActiveRecallResult? _finalResult;
  String? _errorMessage;
  String? _lastFailedAnswer;

  /// True when the backend has no rubric for this subtopic. A
  /// different, terminal failure from a network blip - retrying can
  /// never fix it, so the UI must not offer a Retry button that is
  /// guaranteed to fail again.
  bool _noRubric = false;

  int _wordCount = 0;

  String get _question =>
      "In your own words, explain ${widget.subtopic}. "
          "Say what it is, why it matters, and how it works.";

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final text = _controller.text.trim();
      setState(() {
        _wordCount = text.isEmpty ? 0 : text.split(RegExp(r'\s+')).length;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Color _scoreColor(int score) {
    if (score >= 90) return Colors.green;
    if (score >= 70) return Colors.blue;
    if (score >= 50) return Colors.amber.shade800;
    if (score >= 30) return Colors.orange;
    return Colors.red;
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _submit() async {
    final answer = _controller.text.trim();

    if (answer.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Write something first.")),
      );
      return;
    }

    _controller.clear();

    setState(() {
      _messages.add(_ChatMessage(isStudent: true, text: answer));
      _isSubmitting = true;
      _errorMessage = null;
      _wordCount = 0;
    });

    _scrollToBottom();
    await _send(answer);
  }

  Future<void> _send(String answer) async {
    final subtopicId =
    ActiveRecallService.slugifySubtopic(widget.subtopic);

    try {
      final evaluation = await _service.evaluate(
        subtopicId: subtopicId,
        studentAnswer: answer,
        sessionId: _sessionId,
      );

      if (!mounted) return;

      final result = evaluation.result;

      final text = (result.shouldContinue && result.followUpQuestion != null)
          ? "${result.feedbackMessage}\n\n${result.followUpQuestion}"
          : result.feedbackMessage;

      setState(() {
        _sessionId = evaluation.sessionId;
        _currentScore = result.score;
        _allKeyTerms = evaluation.allKeyTerms;
        _keyTermsUsed.addAll(result.keyTermsUsed);
        _messages.add(_ChatMessage(isStudent: false, text: text));
        _isSubmitting = false;
        _lastFailedAnswer = null;

        if (!result.shouldContinue) {
          _isComplete = true;
          _completedSuccessfully = true;
          _finalResult = result;
        }
      });

      _scrollToBottom();
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;

      final message = e.message ?? '';
      final missingRubric = message.contains('No rubric defined');

      setState(() {
        _isSubmitting = false;
        _noRubric = missingRubric;
        _errorMessage = missingRubric
            ? "This subtopic doesn't have a marking rubric yet, so it "
            "can't be graded. Nothing you did wrong - the content "
            "just hasn't been set up for AI grading."
            : (message.isEmpty
            ? "The AI couldn't grade that answer. Please try again."
            : message);
        _lastFailedAnswer = missingRubric ? null : answer;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _isSubmitting = false;
        _errorMessage =
        "Something went wrong. Check your connection and try again.";
        _lastFailedAnswer = answer;
      });
    }
  }

  void _retry() {
    final answer = _lastFailedAnswer;
    if (answer == null) return;
    setState(() {
      _isSubmitting = true;
      _errorMessage = null;
    });
    _send(answer);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final background = isDark ? const Color(0xFF121212) : const Color(0xFFF3F1FB);
    final cardColor = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textColor = isDark ? Colors.white : Colors.black;
    final subtitleColor = isDark ? Colors.grey.shade400 : Colors.grey.shade600;

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, _) {},
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          foregroundColor: textColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Explain to AI",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () =>
                Navigator.pop(context, _completedSuccessfully),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // THE QUESTION - stays pinned at the top for the
                // whole session. Students lose track of what they
                // were asked once the chat starts scrolling.
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: _indigo.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.help_outline,
                              size: 16, color: _indigo),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              "${widget.moduleCode} · ${widget.topic}",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.8,
                                color: subtitleColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _question,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.4,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),

                if (_currentScore != null) ...[
                  const SizedBox(height: 12),
                  _scoreStrip(context, cardColor, subtitleColor),
                ],

                const SizedBox(height: 14),

                Expanded(
                  child: _messages.isEmpty
                      ? _emptyPrompt(context, cardColor, subtitleColor, textColor)
                      : ListView.builder(
                    controller: _scrollController,
                    itemCount:
                    _messages.length + (_isSubmitting ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == _messages.length) {
                        return _typingIndicator(cardColor);
                      }
                      return _bubble(
                          context, _messages[index], cardColor, textColor);
                    },
                  ),
                ),

                if (_errorMessage != null) _errorBanner(),

                if (_isComplete && _finalResult != null)
                  _completionCard(context, _finalResult!, cardColor, textColor)
                else if (!_noRubric)
                  _inputArea(context, cardColor, subtitleColor, textColor),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _emptyPrompt(
      BuildContext context, Color cardColor, Color subtitleColor, Color textColor) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.psychology_alt, size: 48, color: _indigo.withValues(alpha: 0.7)),
          const SizedBox(height: 14),
          Text(
            "No notes - just what you remember.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Explaining it badly and getting corrected teaches you "
                  "more than reading it again.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, height: 1.4, color: subtitleColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _scoreStrip(
      BuildContext context, Color cardColor, Color subtitleColor) {
    final score = _currentScore!;
    final color = _scoreColor(score);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.percent, size: 15, color: color),
              const SizedBox(width: 6),
              Text(
                "$score% understanding",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: color,
                ),
              ),
              const Spacer(),
              Text(
                "${_keyTermsUsed.length}/${_allKeyTerms.length} key terms",
                style: TextStyle(fontSize: 12, color: subtitleColor),
              ),
            ],
          ),
          if (_allKeyTerms.isNotEmpty) ...[
            const SizedBox(height: 10),
            _keywordChips(),
          ],
        ],
      ),
    );
  }

  /// Green for terms used correctly, plain outline for ones not used
  /// yet. Deliberately NOT red: these are terms the student simply
  /// hasn't reached, and marking them as errors mid-session reads as
  /// a list of failures rather than a checklist.
  Widget _keywordChips() {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: _allKeyTerms.map((term) {
        final got = _keyTermsUsed.contains(term);
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: got
                ? Colors.green.withValues(alpha: 0.12)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: got
                  ? Colors.green
                  : Colors.grey.withValues(alpha: 0.45),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (got) ...[
                const Icon(Icons.check, size: 12, color: Colors.green),
                const SizedBox(width: 4),
              ],
              Text(
                term,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: got ? Colors.green.shade800 : Colors.grey.shade600,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _bubble(BuildContext context, _ChatMessage message, Color cardColor,
      Color textColor) {
    final isStudent = message.isStudent;

    return Align(
      alignment: isStudent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.78,
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isStudent ? _indigo : cardColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18),
            topRight: const Radius.circular(18),
            bottomLeft: Radius.circular(isStudent ? 18 : 4),
            bottomRight: Radius.circular(isStudent ? 4 : 18),
          ),
          border: isStudent
              ? null
              : Border.all(color: Colors.grey.withValues(alpha: 0.2)),
        ),
        child: Text(
          message.text,
          style: TextStyle(
            color: isStudent ? Colors.white : textColor,
            fontSize: 15,
            height: 1.4,
          ),
        ),
      ),
    );
  }

  Widget _typingIndicator(Color cardColor) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
        ),
        child: const SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(strokeWidth: 2, color: _indigo),
        ),
      ),
    );
  }

  Widget _errorBanner() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              _errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 13, height: 1.35),
            ),
          ),
          if (!_noRubric)
            TextButton(onPressed: _retry, child: const Text("Retry")),
        ],
      ),
    );
  }

  Widget _completionCard(BuildContext context, ActiveRecallResult result,
      Color cardColor, Color textColor) {
    final isMastered = result.sessionOutcome == "mastered";
    final color = isMastered ? Colors.green : Colors.orange;

    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(isMastered ? Icons.emoji_events : Icons.info_outline,
                  color: color),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  isMastered
                      ? "You've got this!"
                      : "Good effort - worth another look later",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          if (result.misconceptions.isNotEmpty) ...[
            const SizedBox(height: 14),
            Text(
              "Worth revisiting",
              style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
            ),
            const SizedBox(height: 8),
            ...result.misconceptions.map((m) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "• ${m.correction}",
                style: TextStyle(
                    fontSize: 13.5, color: textColor, height: 1.4),
              ),
            )),
          ],
          const SizedBox(height: 16),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              style: ElevatedButton.styleFrom(
                backgroundColor: _indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Done",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputArea(BuildContext context, Color cardColor, Color subtitleColor,
      Color textColor) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.25)),
      ),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            maxLines: 4,
            minLines: 2,
            enabled: !_isSubmitting,
            style: TextStyle(fontSize: 16, height: 1.5, color: textColor),
            decoration: InputDecoration(
              hintText: _messages.isEmpty
                  ? "${widget.subtopic} is..."
                  : "Type your answer...",
              hintStyle: TextStyle(color: Colors.grey.shade500),
              border: InputBorder.none,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "$_wordCount word${_wordCount == 1 ? '' : 's'}",
                  style: TextStyle(fontSize: 13, color: subtitleColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: _isSubmitting ? null : _submit,
              style: ElevatedButton.styleFrom(
                backgroundColor: _indigo,
                disabledBackgroundColor: Colors.grey.shade400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: _isSubmitting
                  ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                    strokeWidth: 2, color: Colors.white),
              )
                  : Text(
                _messages.isEmpty ? "Check My Understanding →" : "Send",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}