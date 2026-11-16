import 'dart:async';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../services/quest_service.dart';
import 'quest_mascot.dart';

/// Where each stage sits on the 340 x 430 map.
const List<Offset> _kNodes = [
  Offset(70, 395),
  Offset(270, 300),
  Offset(70, 205),
  Offset(270, 110),
  Offset(170, 35),
];

enum _Kind { mountain, cloud, pine, tree, bush, pond, tent, fire, sign, flag }

class _Env {
  final _Kind kind;
  final double x; // percent of width
  final double y; // percent of height (bottom of the object)
  final double w; // logical pixels
  final List<String>? say;
  final Color a;
  final Color b;
  const _Env(
      this.kind,
      this.x,
      this.y,
      this.w, {
        this.say,
        this.a = const Color(0xFFC9D8EE),
        this.b = const Color(0xFFA9BEDD),
      });

  double get h {
    switch (kind) {
      case _Kind.mountain:
        return w * 0.78;
      case _Kind.cloud:
        return w * 0.5;
      case _Kind.pine:
        return w * 1.5;
      case _Kind.tree:
        return w * 1.3;
      case _Kind.bush:
        return w * 0.55;
      case _Kind.pond:
        return w * 0.42;
      case _Kind.tent:
        return w * 0.8;
      case _Kind.fire:
        return w * 1.1;
      case _Kind.sign:
        return w * 1.2;
      case _Kind.flag:
        return w * 1.5;
    }
  }

  double get vw {
    switch (kind) {
      case _Kind.pine:
      case _Kind.tree:
      case _Kind.bush:
      case _Kind.tent:
        return 60;
      case _Kind.fire:
        return 30;
      case _Kind.sign:
      case _Kind.flag:
        return 40;
      default:
        return 100;
    }
  }
}

const List<_Env> _kEnv = [
  _Env(_Kind.mountain, 86, 98, 96, say: MascotLines.mountain),
  _Env(_Kind.mountain, 12, 74, 100,
      say: MascotLines.mountain,
      a: Color(0xFFD5E0F2),
      b: Color(0xFFB3C6E3)),
  _Env(_Kind.mountain, 90, 50, 80, say: MascotLines.mountain),
  _Env(_Kind.mountain, 11, 26, 70,
      say: MascotLines.mountain,
      a: Color(0xFFD5E0F2),
      b: Color(0xFFB3C6E3)),
  _Env(_Kind.cloud, 22, 7, 70),
  _Env(_Kind.cloud, 80, 14, 54),
  _Env(_Kind.pine, 38, 82, 30,
      say: ['Roots first, then growth. Learn the basics well.']),
  _Env(_Kind.tree, 63, 93, 36,
      say: ['Strong trees grow slowly. So does knowledge.']),
  _Env(_Kind.pine, 33, 33, 28),
  _Env(_Kind.tree, 68, 17, 32, say: ['Growth is quiet. Keep going.']),
  _Env(_Kind.tree, 6, 54, 32),
  _Env(_Kind.bush, 48, 98, 34),
  _Env(_Kind.bush, 30, 60, 30),
  _Env(_Kind.bush, 72, 41, 30),
  _Env(_Kind.pond, 41, 73, 74, say: [
    'Still water runs deep. Slow and steady study works.',
    'Ripples start small. So does a big result.',
  ]),
  _Env(_Kind.tent, 6, 97, 46, say: [
    'Rest is part of the journey. Sleep helps memory.',
    'Camp stop! Water, a snack, then back to it.',
  ]),
  _Env(_Kind.fire, 15, 97, 20),
  _Env(_Kind.sign, 35, 94, 30,
      say: ['Every journey starts with the first stage.']),
  _Env(_Kind.flag, 38, 10, 30,
      say: ['Master is up there. Keep climbing!']),
];

/// The journey: scenery, five stage nodes, and Neo walking between them.
class QuestMap extends StatefulWidget {
  final int stage; // 1..5, where Neo stands
  final bool cleared;
  final bool mastered;
  final Map<int, StageRecord> records;
  final String name;
  final MascotBrain brain;
  final VoidCallback onAskTutor;

