import 'dart:io' show File;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gal/gal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/file_download.dart';

const _blue = Color(0xFF234E84);
const _navy = Color(0xFF06142D);
const _ink = Color(0xFF3F4A5C);
const _mist = Color(0xFFEAF0F8);

/// The certificate a student earns by mastering a quest: their name, the
/// percentage for each stage, the average and a short rotating message.
/// It can be saved as a picture or shared.
class QuestCertificateScreen extends StatefulWidget {
  final String name;
  final String uploadName;

  /// Five whole percentages, Beginner to Master.
  final List<int> stagePercents;

  const QuestCertificateScreen({
    super.key,
    required this.name,
    required this.uploadName,
    required this.stagePercents,
  });

  @override
  State<QuestCertificateScreen> createState() => _QuestCertificateScreenState();
}

class _QuestCertificateScreenState extends State<QuestCertificateScreen> {
  static const _stageNames = [
    'Beginner',
    'Learner',
    'Practiser',
    'Confident',
    'Master',
  ];
  static const _months = [
    'JANUARY', 'FEBRUARY', 'MARCH', 'APRIL', 'MAY', 'JUNE', 'JULY',
    'AUGUST', 'SEPTEMBER', 'OCTOBER', 'NOVEMBER', 'DECEMBER',
  ];
  static const _kRotateKey = 'quest_certificate_message_i';

  static const _distinction = [
    'Excellence is a habit, and you have made it yours.',
    'You did not just pass. You mastered it.',
    'This is what steady, serious work looks like.',
    'Top results come from patient effort. Well earned.',
    'You have set a high standard. Keep it.',
  ];
  static const _strong = [
    'Mastery is built one stage at a time, and you have now built all five.',
    'Steady effort, clear results. Be proud of this.',
    'Every stage you cleared made the next one easier.',
    'You showed up, you learned, you improved. That is mastery.',
    'Strong foundations hold up under exam pressure.',
  ];
  static const _finished = [
    'You finished what you started, and that is what counts.',
    'Every gap you found is a gap you can now close.',
    'Progress is not always loud. Keep going.',
    'Mastery is a direction, not a finish line.',
    'You have the foundation. Now sharpen it.',
  ];
  static const _anyone = [
    'Small steps every day add up to big results.',
    'The work you did today is the marks you earn later.',
    'Learning sticks when you come back to it. You did.',
    'Curiosity got you here. Let it take you further.',
  ];

  final GlobalKey _cardKey = GlobalKey();
  late final List<String> _pool;
  int _message = 0;
  bool _busy = false;

  int get _average {
    final p = widget.stagePercents;
    if (p.isEmpty) return 0;
    return (p.reduce((a, b) => a + b) / p.length).round();
  }

  @override
  void initState() {
    super.initState();
    final avg = _average;
    _pool = [
      ...(avg >= 85 ? _distinction : avg >= 70 ? _strong : _finished),
      ..._anyone,
    ];
    _pickMessage();
  }

