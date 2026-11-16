import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

enum QuestOutfit { scholar, energetic, viking, explorer, winter }

enum QuestMood {
  idle,
  happy,
  partial,
  wrong,
  tired,
  tilt,
  point,
  wave,
  shout,
  stretch,
  scratch,
}

/// Neo, the puppy. Drawn in code so it can blink, wag, and change outfit.
class QuestMascot extends StatefulWidget {
  final double width;
  final QuestOutfit outfit;
  final QuestMood mood;
  final bool walking;

  const QuestMascot({
    super.key,
    this.width = 76,
    this.outfit = QuestOutfit.scholar,
    this.mood = QuestMood.idle,
    this.walking = false,
  });

  @override
  State<QuestMascot> createState() => _QuestMascotState();
}

class _QuestMascotState extends State<QuestMascot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 5200),
  )..repeat();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.width * 1.5,
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: _c,
          builder: (_, __) => CustomPaint(
            painter: _PuppyPainter(
              t: _c.value,
              outfit: widget.outfit,
              mood: widget.mood,
              walking: widget.walking,
            ),
          ),
        ),
      ),
    );
  }
}

class _Brow {
  final double x1, y1, cx, cy, x2, y2;
  const _Brow(this.x1, this.y1, this.cx, this.cy, this.x2, this.y2);
}

class _PuppyPainter extends CustomPainter {
  final double t;
  final QuestOutfit outfit;
  final QuestMood mood;
  final bool walking;

  _PuppyPainter({
    required this.t,
    required this.outfit,
    required this.mood,
    required this.walking,
  });

  static const _fur = Color(0xFFF3D7A8);
  static const _furDark = Color(0xFFD9A86C);
  static const _ear = Color(0xFFC98F55);
  static const _patch = Color(0xFFE6BE86);
  static const _cream = Color(0xFFFFF1D6);
  static const _body = Color(0xFF234E84);
  static const _collar = Color(0xFF1B3F6E);
  static const _shoe = Color(0xFF4F46E5);
  static const _ink = Color(0xFF2A1B1B);
  static const _mouthIn = Color(0xFF7A2B3A);
  static const _tongue = Color(0xFFF58BA0);

  static const _tau = math.pi * 2;

  Paint _f(Color c, [double alpha = 1]) =>
      Paint()..color = c.withValues(alpha: alpha);

  Paint _s(Color c, double w) => Paint()
    ..color = c
    ..style = PaintingStyle.stroke
    ..strokeWidth = w
    ..strokeCap = StrokeCap.round
    ..strokeJoin = StrokeJoin.round;

  void _oval(Canvas c, double cx, double cy, double rx, double ry, Paint p) {
    c.drawOval(Rect.fromCenter(center: Offset(cx, cy), width: rx * 2, height: ry * 2), p);
  }

  void _rrect(Canvas c, double x, double y, double w, double h, double r, Paint p) {
    c.drawRRect(
      RRect.fromRectAndRadius(Rect.fromLTWH(x, y, w, h), Radius.circular(r)),
      p,
    );
  }

  void _rot(Canvas c, double ox, double oy, double deg, void Function() draw) {
    c.save();
    c.translate(ox, oy);
    c.rotate(deg * math.pi / 180);
    c.translate(-ox, -oy);
    draw();
    c.restore();
  }