  const QuestMap({
    super.key,
    required this.stage,
    required this.cleared,
    required this.mastered,
    required this.records,
    required this.name,
    required this.brain,
    required this.onAskTutor,
  });

  @override
  State<QuestMap> createState() => _QuestMapState();
}

class _QuestMapState extends State<QuestMap>
    with SingleTickerProviderStateMixin {
  late final AnimationController _anim = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 26),
  )..repeat(reverse: true);

  late int _at = widget.stage - 1;
  bool _walking = false;
  bool _busy = false;
  QuestMood _mood = QuestMood.idle;
  String? _bubble;
  bool _loud = false;
  Timer? _bubbleTimer;
  Timer? _idleTimer;
  int _tick = 0;

  @override
  void initState() {
    super.initState();
    widget.brain.addListener(_onBrain);
    _idleTimer = Timer.periodic(const Duration(milliseconds: 7500), (_) {
      if (!mounted || _busy) return;
      _tick++;
      if (_tick % 3 == 1) {
        _say('Tap me to ask!', ms: 2600);
      } else if (_tick % 3 == 2) {
        _idleAction();
      } else {
        _inspire();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => _hello());
  }

  @override
  void didUpdateWidget(covariant QuestMap old) {
    super.didUpdateWidget(old);
    if (old.stage != widget.stage) {
      if (widget.stage > old.stage) {
        _arrive(old.stage - 1, widget.stage - 1);
      } else {
        setState(() => _at = widget.stage - 1);
        _say("It slipped a little. Let's refresh it.", ms: 3200);
      }
    }
  }

  @override
  void dispose() {
    widget.brain.removeListener(_onBrain);
    _bubbleTimer?.cancel();
    _idleTimer?.cancel();
    _anim.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------- Neo

  QuestMood get _restMood =>
      widget.brain.tired ? QuestMood.tired : QuestMood.idle;

  void _onBrain() {
    if (!mounted) return;
    final line = widget.brain.announce;
    widget.brain.consumeAnnounce();
    setState(() => _mood = _busy ? _mood : _restMood);
    if (line != null) {
      _say(line, ms: 3200, loud: widget.brain.outfit == QuestOutfit.viking);
    }
  }

  void _say(String text, {int ms = 3000, bool loud = false}) {
    if (!mounted) return;
    setState(() {
      _bubble = text;
      _loud = loud;
    });
    _bubbleTimer?.cancel();
    _bubbleTimer = Timer(Duration(milliseconds: ms), () {
      if (mounted) setState(() => _bubble = null);
    });
  }

  Future<void> _react(QuestMood m, int ms) async {
    if (!mounted) return;
    setState(() => _mood = m);
    await Future<void>.delayed(Duration(milliseconds: ms));
    if (mounted) setState(() => _mood = _restMood);
  }

  Future<void> _walkTo(int i) async {
    if (!mounted) return;
    setState(() {
      _walking = true;
      _at = i;
    });
    await Future<void>.delayed(const Duration(milliseconds: 1350));
    if (mounted) setState(() => _walking = false);
  }

  Future<void> _hello() async {
    if (!mounted || _busy) return;
    _busy = true;
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final who = widget.name.trim().isEmpty ? 'explorer' : widget.name.trim();
    _say('Hello, $who!', ms: 3400);
    await _react(QuestMood.wave, 3300);
    _busy = false;
  }

  Future<void> _arrive(int from, int to) async {
    _busy = true;
    setState(() => _at = from);
    await Future<void>.delayed(const Duration(milliseconds: 150));
    await _walkTo(to);
    await _react(QuestMood.happy, 1600);
    _say('Welcome to ${kQuestStages[to]}!', ms: 2800);
    _busy = false;
  }

  Future<void> _inspire() async {
    final loud = widget.brain.outfit == QuestOutfit.viking && !widget.brain.tired;
    _say(widget.brain.idleLine(), ms: loud ? 4200 : 3600, loud: loud);
    if (loud) await _react(QuestMood.shout, 2300);
  }

  Future<void> _idleAction() async {
    if (_busy) return;
    _busy = true;
    final r = math.Random().nextDouble();
    try {
      if (widget.brain.tired) {
        await _react(QuestMood.stretch, 2300);
        _say(MascotLines.pick(MascotLines.tired), ms: 3400);
        await Future<void>.delayed(const Duration(milliseconds: 1200));
      } else if (r < 0.3) {
        await _react(QuestMood.scratch, 2800);
      } else if (r < 0.55) {
        _say('Ahh, stretch break.', ms: 2200);
        await _react(QuestMood.stretch, 2300);
      } else if (r < 0.8) {
        await _inspire();
        await _react(QuestMood.happy, 1400);
      } else {
        _say(
          MascotLines.pick(const [
            'You are doing great.',
            'Proud of you for showing up.',
            'Keep going, I believe in you.',
          ]),
          ms: 3200,
        );
        await _react(QuestMood.happy, 1400);
      }
    } finally {
      _busy = false;
    }
  }

  Future<void> _tapNode(int i) async {
    if (_busy) return;
    _busy = true;
    final cur = widget.stage - 1;
    try {
      if (i == cur) {
        final rec = widget.records[i + 1];
        final marks = (rec != null && rec.possible > 0)
            ? ' Best so far: ${fmtMarks(rec.best)} of ${fmtMarks(rec.possible)} marks.'
            : '';
        _say(
          widget.mastered
              ? 'You mastered this quest!'
              : widget.cleared
              ? 'Cleared! Next stage opens soon.$marks'
              : 'You are here.$marks',
          ms: 3400,
        );
        await Future<void>.delayed(const Duration(milliseconds: 600));
      } else if (i < cur) {
        await _walkTo(i);
        if (!mounted) return;
        final rec = widget.records[i + 1];
        _say(
          rec != null && rec.possible > 0
              ? '${kQuestStages[i]}: ${fmtMarks(rec.best)} of ${fmtMarks(rec.possible)} marks. Well done!'
              : 'You cleared this stage. Well done!',
          ms: 3000,
        );
        await _react(QuestMood.happy, 1500);
        await _walkTo(cur);
      } else {
        await _walkTo(i);
        if (!mounted) return;
        setState(() => _mood = QuestMood.tilt);
        _say(
          widget.cleared
              ? 'Not yet! ${kQuestStages[cur + 1]} opens after a short rest.'
              : 'Hmm, not yet! Finish ${kQuestStages[cur]} first.',
          ms: 3600,
        );
        await Future<void>.delayed(const Duration(milliseconds: 1100));
        if (mounted) setState(() => _mood = QuestMood.point);
        await Future<void>.delayed(const Duration(milliseconds: 2600));
        if (mounted) setState(() => _mood = _restMood);
        await _walkTo(cur);
      }
    } finally {
      _busy = false;
    }
  }

  void _tapEnv(_Env e) {
    if (_busy || e.say == null) return;
    _say(MascotLines.pick(e.say!), ms: 3800);
  }

  // -------------------------------------------------------------- build

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, box) {
        final w = box.maxWidth;
        final h = box.maxHeight;
        Offset px(Offset n) => Offset(n.dx / 340 * w, n.dy / 430 * h);

        final side = _kNodes[_at].dx > 170 ? -1.0 : 1.0;
        final base = px(_kNodes[_at]);
        final left = base.dx + side * 52 - 38;
        final top = base.dy + 30 - 114;
        final below = top < 90;

        final mood = _walking ? QuestMood.idle : _mood;
        final restMood = (mood == QuestMood.idle && widget.brain.tired)
            ? QuestMood.tired
            : mood;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CustomPaint(
                  painter: _ScenePainter(anim: _anim),
                ),
              ),
            ),

            // tappable scenery
            for (final e in _kEnv)
              if (e.say != null)
                Positioned(
                  left: e.x / 100 * w - e.w / 2,
                  top: e.y / 100 * h - e.h,
                  width: e.w,
                  height: e.h,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => _tapEnv(e),
                  ),
                ),

            // stage nodes
            for (var i = 0; i < 5; i++) _node(i, px(_kNodes[i])),

            // Neo
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1300),
              curve: Curves.easeInOut,
              left: left,
              top: top,
              width: 76,
              height: 114,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      if (_busy) return;
                      _react(QuestMood.happy, 900);
                      widget.onAskTutor();
                    },
                    child: QuestMascot(
                      width: 76,
                      outfit: widget.brain.outfit,
                      mood: restMood,
                      walking: _walking,
                    ),
                  ),
                  Positioned(
                    left: -47,
                    width: 170,
                    top: below ? 118 : null,
                    bottom: below ? null : 118,
                    child: IgnorePointer(
                      child: AnimatedOpacity(
                        opacity: _bubble == null ? 0 : 1,
                        duration: const Duration(milliseconds: 220),
                        child: _Bubble(
                          text: _bubble ?? '',
                          loud: _loud,
                          below: below,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _node(int i, Offset c) {
    final stageNo = i + 1;
    final done = stageNo < widget.stage ||
        (stageNo == widget.stage && (widget.cleared || widget.mastered));
    final current = stageNo == widget.stage;
    final rec = widget.records[stageNo];

    Color fill = Colors.white;
    Color border = const Color(0xFFB9C4D6);
    Color ink = const Color(0xFF64748B);
    if (done) {
      fill = const Color(0xFF234E84);
      border = fill;
      ink = Colors.white;
    }
    if (current) {
      fill = done ? const Color(0xFF16A34A) : const Color(0xFF4F46E5);
      border = fill;
      ink = Colors.white;
    }

    return Positioned(
      left: c.dx - 40,
      top: c.dy - 21,
      width: 80,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _tapNode(i),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 42,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: fill,
                border: Border.all(color: border, width: 3),
                boxShadow: current
                    ? [
                  BoxShadow(
                    color: fill.withValues(alpha: 0.22),
                    spreadRadius: 6,
                  ),
                ]
                    : null,
              ),
              child: done
                  ? const Icon(Icons.check_rounded, color: Colors.white, size: 22)
                  : Text(
                '$stageNo',
                style: TextStyle(
                  color: ink,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              kQuestStages[i],
              style: TextStyle(
                fontSize: 10.5,
                fontWeight: FontWeight.w800,
                color: current ? const Color(0xFF4F46E5) : const Color(0xFF3B4A63),
                shadows: const [
                  Shadow(color: Colors.white, blurRadius: 4),
                  Shadow(color: Colors.white, blurRadius: 4),
                ],
              ),
            ),
            if (rec != null && rec.possible > 0)
              Text(
                '${fmtMarks(rec.best)}/${fmtMarks(rec.possible)}',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF16803C),
                  shadows: [
                    Shadow(color: Colors.white, blurRadius: 4),
                    Shadow(color: Colors.white, blurRadius: 4),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  final String text;
  final bool loud;
  final bool below;
  const _Bubble({required this.text, required this.loud, required this.below});

  @override
  Widget build(BuildContext context) {
    final bg = loud ? const Color(0xFF7F1D1D) : Colors.white;
    final fg = loud ? Colors.white : const Color(0xFF0F172A);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: loud ? bg : const Color(0xFFE2E8F0), width: 1.5),
        boxShadow: const [
          BoxShadow(blurRadius: 12, color: Color(0x24000000), offset: Offset(0, 4)),
        ],
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: fg,
          fontSize: loud ? 12.5 : 12,
          fontWeight: FontWeight.w700,
          height: 1.3,
        ),
      ),
    );
  }
}

// =====================================================================
// Scenery
// =====================================================================

class _ScenePainter extends CustomPainter {
  final Animation<double> anim;
  _ScenePainter({required this.anim}) : super(repaint: anim);

  Paint _f(Color c, [double a = 1]) => Paint()..color = c.withValues(alpha: a);

  void _oval(Canvas c, double cx, double cy, double rx, double ry, Paint p) {
    c.drawOval(
      Rect.fromCenter(center: Offset(cx, cy), width: rx * 2, height: ry * 2),
      p,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // sky to meadow
    canvas.drawRect(
      Rect.fromLTWH(0, 0, w, h),
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFE6F2FF), Color(0xFFEEF7F0), Color(0xFFD9EEDA)],
          stops: [0, 0.48, 1],
        ).createShader(Rect.fromLTWH(0, 0, w, h)),
    );
    canvas.drawOval(Rect.fromLTWH(-0.25 * w, 0.78 * h, 0.85 * w, 0.38 * h), _f(const Color(0xFFCBE9C8)));
    canvas.drawOval(Rect.fromLTWH(0.40 * w, 0.78 * h, 0.90 * w, 0.42 * h), _f(const Color(0xFFBFE3BE)));

    // dotted trail
    final trail = Path()
      ..moveTo(70, 395)
      ..cubicTo(70, 345, 270, 350, 270, 300)
      ..cubicTo(270, 250, 70, 255, 70, 205)
      ..cubicTo(70, 155, 270, 160, 270, 110)
      ..cubicTo(270, 70, 170, 55, 170, 35);
    final scaled = trail.transform(Float64List.fromList(<double>[
      w / 340, 0, 0, 0, //
      0, h / 430, 0, 0, //
      0, 0, 1, 0, //
      0, 0, 0, 1,
    ]));
    final dot = _f(const Color(0xFFE2CF9F));
    for (final metric in scaled.computeMetrics()) {
      for (var d = 0.0; d < metric.length; d += 13) {
        final tan = metric.getTangentForOffset(d);
        if (tan != null) canvas.drawCircle(tan.position, 2.3, dot);
      }
    }

    // scenery, back to front
    final order = [..._kEnv]..sort((a, b) => a.y.compareTo(b.y));
    final drift = (anim.value - 0.5) * 26;
    for (final e in order) {
      final left = e.x / 100 * w - e.w / 2 + (e.kind == _Kind.cloud ? drift : 0);
      final top = e.y / 100 * h - e.h;
      canvas.save();
      canvas.translate(left, top);
      final k = e.w / e.vw;
      canvas.scale(k);
      _draw(canvas, e);
      canvas.restore();
    }
  }

  void _draw(Canvas c, _Env e) {
    switch (e.kind) {
      case _Kind.mountain:
        final body = Path()
          ..moveTo(0, 78)
          ..lineTo(38, 10)
          ..lineTo(56, 40)
          ..lineTo(70, 24)
          ..lineTo(100, 78)
          ..close();
        c.drawPath(body, _f(e.a));
        final snow = Path()
          ..moveTo(38, 10)
          ..lineTo(56, 40)
          ..lineTo(46, 37)
          ..lineTo(40, 47)
          ..lineTo(28, 35)
          ..close();
        c.drawPath(snow, _f(Colors.white, 0.9));
        final shade = Path()
          ..moveTo(70, 24)
          ..lineTo(100, 78)
          ..lineTo(70, 78)
          ..close();
        c.drawPath(shade, _f(e.b, 0.6));
        _oval(c, 14, 76, 14, 5, _f(const Color(0xFF6FBF86), 0.8));
        _oval(c, 84, 76, 15, 5, _f(const Color(0xFF6FBF86), 0.8));
        break;
      case _Kind.cloud:
        final p = _f(Colors.white);
        _oval(c, 32, 34, 26, 14, p);
        _oval(c, 58, 26, 26, 18, p);
        _oval(c, 76, 36, 20, 11, p);
        break;
      case _Kind.pine:
        c.drawRect(const Rect.fromLTWH(26, 68, 8, 18), _f(const Color(0xFF8A5A30)));
        void tri(double ax, double ay, double bx, double by, double cx, double cy, Color col) {
          c.drawPath(
            Path()
              ..moveTo(ax, ay)
              ..lineTo(bx, by)
              ..lineTo(cx, cy)
              ..close(),
            _f(col),
          );
        }
        tri(30, 4, 52, 36, 8, 36, const Color(0xFF2F8F57));
        tri(30, 22, 56, 56, 4, 56, const Color(0xFF3EA568));
        tri(30, 40, 58, 76, 2, 76, const Color(0xFF2F8F57));
        break;
      case _Kind.tree:
        c.drawRect(const Rect.fromLTWH(26, 44, 8, 30), _f(const Color(0xFF8A5A30)));
        c.drawCircle(const Offset(30, 30), 24, _f(const Color(0xFF3EA568)));
        c.drawCircle(const Offset(18, 38), 14, _f(const Color(0xFF58B36E)));
        c.drawCircle(const Offset(43, 36), 15, _f(const Color(0xFF2F8F57)));
        break;
      case _Kind.bush:
        _oval(c, 18, 22, 18, 11, _f(const Color(0xFF58B36E)));
        _oval(c, 40, 20, 20, 13, _f(const Color(0xFF3EA568)));
        final berry = _f(const Color(0xFFDC2626));
        c.drawCircle(const Offset(24, 18), 2.2, berry);
        c.drawCircle(const Offset(44, 14), 2.2, berry);
        c.drawCircle(const Offset(33, 23), 2.2, berry);
        break;
      case _Kind.pond:
        _oval(c, 50, 22, 48, 18, _f(const Color(0xFF7DC3F0)));
        _oval(c, 50, 20, 40, 13, _f(const Color(0xFF9AD3F5)));
        _oval(c, 34, 20, 8, 2.6, _f(Colors.white, 0.6));
        _oval(c, 70, 26, 6, 2, _f(Colors.white, 0.5));
        _oval(c, 62, 12, 6, 3, _f(const Color(0xFF3EA568)));
        break;
      case _Kind.tent:
        Path tp(List<Offset> pts) {
          final p = Path()..moveTo(pts.first.dx, pts.first.dy);
          for (final o in pts.skip(1)) {
            p.lineTo(o.dx, o.dy);
          }
          return p..close();
        }
        c.drawPath(tp(const [Offset(30, 4), Offset(58, 44), Offset(2, 44)]), _f(const Color(0xFFE9A15B)));
        c.drawPath(tp(const [Offset(30, 4), Offset(38, 44), Offset(22, 44)]), _f(const Color(0xFFC47F3D)));
        c.drawPath(tp(const [Offset(30, 18), Offset(38, 44), Offset(22, 44)]), _f(const Color(0xFF7A4B22)));
        break;
      case _Kind.fire:
        final log1 = Paint()
          ..color = const Color(0xFF8A5A30)
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round;
        final log2 = Paint()
          ..color = const Color(0xFF6B4423)
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round;
        c.drawLine(const Offset(4, 30), const Offset(26, 26), log1);
        c.drawLine(const Offset(4, 26), const Offset(26, 30), log2);
        final flick = 1 + 0.1 * math.sin(DateTime.now().millisecondsSinceEpoch / 90);
        c.save();
        c.translate(15, 28);
        c.scale(flick, 2 - flick);
        c.translate(-15, -28);
        final fl = Path()
          ..moveTo(15, 6)
          ..quadraticBezierTo(24, 16, 20, 24)
          ..quadraticBezierTo(15, 28, 10, 24)
          ..quadraticBezierTo(6, 16, 15, 6)
          ..close();
        c.drawPath(fl, _f(const Color(0xFFF97316)));
        final fl2 = Path()
          ..moveTo(15, 14)
          ..quadraticBezierTo(20, 20, 17, 24)
          ..quadraticBezierTo(14, 26, 12, 24)
          ..quadraticBezierTo(10, 20, 15, 14)
          ..close();
        c.drawPath(fl2, _f(const Color(0xFFFCD34D)));
        c.restore();
        break;
      case _Kind.sign:
        c.drawRect(const Rect.fromLTWH(18, 14, 5, 32), _f(const Color(0xFF8A5A30)));
        final board = Path()
          ..moveTo(4, 6)
          ..lineTo(30, 6)
          ..lineTo(36, 12)
          ..lineTo(30, 18)
          ..lineTo(4, 18)
          ..close();
        c.drawPath(board, _f(const Color(0xFFE9C48B)));
        c.drawPath(
          board,
          Paint()
            ..color = const Color(0xFF8A5A30)
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.5,
        );
        break;
      case _Kind.flag:
        c.drawRect(const Rect.fromLTWH(8, 4, 3.5, 54), _f(const Color(0xFF8A5A30)));
        final f = Path()
          ..moveTo(11.5, 6)
          ..lineTo(36, 6)
          ..lineTo(30, 14)
          ..lineTo(36, 22)
          ..lineTo(11.5, 22)
          ..close();
        c.drawPath(f, _f(const Color(0xFF4F46E5)));
        break;
    }
  }

  @override
  bool shouldRepaint(covariant _ScenePainter old) => true;
}