  /// A different message each time the certificate is opened.
  Future<void> _pickMessage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final n = prefs.getInt(_kRotateKey) ?? 0;
      await prefs.setInt(_kRotateKey, n + 1);
      if (!mounted) return;
      setState(() => _message = n % _pool.length);
    } catch (_) {
      if (!mounted) return;
      setState(() => _message = DateTime.now().second % _pool.length);
    }
  }

  void _nextMessage() => setState(() => _message = (_message + 1) % _pool.length);

  String get _date {
    final d = DateTime.now();
    return '${d.day} ${_months[d.month - 1]} ${d.year}';
  }

  String get _who {
    final n = widget.name.trim();
    return n.isEmpty ? 'Kepler Student' : n;
  }

  void _snack(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(msg)));
  }

  /// Takes a sharp picture of the card.
  Future<Uint8List?> _capture() async {
    try {
      await WidgetsBinding.instance.endOfFrame;
      final boundary = _cardKey.currentContext?.findRenderObject()
      as RenderRepaintBoundary?;
      if (boundary == null) return null;
      final image = await boundary.toImage(pixelRatio: 3);
      final data = await image.toByteData(format: ui.ImageByteFormat.png);
      return data?.buffer.asUint8List();
    } catch (e) {
      debugPrint('Certificate capture failed: $e');
      return null;
    }
  }

  String get _fileName {
    final safe = _who.replaceAll(RegExp(r'[^A-Za-z0-9]+'), '_');
    return 'Kepler_Study_Certificate_$safe.png';
  }

  Future<void> _download() async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      final bytes = await _capture();
      if (bytes == null) {
        _snack("Couldn't make the picture. Please try again.");
        return;
      }
      if (kIsWeb) {
        await downloadPngBytes(bytes, _fileName);
        _snack('Your certificate was downloaded.');
      } else {
        if (!await Gal.hasAccess(toAlbum: true)) {
          await Gal.requestAccess(toAlbum: true);
        }
        await Gal.putImageBytes(bytes, album: 'Kepler Study');
        _snack('Saved to your gallery.');
      }
    } catch (e) {
      debugPrint('Certificate download failed: $e');
      _snack("Couldn't save it. Check that Kepler may save photos.");
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _share() async {
    if (_busy) return;
    setState(() => _busy = true);
    final bytes = await _capture();
    try {
      if (bytes == null) {
        _snack("Couldn't make the picture. Please try again.");
        return;
      }
      final text = 'I completed the Quest of Mastery on Kepler Study '
          'with an average of $_average%. keplerstudy.com';
      final XFile file;
      if (kIsWeb) {
        file = XFile.fromData(bytes, mimeType: 'image/png', name: _fileName);
      } else {
        final dir = await getTemporaryDirectory();
        final path = '${dir.path}/$_fileName';
        await File(path).writeAsBytes(bytes, flush: true);
        file = XFile(path, mimeType: 'image/png');
      }
      await SharePlus.instance.share(ShareParams(text: text, files: [file]));
    } catch (e) {
      debugPrint('Certificate share failed: $e');
      // Browsers that cannot share files get a download instead.
      if (kIsWeb && bytes != null) {
        try {
          await downloadPngBytes(bytes, _fileName);
          _snack('Sharing is not available here, so it was downloaded.');
        } catch (_) {
          _snack("Couldn't share it. Please try again.");
        }
      } else {
        _snack("Couldn't share it. Please try again.");
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  // ------------------------------------------------------------------ UI

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bg = isDark ? const Color(0xFF0B1220) : _mist;
    final fg = isDark ? Colors.white : _navy;

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        foregroundColor: fg,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Quest complete',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(20, 4, 20, 8),
                    child: Column(
                      children: [
                        // Everything inside this boundary is what gets saved
                        // or shared.
                        RepaintBoundary(
                          key: _cardKey,
                          child: Container(
                            color: _mist,
                            padding: const EdgeInsets.all(18),
                            child: _card(),
                          ),
                        ),
                        TextButton(
                          onPressed: _nextMessage,
                          child: Text(
                            'Show another message',
                            style: TextStyle(
                              color: isDark ? Colors.white70 : _blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 16),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 13,
                        child: ElevatedButton(
                          onPressed: _busy ? null : _download,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _blue,
                            disabledBackgroundColor: _blue.withValues(alpha: 0.4),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text(
                            _busy ? 'Please wait…' : 'Download',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 10,
                        child: OutlinedButton(
                          onPressed: _busy ? null : _share,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: isDark ? Colors.white : _blue,
                            side: BorderSide(
                              color: isDark ? Colors.white54 : _blue,
                              width: 1.5,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: const Text(
                            'Share',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
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

  TextStyle _serif(double size, {Color color = _navy, bool italic = false}) {
    return TextStyle(
      fontFamily: 'Georgia',
      fontFamilyFallback: const ['Times New Roman', 'Noto Serif', 'serif'],
      fontSize: size,
      color: color,
      fontStyle: italic ? FontStyle.italic : FontStyle.normal,
      height: 1.25,
    );
  }

  Widget _rule() => Container(height: 0.8, color: _blue.withValues(alpha: 0.55));

  Widget _card() {
    final pcts = widget.stagePercents;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            color: _navy.withValues(alpha: 0.14),
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(border: Border.all(color: _blue, width: 1)),
        child: Container(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 18),
          decoration: BoxDecoration(
            border: Border.all(color: _blue.withValues(alpha: 0.6), width: 0.6),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo and name, kept small so the student's name leads.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/app_icon/Kepler.png',
                      width: 20,
                      height: 20,
                      errorBuilder: (_, __, ___) => const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'KEPLER STUDY',
                    style: TextStyle(
                      fontSize: 10.5,
                      letterSpacing: 2.4,
                      fontWeight: FontWeight.w700,
                      color: _navy,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              const Text(
                'CERTIFICATE OF MASTERY',
                style: TextStyle(
                  fontSize: 9.5,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w600,
                  color: _blue,
                ),
              ),
              const SizedBox(height: 16),
              Text('Awarded to', style: _serif(12.5, color: _ink, italic: true)),
              const SizedBox(height: 6),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(_who, maxLines: 1, style: _serif(34)),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  style: const TextStyle(fontSize: 11.5, color: _ink, height: 1.5),
                  children: [
                    const TextSpan(
                      text: 'for completing all five stages of the\n'
                          'Quest of Mastery in ',
                    ),
                    TextSpan(
                      text: widget.uploadName.trim().isEmpty
                          ? 'their notes'
                          : widget.uploadName.trim(),
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              _rule(),
              const SizedBox(height: 6),
              for (var i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      SizedBox(
                        width: 74,
                        child: Text(
                          'STAGE ${i + 1}',
                          style: const TextStyle(
                            fontSize: 10.5,
                            letterSpacing: 1.2,
                            color: _blue,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(_stageNames[i], style: _serif(14, color: _ink)),
                      ),
                      Text(
                        '${i < pcts.length ? pcts[i] : 0}%',
                        style: _serif(14.5),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 6),
              _rule(),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Expanded(
                    child: Text(
                      'AVERAGE',
                      style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 2.4,
                        color: _blue,
                      ),
                    ),
                  ),
                  Text('$_average%', style: _serif(36)),
                ],
              ),
              const SizedBox(height: 10),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Text(
                  _pool[_message],
                  key: ValueKey(_message),
                  textAlign: TextAlign.center,
                  style: _serif(12.5, color: _ink, italic: true),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '$_date  ·  KEPLERSTUDY.COM',
                style: TextStyle(
                  fontSize: 9.5,
                  letterSpacing: 1,
                  color: _ink.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}