  double _blink() {
    double b(double centre, double width) {
      final d = (t - centre).abs();
      return d < width ? 1 - d / width : 0;
    }

    return math.max(b(0.915, 0.02), b(0.36, 0.02));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final k = size.width / 100;
    canvas.save();
    canvas.scale(k);

    // ---- pose from mood ----
    double armL = 0, armR = 0, head = 0, headDy = 0, earL = 0, earR = 0;
    double tailDeg = 0, shakeX = 0, hop = 0, scaleY = 1;
    var tailCycles = 10.0;
    var lids = false;

    switch (mood) {
      case QuestMood.happy:
        armL = 155;
        armR = -155;
        hop = -14 * math.sin(_tau * t * 5).abs();
        tailCycles = 26;
        break;
      case QuestMood.partial:
        head = -10;
        armL = 38;
        armR = -38;
        tailCycles = 4;
        break;
      case QuestMood.wrong:
        head = 7;
        headDy = 2;
        armL = -8;
        armR = 8;
        earL = 14;
        earR = -14;
        break;
      case QuestMood.tilt:
        head = -16;
        break;
      case QuestMood.point:
        armR = -88;
        break;
      case QuestMood.wave:
        armR = -141 + 19 * math.sin(_tau * t * 12);
        break;
      case QuestMood.scratch:
        armR = -157 + 8 * math.sin(_tau * t * 20);
        head = -6;
        break;
      case QuestMood.stretch:
        armL = 172;
        armR = -172;
        scaleY = 1.04;
        break;
      case QuestMood.tired:
        head = 6;
        headDy = 3;
        armL = -6;
        armR = 6;
        lids = true;
        tailCycles = 3;
        break;
      case QuestMood.shout:
        armR = -163 + 7 * math.sin(_tau * t * 24);
        shakeX = 1.4 * math.sin(_tau * t * 60);
        tailCycles = 26;
        break;
      case QuestMood.idle:
        break;
    }

    if (mood == QuestMood.wrong) {
      tailDeg = 30;
    } else {
      tailDeg = 15 * math.sin(_tau * t * tailCycles);
    }
    if (mood != QuestMood.wrong) {
      earL = 2.5 * math.sin(_tau * t * 2);
      earR = -earL;
    }

    double legL = 0, legR = 0, bobY = -2.5 * math.sin(_tau * t * 2);
    if (walking) {
      final sw = 24 * math.sin(_tau * t * 12);
      legL = sw;
      legR = -sw;
      armL = -sw;
      armR = sw;
      bobY = -3 * math.sin(_tau * t * 12).abs();
      tailCycles = 20;
      tailDeg = 15 * math.sin(_tau * t * tailCycles);
    }

    // ---- ground shadow ----
    _oval(canvas, 50, 144, 28, 4.5, _f(const Color(0xFF0F172A), 0.13));

    // ---- whole body (bob, hop, shake, stretch) ----
    canvas.save();
    canvas.translate(shakeX, bobY + hop);
    if (scaleY != 1) {
      canvas.translate(0, 140);
      canvas.scale(1, scaleY);
      canvas.translate(0, -140);
    }

    // tail
    _rot(canvas, 64, 98, tailDeg, () {
      final p = Path()
        ..moveTo(64, 100)
        ..quadraticBezierTo(88, 96, 85, 70);
      canvas.drawPath(p, _s(_fur, 9));
      canvas.drawCircle(const Offset(85, 68), 5.5, _f(_furDark));
    });

    // things behind the body
    if (outfit == QuestOutfit.viking) {
      final cape = Path()
        ..moveTo(33, 66)
        ..lineTo(67, 66)
        ..lineTo(82, 120)
        ..lineTo(18, 120)
        ..close();
      canvas.drawPath(cape, _f(const Color(0xFFB91C1C)));
    }
    if (outfit == QuestOutfit.explorer) {
      _rrect(canvas, 60, 66, 18, 32, 6, _f(const Color(0xFFC8905F)));
      _rrect(canvas, 63, 72, 12, 8, 3, _f(const Color(0xFFA9744F)));
    }

    // legs and shoes
    void leg(double x, double deg) {
      _rot(canvas, x, 102, deg, () {
        canvas.drawLine(Offset(x, 102), Offset(x, 126), _s(_fur, 11));
        _oval(canvas, x - (x < 50 ? 1 : -1), 132, 11.5, 6.5, _f(_shoe));
        _oval(canvas, x - (x < 50 ? 1 : -1), 136, 11.5, 2.6, _f(Colors.white));
      });
    }

    leg(43, legL);
    leg(57, legR);

    // paws for an arm
    void arm(double ox, double oy, double ex, double ey, double deg) {
      _rot(canvas, ox, oy, deg, () {
        canvas.drawLine(Offset(ox, oy), Offset(ex, ey), _s(_fur, 9.5));
        canvas.drawCircle(Offset(ex + (ex < ox ? -1 : 1), ey + 4), 6.4, _f(_fur));
        canvas.drawCircle(Offset(ex + (ex < ox ? -3 : 0), ey + 5.5), 1, _f(_furDark));
        canvas.drawCircle(Offset(ex + (ex < ox ? 1 : 4), ey + 5.5), 1, _f(_furDark));
      });
    }

    arm(34, 72, 22, 95, armL);

    // body
    _rrect(canvas, 32, 62, 36, 47, 16, _f(_body));
    _oval(canvas, 50, 88, 9.5, 11, _f(_cream, 0.95));
    _rrect(canvas, 44, 62, 12, 5, 2.5, _f(_collar));

    if (outfit == QuestOutfit.energetic) {
      _rrect(canvas, 30, 100, 40, 5, 2, _f(const Color(0xFFF97316)));
    }
    if (outfit == QuestOutfit.winter) {
      _rrect(canvas, 35, 63, 30, 9, 4.5, _f(const Color(0xFFDC2626)));
      _rrect(canvas, 58, 68, 8, 20, 3, _f(const Color(0xFFDC2626)));
      canvas.drawRect(const Rect.fromLTWH(58, 76, 8, 3), _f(const Color(0xFFFCA5A5)));
    }

    arm(66, 72, 78, 95, armR);

    // ---- head ----
    _rot(canvas, 50, 64 + headDy, head, () {
      canvas.save();
      canvas.translate(0, headDy);

      // ears
      _rot(canvas, 33, 26, earL, () {
        final p = Path()
          ..moveTo(30, 24)
          ..quadraticBezierTo(12, 22, 13, 46)
          ..quadraticBezierTo(14, 62, 27, 56)
          ..quadraticBezierTo(34, 44, 34, 30)
          ..close();
        canvas.drawPath(p, _f(_ear));
      });
      _rot(canvas, 67, 26, earR, () {
        final p = Path()
          ..moveTo(70, 24)
          ..quadraticBezierTo(88, 22, 87, 46)
          ..quadraticBezierTo(86, 62, 73, 56)
          ..quadraticBezierTo(66, 44, 66, 30)
          ..close();
        canvas.drawPath(p, _f(_ear));
      });

      _oval(canvas, 50, 42, 30, 26, _f(_fur));
      _oval(canvas, 62, 38, 11, 12, _f(_patch, 0.85));
      _oval(canvas, 50, 54, 15.5, 11.5, _f(_cream));
      canvas.drawCircle(const Offset(33, 52), 4.2, _f(const Color(0xFFF9A8A8), 0.6));
      canvas.drawCircle(const Offset(67, 52), 4.2, _f(const Color(0xFFF9A8A8), 0.6));

      // eyes (blink squashes them about y = 41)
      final blink = _blink();
      canvas.save();
      canvas.translate(0, 41);
      canvas.scale(1, 1 - 0.92 * blink);
      canvas.translate(0, -41);
      _oval(canvas, 40, 40, 4.8, 6, _f(_ink));
      _oval(canvas, 60, 40, 4.8, 6, _f(_ink));
      canvas.drawCircle(const Offset(38.4, 37.6), 2, _f(Colors.white));
      canvas.drawCircle(const Offset(42.2, 43), 1, _f(Colors.white));
      canvas.drawCircle(const Offset(58.4, 37.6), 2, _f(Colors.white));
      canvas.drawCircle(const Offset(62.2, 43), 1, _f(Colors.white));
      canvas.restore();

      if (lids) {
        for (final x in const [40.0, 60.0]) {
          final lid = Path()
            ..moveTo(x - 7, 40)
            ..quadraticBezierTo(x, 28, x + 7, 40)
            ..close();
          canvas.drawPath(lid, _f(_fur));
          canvas.drawLine(Offset(x - 6, 40.4), Offset(x + 6, 40.4), _s(_ink, 1.6));
          final bag = Path()
            ..moveTo(x - 5, 47)
            ..quadraticBezierTo(x, 50, x + 5, 47);
          canvas.drawPath(bag, _s(const Color(0xFFB8895C), 1.6));
        }
      }

      // brows
      final brows = _brows();
      for (final b in brows) {
        final p = Path()
          ..moveTo(b.x1, b.y1)
          ..quadraticBezierTo(b.cx, b.cy, b.x2, b.y2);
        canvas.drawPath(p, _s(const Color(0xFF8A5A30), 2.2));
      }

      // nose
      _oval(canvas, 50, 48, 5.8, 4, _f(_ink));
      _oval(canvas, 48.4, 46.8, 1.8, 1, _f(Colors.white, 0.8));
      canvas.drawLine(const Offset(50, 52), const Offset(50, 56), _s(_ink, 1.8));

      _mouth(canvas);

      _hat(canvas);
      canvas.restore();
    });

    canvas.restore();
    canvas.restore();
  }

