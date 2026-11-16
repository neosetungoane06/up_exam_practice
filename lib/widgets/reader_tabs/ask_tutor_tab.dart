import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

import '../../models/study_tools_models.dart';
import '../../services/study_tools_service.dart';

/// Grounded Q&A with Gemini about the current note. Each turn is sent
/// along with the (trimmed) history so the tutor keeps context, but the
/// server only ever answers from the note's own source material.
class AskTutorTab extends StatefulWidget {
  final String noteId;
  final String? storagePath;
  final String moduleTitle;
  final Color accent;

  const AskTutorTab({
    super.key,
    required this.noteId,
    required this.storagePath,
    required this.moduleTitle,
    required this.accent,
  });

  @override
  State<AskTutorTab> createState() => _AskTutorTabState();
}

class _AskTutorTabState extends State<AskTutorTab> {
  final StudyToolsService _service = StudyToolsService();
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<TutorMessage> _messages = [];
  bool _sending = false;
  String? _error;

  bool get _available =>
      widget.storagePath != null && widget.storagePath!.isNotEmpty;

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
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

  Future<void> _send() async {
    final question = _controller.text.trim();
    if (question.isEmpty || _sending) return;

    final history = List<TutorMessage>.of(_messages);

    _controller.clear();
    setState(() {
      _messages.add(TutorMessage(isStudent: true, text: question));
      _sending = true;
      _error = null;
    });
    _scrollToBottom();

    try {
      final reply = await _service.askTutor(
        noteId: widget.noteId,
        question: question,
        history: history,
      );
      if (!mounted) return;
      setState(() {
        _messages.add(TutorMessage(isStudent: false, text: reply));
        _sending = false;
      });
      _scrollToBottom();
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;
      setState(() {
        _sending = false;
        _error = e.message ?? "The tutor couldn't answer. Try again.";
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _sending = false;
        _error = "The tutor couldn't answer. Check your connection.";
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

    if (!_available) {
      return _unavailable(textColor, subtitleColor);
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        children: [
          Expanded(
            child: _messages.isEmpty && !_sending
                ? _emptyState(textColor, subtitleColor)
                : SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final m in _messages)
                    _bubble(m, cardColor, textColor),
                  if (_sending)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                              color: Colors.grey.withValues(alpha: 0.2)),
                        ),
                        child: SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: widget.accent,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ),
          if (_error != null)
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.error_outline,
                      color: Colors.red, size: 18),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _error!,
                      style: const TextStyle(color: Colors.red, fontSize: 12.5),
                    ),
                  ),
                ],
              ),
            ),
          _inputArea(cardColor, textColor, subtitleColor),
        ],
      ),
    );
  }

  Widget _emptyState(Color textColor, Color subtitleColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                color: widget.accent.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.school_outlined,
                  size: 36, color: widget.accent),
            ),
            const SizedBox(height: 18),
            Text(
              "Ask about anything in these notes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Confused by something in the material? Ask a question and "
                  "get a straight answer grounded in what you uploaded.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.5,
                height: 1.45,
                color: subtitleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _unavailable(Color textColor, Color subtitleColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Text(
          "The tutor can't answer questions for this set because its source "
              "file isn't available.",
          textAlign: TextAlign.center,
          style: TextStyle(color: subtitleColor, fontSize: 14),
        ),
      ),
    );
  }

  Widget _bubble(TutorMessage m, Color cardColor, Color textColor) {
    final isStudent = m.isStudent;
    return Align(
      alignment: isStudent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.78,
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isStudent ? widget.accent : cardColor,
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
          m.text,
          style: TextStyle(
            color: isStudent ? Colors.white : textColor,
            fontSize: 15,
            height: 1.45,
          ),
        ),
      ),
    );
  }

  Widget _inputArea(Color cardColor, Color textColor, Color subtitleColor) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.25)),
      ),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            minLines: 1,
            maxLines: 4,
            enabled: !_sending,
            textInputAction: TextInputAction.send,
            onSubmitted: (_) => _send(),
            style: TextStyle(fontSize: 15, color: textColor),
            decoration: InputDecoration(
              hintText: "Ask a question about these notes…",
              hintStyle: TextStyle(color: Colors.grey.shade500),
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _sending ? null : _send,
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.accent,
                disabledBackgroundColor: Colors.grey.shade400,
                minimumSize: const Size(double.infinity, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text(
                "Send",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}