import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import '../screens/video_player_page.dart';
import '../screens/video_screen.dart';
import '../services/video_search_service.dart';

class HomeVideosSection extends StatefulWidget {
  final Color accent;
  const HomeVideosSection({super.key, required this.accent});

  @override
  State<HomeVideosSection> createState() => _HomeVideosSectionState();
}

class _HomeVideosSectionState extends State<HomeVideosSection> {
  static const _topics = <String, String>{
    'Study tips': 'how to study effectively university',
    'Maths': 'calculus explained',
    'Biology': 'biology explained',
    'Chemistry': 'chemistry explained',
    'Physics': 'physics explained',
    'Accounting': 'accounting basics explained',
    'Law': 'introduction to law explained',
    'Engineering': 'engineering fundamentals explained',
  };

  final _service = VideoSearchService();
  late final List<String> _labels = _topics.keys.toList();
  int _selected = 0;
  List<VideoHit> _hits = [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final topic = _labels[_selected];
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final hits = await _service.search(_topics[topic]!);
      if (!mounted || _labels[_selected] != topic) return;
      setState(() {
        _hits = hits;
        _loading = false;
      });
    } on FirebaseFunctionsException catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = e.message ?? "Couldn't load videos.";
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = "Couldn't load videos.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final card = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final text = isDark ? Colors.white : Colors.black;
    final sub = isDark ? Colors.grey.shade400 : Colors.grey.shade600;
    final accent = widget.accent;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Watch & learn',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: text)),
        const SizedBox(height: 4),
        Text('Short lessons while you get your first notes ready.',
            style: TextStyle(fontSize: 13, color: sub)),
        const SizedBox(height: 14),

        // Search field -> opens the full video search screen
        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => VideoScreen(accent: accent)),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            decoration: BoxDecoration(
              color: card,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(blurRadius: 12, color: Color(0x12000000)),
              ],
            ),
            child: Row(children: [
              Icon(Icons.ondemand_video_rounded, color: accent),
              const SizedBox(width: 12),
              Expanded(
                child: Text('Search videos on any topic...',
                    style: TextStyle(color: sub)),
              ),
              Icon(Icons.arrow_forward_ios_rounded, size: 12, color: sub),
            ]),
          ),
        ),
        const SizedBox(height: 14),

        // Topic chips
        SizedBox(
          height: 36,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _labels.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (_, i) {
              final on = i == _selected;
              return ChoiceChip(
                label: Text(_labels[i]),
                selected: on,
                showCheckmark: false,
                selectedColor: accent,
                backgroundColor: accent.withValues(alpha: 0.08),
                labelStyle: TextStyle(
                  color: on ? Colors.white : accent,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                side: BorderSide.none,
                onSelected: (_) {
                  if (on) return;
                  setState(() => _selected = i);
                  _load();
                },
              );
            },
          ),
        ),
        const SizedBox(height: 14),

        SizedBox(
          height: 190,
          child: _loading
              ? _placeholders(accent)
              : _error != null
              ? _errorBox(sub)
              : _hits.isEmpty
              ? Center(
              child: Text('No videos found for this topic.',
                  style: TextStyle(color: sub)))
              : ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _hits.length,
            separatorBuilder: (_, __) =>
            const SizedBox(width: 12),
            itemBuilder: (_, i) => _VideoCard(
                hit: _hits[i],
                accent: accent,
                card: card,
                text: text,
                sub: sub),
          ),
        ),
      ],
    );
  }

  Widget _placeholders(Color accent) => ListView.separated(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    separatorBuilder: (_, __) => const SizedBox(width: 12),
    itemBuilder: (_, __) => Container(
      width: 220,
      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(Icons.play_circle_outline,
            color: accent.withValues(alpha: 0.4), size: 36),
      ),
    ),
  );

  Widget _errorBox(Color sub) => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.videocam_off_outlined, color: sub),
        const SizedBox(height: 6),
        Text(_error!,
            textAlign: TextAlign.center,
            style: TextStyle(color: sub, fontSize: 13)),
        TextButton(onPressed: _load, child: const Text('Retry')),
      ],
    ),
  );
}

class _VideoCard extends StatelessWidget {
  final VideoHit hit;
  final Color accent, card, text, sub;
  const _VideoCard({
    required this.hit,
    required this.accent,
    required this.card,
    required this.text,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>
              VideoPlayerPage(videoId: hit.youtubeId, title: hit.title),
        ),
      ),
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          color: card,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: accent.withValues(alpha: 0.15)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
              const BorderRadius.vertical(top: Radius.circular(16)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Stack(fit: StackFit.expand, children: [
                  Image.network(hit.thumbnail,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          Container(color: Colors.black12)),
                  Container(color: Colors.black.withValues(alpha: 0.18)),
                  const Center(
                    child: Icon(Icons.play_circle_fill,
                        color: Colors.white, size: 38),
                  ),
                  Positioned(
                    right: 6,
                    bottom: 6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 1),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(hit.duration,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10.5)),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Text(hit.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      height: 1.25,
                      color: text)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
              child: Text(hit.channel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 11, color: sub)),
            ),
          ],
        ),
      ),
    );
  }
}