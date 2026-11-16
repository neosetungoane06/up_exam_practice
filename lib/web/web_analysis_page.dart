import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/review_weak_area_screen.dart';
import '../services/weak_areas_service.dart';
import 'web_theme.dart';

/// Analysis page for the web shell. Same data and behaviour as the mobile
/// AnalysisScreen, laid out as a grid with dialogs instead of bottom sheets.
class WebAnalysisPage extends StatefulWidget {
  const WebAnalysisPage({super.key});

  @override
  State<WebAnalysisPage> createState() => WebAnalysisPageState();
}

class WebAnalysisPageState extends State<WebAnalysisPage> {
  static const _red = Color(0xFFEF4444);
  static const _amber = Color(0xFFF59E0B);

  final WeakAreasService _service = WeakAreasService();

  List<WeakArea> _areas = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    reload();
  }

  /// Called by the shell each time the student opens this page.
  Future<void> reload() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      if (!mounted) return;
      setState(() => _loading = false);
      return;
    }
    final areas = await _service.listUnresolved(uid);
    if (!mounted) return;
    setState(() {
      _areas = areas;
      _loading = false;
    });
  }

  bool _isRecall(WeakArea a) => a.source == 'active_recall';

  Map<String, List<WeakArea>> get _byUpload {
    final map = <String, List<WeakArea>>{};
    for (final a in _areas) {
      final key = a.sourceFileName.isEmpty ? 'Untitled' : a.sourceFileName;
      map.putIfAbsent(key, () => []).add(a);
    }
    return map;
  }

  Future<void> _openArea(WeakArea area) async {
    if (_isRecall(area)) {
      await _openRecallDetail(area);
      return;
    }
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    final resolved = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => ReviewWeakAreaScreen(area: area, uid: uid),
      ),
    );
    if (!mounted) return;
    if (resolved == true) await reload();
  }

  Future<void> _openRecallDetail(WeakArea area) async {
    final p = WebPalette.of(context);

    await showDialog<void>(
      context: context,
      builder: (ctx) => Dialog(
        backgroundColor: p.card,
        insetPadding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620, maxHeight: 640),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 46,
                      height: 46,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: WebPalette.indigo.withValues(alpha: 0.15),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${area.score}%',
                        style: const TextStyle(
                          color: WebPalette.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Active Recall',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: p.text)),
                          const SizedBox(height: 2),
                          Text(area.prompt,
                              style: TextStyle(
                                  fontSize: 12.5, color: p.subtitle)),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close_rounded, color: p.subtitle),
                      onPressed: () => Navigator.pop(ctx),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      if (area.modelAnswer.trim().isNotEmpty) ...[
                        _label('Key points still worth covering', p),
                        const SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: _amber.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                                color: _amber.withValues(alpha: 0.3)),
                          ),
                          child: Text(area.modelAnswer,
                              style: TextStyle(
                                  fontSize: 13.5, height: 1.5, color: p.text)),
                        ),
                        const SizedBox(height: 18),
                      ],
                      _label('What you said', p),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: p.bg,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          area.wrongAnswer.trim().isEmpty
                              ? 'No transcript was recorded.'
                              : area.wrongAnswer,
                          style: TextStyle(
                              fontSize: 13, height: 1.55, color: p.text),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Active Recall is about pulling from memory, not '
                            'perfection. Come back to this part later - each '
                            'attempt makes it stick.',
                        style: TextStyle(
                          fontSize: 12.5,
                          height: 1.5,
                          color: p.subtitle,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _label(String text, WebPalette p) => Text(
    text.toUpperCase(),
    style: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.8,
      color: p.subtitle,
    ),
  );

  Future<void> _openGroup(String upload, List<WeakArea> areas) async {
    final p = WebPalette.of(context);

    await showDialog<void>(
      context: context,
      builder: (ctx) => Dialog(
        backgroundColor: p.bg,
        insetPadding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620, maxHeight: 640),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        upload,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: p.text),
                      ),
                    ),
                    Text('${areas.length} to review',
                        style: TextStyle(
                            fontSize: 12.5,
                            color: p.subtitle,
                            fontWeight: FontWeight.w600)),
                    IconButton(
                      icon: Icon(Icons.close_rounded, color: p.subtitle),
                      onPressed: () => Navigator.pop(ctx),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: areas.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (_, i) => _areaTile(
                      areas[i],
                      p,
                          () async {
                        Navigator.pop(ctx);
                        await _openArea(areas[i]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    if (mounted) await reload();
  }

  Widget _areaTile(WeakArea a, WebPalette p, VoidCallback onTap) {
    final isRecall = _isRecall(a);
    final tone = a.score <= 30 ? _red : _amber;

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: p.card,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0x0F000000))],
        ),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: tone.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: Text('${a.score}%',
                  style: TextStyle(
                      color: tone, fontWeight: FontWeight.bold, fontSize: 12.5)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (isRecall) ...[
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: WebPalette.indigo.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('Active Recall',
                              style: TextStyle(
                                  color: WebPalette.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.5,
                                  letterSpacing: 0.4)),
                        ),
                        const SizedBox(width: 8),
                      ],
                      Expanded(
                        child: Text(
                          isRecall
                              ? (a.prompt.isEmpty ? 'Recall session' : a.prompt)
                              : (a.topic.isEmpty ? 'Review question' : a.topic),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: p.text,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Text(
                    isRecall ? 'Tap to see how you did' : a.prompt,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12.5, height: 1.4, color: p.subtitle),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded,
                color: Colors.grey, size: 22),
          ],
        ),
      ),
    );
  }

  Widget _pill(String text, Color color) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.12),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(text,
        style: TextStyle(
            color: color, fontWeight: FontWeight.bold, fontSize: 11.5)),
  );

  Widget _groupCard(String upload, List<WeakArea> areas, WebPalette p) {
    final bad = areas.where((a) => a.score <= 30).length;
    final medium = areas.where((a) => a.score > 30).length;
    final recalls = areas.where(_isRecall).length;

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () => _openGroup(upload, areas),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: p.card,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [BoxShadow(blurRadius: 12, color: Color(0x0F000000))],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: WebPalette.indigo.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.bar_chart_rounded,
                      color: WebPalette.indigo, size: 22),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    upload,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: p.text,
                        height: 1.3),
                  ),
                ),
                const Icon(Icons.chevron_right_rounded,
                    color: Colors.grey, size: 22),
              ],
            ),
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                if (bad > 0) _pill('$bad to focus on', _red),
                if (medium > 0) _pill('$medium to brush up', _amber),
                if (recalls > 0)
                  _pill('$recalls recall${recalls == 1 ? '' : 's'}',
                      WebPalette.indigo),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final p = WebPalette.of(context);

    if (_loading) {
      return const Center(
          child: CircularProgressIndicator(color: WebPalette.indigo));
    }

    return RefreshIndicator(
      onRefresh: reload,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 60),
        child: Center(
          child: ConstrainedBox(
            constraints:
            const BoxConstraints(maxWidth: WebConfig.contentMaxWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Analysis',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: p.text)),
                const SizedBox(height: 18),
                if (_areas.isEmpty)
                  _empty(p)
                else ...[
                  Text('Areas to improve',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          color: p.text)),
                  const SizedBox(height: 6),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 640),
                    child: Text(
                      'Practice questions you scored 50% or below on, plus '
                          'Active Recall sessions you set aside for later. '
                          'Review them one at a time. Kepler walks you through '
                          'the fix.',
                      style: TextStyle(
                          fontSize: 13.5, color: p.subtitle, height: 1.5),
                    ),
                  ),
                  const SizedBox(height: 20),
                  LayoutBuilder(
                    builder: (context, box) {
                      const gap = 14.0;
                      final cols = (box.maxWidth / 320).floor().clamp(1, 3);
                      final width = (box.maxWidth - gap * (cols - 1)) / cols;
                      return Wrap(
                        spacing: gap,
                        runSpacing: gap,
                        children: [
                          for (final e in _byUpload.entries)
                            SizedBox(
                                width: width, child: _groupCard(e.key, e.value, p)),
                        ],
                      );
                    },
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _empty(WebPalette p) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
      decoration: BoxDecoration(
        color: p.card,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0x0F000000))],
      ),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: WebPalette.indigo.withValues(alpha: 0.10),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.bar_chart_rounded,
                color: WebPalette.indigo, size: 44),
          ),
          const SizedBox(height: 20),
          Text('Nothing to review',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: p.text)),
          const SizedBox(height: 8),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Text(
              'When you get 50% or below on a practice question, or save an '
                  'Active Recall session for later, it shows up here so you '
                  'can fix it.',
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 14, color: p.subtitle, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}