  List<_Brow> _brows() {
    switch (mood) {
      case QuestMood.happy:
      case QuestMood.wave:
        return const [
          _Brow(35, 30, 40, 26, 45, 30),
          _Brow(55, 30, 60, 26, 65, 30),
        ];
      case QuestMood.wrong:
        return const [
          _Brow(35, 29, 40, 31, 45, 33),
          _Brow(55, 33, 60, 31, 65, 29),
        ];
      case QuestMood.partial:
      case QuestMood.tilt:
      case QuestMood.point:
        return const [
          _Brow(35, 33, 40, 31.5, 45, 30),
          _Brow(55, 30, 60, 31.5, 65, 33),
        ];
      case QuestMood.tired:
        return const [
          _Brow(35, 33, 40, 33.5, 45, 34),
          _Brow(55, 34, 60, 33.5, 65, 33),
        ];
      case QuestMood.shout:
        return const [
          _Brow(34, 29, 40, 31.5, 46, 34),
          _Brow(54, 34, 60, 31.5, 66, 29),
        ];
      default:
        return const [
          _Brow(35, 31, 40, 31, 45, 31),
          _Brow(55, 31, 60, 31, 65, 31),
        ];
    }
  }

  void _openMouth(Canvas c, double x1, double x2, double bottom, bool tongue) {
    final p = Path()
      ..moveTo(x1, 55)
      ..quadraticBezierTo(50, bottom, x2, 55)
      ..close();
    c.drawPath(p, _f(_mouthIn));
    if (tongue) _oval(c, 50, 62.5, 4.2, 4.4, _f(_tongue));
  }

  void _mouth(Canvas c) {
    Path curve(double x1, double y1, double cy, double x2, double y2) => Path()
      ..moveTo(x1, y1)
      ..quadraticBezierTo(50, cy, x2, y2);

    switch (mood) {
      case QuestMood.happy:
        _openMouth(c, 41, 59, 71, true);
        break;
      case QuestMood.wave:
        c.drawPath(curve(41, 55, 66, 59, 55), _s(_ink, 2.2));
        break;
      case QuestMood.stretch:
        _openMouth(c, 44, 56, 73, false);
        break;
      case QuestMood.shout:
        _openMouth(c, 39, 61, 77, false);
        break;
      case QuestMood.partial:
      case QuestMood.point:
        c.drawLine(const Offset(43, 59), const Offset(57, 58), _s(_ink, 2.2));
        break;
      case QuestMood.wrong:
        c.drawPath(curve(42, 61, 54, 58, 61), _s(_ink, 2.2));
        break;
      case QuestMood.tired:
        c.drawPath(curve(45, 59, 57, 55, 59), _s(_ink, 2.2));
        break;
      default:
        c.drawPath(curve(42, 56, 61, 58, 56), _s(_ink, 2.2));
    }
  }

  void _hat(Canvas c) {
    switch (outfit) {
      case QuestOutfit.scholar:
        final cap = Path()
          ..moveTo(28, 22)
          ..lineTo(50, 12)
          ..lineTo(72, 22)
          ..lineTo(50, 32)
          ..close();
        c.drawPath(cap, _f(const Color(0xFF4F46E5)));
        _rrect(c, 40, 23, 20, 9, 3, _f(const Color(0xFF3C37C9)));
        c.drawLine(const Offset(69, 22), const Offset(69, 36), _s(const Color(0xFFFBBF24), 2.4));
        c.drawCircle(const Offset(69, 38), 2.7, _f(const Color(0xFFFBBF24)));
        break;
      case QuestOutfit.viking:
        final dome = Path()
          ..moveTo(26, 30)
          ..quadraticBezierTo(26, 6, 50, 6)
          ..quadraticBezierTo(74, 6, 74, 30)
          ..close();
        c.drawPath(dome, _f(const Color(0xFF9AA7B8)));
        c.drawRect(const Rect.fromLTWH(26, 26, 48, 6), _f(const Color(0xFF6B7A90)));
        c.drawRect(const Rect.fromLTWH(48, 26, 4, 14), _f(const Color(0xFF6B7A90)));
        c.drawCircle(const Offset(34, 29), 1.3, _f(const Color(0xFFE5ECF6)));
        c.drawCircle(const Offset(66, 29), 1.3, _f(const Color(0xFFE5ECF6)));
        final hornL = Path()
          ..moveTo(27, 24)
          ..quadraticBezierTo(6, 24, 9, 2)
          ..quadraticBezierTo(18, 15, 30, 17)
          ..close();
        final hornR = Path()
          ..moveTo(73, 24)
          ..quadraticBezierTo(94, 24, 91, 2)
          ..quadraticBezierTo(82, 15, 70, 17)
          ..close();
        for (final h in [hornL, hornR]) {
          c.drawPath(h, _f(const Color(0xFFFFF4DC)));
          c.drawPath(h, _s(const Color(0xFFE0CDA2), 1.2));
        }
        break;
      case QuestOutfit.energetic:
        _rrect(c, 21, 23, 58, 7, 3.5, _f(const Color(0xFFF97316)));
        c.drawCircle(const Offset(80, 27), 4, _f(const Color(0xFFF97316)));
        c.drawLine(const Offset(82, 27), const Offset(92, 22), _s(const Color(0xFFF97316), 3));
        c.drawLine(const Offset(82, 28), const Offset(93, 32), _s(const Color(0xFFF97316), 3));
        break;
      case QuestOutfit.explorer:
        _oval(c, 50, 24, 35, 7, _f(const Color(0xFFA9744F)));
        final crown = Path()
          ..moveTo(32, 24)
          ..quadraticBezierTo(32, 5, 50, 5)
          ..quadraticBezierTo(68, 5, 68, 24)
          ..close();
        c.drawPath(crown, _f(const Color(0xFFC8905F)));
        c.drawRect(const Rect.fromLTWH(32, 18, 36, 5), _f(_body));
        break;
      case QuestOutfit.winter:
        final beanie = Path()
          ..moveTo(26, 30)
          ..quadraticBezierTo(26, 5, 50, 5)
          ..quadraticBezierTo(74, 5, 74, 30)
          ..close();
        c.drawPath(beanie, _f(const Color(0xFF4F46E5)));
        _rrect(c, 25, 25, 50, 9, 4.5, _f(const Color(0xFF3C37C9)));
        c.drawCircle(const Offset(50, 4), 6.5, _f(Colors.white));
        break;
    }
  }

  @override
  bool shouldRepaint(covariant _PuppyPainter old) =>
      old.t != t ||
          old.outfit != outfit ||
          old.mood != mood ||
          old.walking != walking;
}

// =====================================================================
// What Neo says, and when it changes outfit.
// =====================================================================

class MascotLines {
  static const Map<QuestOutfit, List<String>> inspire = {
    QuestOutfit.scholar: [
      'Small steps still reach the summit.',
      'You do not need to be perfect, just consistent.',
      "Today's effort is tomorrow's easy.",
      'Learn it once, then revisit it. That is how it sticks.',
    ],
    QuestOutfit.energetic: [
      "Let's gooo! Today is a good day to learn!",
      'Energy on! One more question, one more win.',
      "Feeling strong. Let's climb!",
    ],
    QuestOutfit.viking: [
      'THE JOURNEY IS LONG, BUT WE ARE CONQUERORS! FIGHT ON!',
      'BY THE BEARD OF THE EXAM GODS, WE WILL PREVAIL!',
      'ONWARD, WARRIOR! NO QUESTION SHALL STAND!',
      'SKAL TO ANOTHER STAGE CONQUERED!',
    ],
    QuestOutfit.explorer: [
      'Every great map starts with one step.',
      'Unknown topic ahead? That is just unexplored land.',
      'Pack curiosity, leave fear at camp.',
    ],
    QuestOutfit.winter: [
      'Cold outside, warm focus inside.',
      "Cosy and clever. Let's study.",
      'Winter is for building skills no one sees yet.',
    ],
  };

  static const List<String> tired = [
    '*yawn* A short rest helps memory. Then we go again.',
    'Long day? One small question, then rest.',
    'Even puppies need naps. Come back refreshed.',
  ];

  static const List<String> mountain = [
    'Consistency beats intensity. Show up daily.',
    'Fear gets smaller the moment you begin.',
    'Rest is part of the climb, not a break from it.',
    'Discipline carries you when motivation leaves.',
    'Mistakes are trail markers, not dead ends.',
    'People who lift you make the climb lighter.',
    'Patience: nobody reaches the summit in a day.',
    'Focus on the next step, not the whole mountain.',
    'Failing a test is information, not identity.',
  ];

  static const Map<QuestOutfit, String> switchLine = {
    QuestOutfit.scholar: 'Back to my study cap!',
    QuestOutfit.energetic: "Headband on. Let's go!",
    QuestOutfit.viking: 'VIKING MODE ACTIVATED!',
    QuestOutfit.explorer: 'Explorer mode. Adventure time!',
    QuestOutfit.winter: 'Brrr, scarf and beanie time.',
  };

  static final math.Random _rng = math.Random();
  static String pick(List<String> l) => l[_rng.nextInt(l.length)];
}

/// Decides when Neo changes outfit or gets sleepy. One per screen.
class MascotBrain extends ChangeNotifier {
  QuestOutfit outfit = QuestOutfit.scholar;
  bool tired = false;
  String? announce;
  Timer? _timer;
  int _i = 0;
  final math.Random _rng = math.Random();

  static const _order = QuestOutfit.values;

  void start() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 30), (_) => _step());
  }

  void _step() {
    if (tired && _rng.nextDouble() < 0.6) {
      tired = false;
      announce = 'Nap done! Feeling fresh.';
    } else if (!tired && _rng.nextDouble() < 0.2) {
      tired = true;
      announce = "*yawn* I'm a little sleepy...";
    } else {
      _i = (_i + 1) % _order.length;
      outfit = _order[_i];
      announce = MascotLines.switchLine[outfit];
    }
    notifyListeners();
  }

  void setTired(bool v) {
    tired = v;
    notifyListeners();
  }

  void consumeAnnounce() => announce = null;

  String idleLine() => tired
      ? MascotLines.pick(MascotLines.tired)
      : MascotLines.pick(MascotLines.inspire[outfit]!);

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}