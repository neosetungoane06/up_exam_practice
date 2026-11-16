import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Draws one "GRAPH:<json>" line of a note.
///
/// The server has already computed every point exactly, so this widget
/// only draws: grid, axes, curves, dashed asymptote lines, and the
/// lettered points. No network, no image, works offline and stays sharp
/// at any size.
///
/// Usage in the notes line renderer:
///   if (line.startsWith('GRAPH:')) {
///     return GraphBlock(data: line.substring(6));
///   }
class GraphBlock extends StatelessWidget {
  /// The JSON after the "GRAPH:" prefix.
  final String data;

  const GraphBlock({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final _GraphData? graph = _GraphData.tryParse(data);
    if (graph == null) return const SizedBox.shrink();

    final scheme = Theme.of(context).colorScheme;
    final curveColors = <Color>[
      scheme.primary,
      scheme.tertiary,
      scheme.secondary,
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: scheme.outlineVariant),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (graph.title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                graph.title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          AspectRatio(
            aspectRatio: 4 / 3,
            child: CustomPaint(
              painter: _GraphPainter(
                graph: graph,
                axisColor: scheme.onSurface,
                gridColor: scheme.outlineVariant,
                textColor: scheme.onSurfaceVariant,
                curveColors: curveColors,
                pointColor: scheme.error,
                haloColor: scheme.surface,
              ),
            ),
          ),
          if (graph.curves.any((c) => c.label.isNotEmpty))
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Wrap(
                spacing: 16,
                runSpacing: 4,
                children: [
                  for (var i = 0; i < graph.curves.length; i++)
                    if (graph.curves[i].label.isNotEmpty)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 18,
                            height: 3,
                            color: curveColors[i % curveColors.length],
                          ),
                          const SizedBox(width: 6),
                          Text(
                            graph.curves[i].label,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _Curve {
  final String label;
  final List<List<double>> segments;
  const _Curve(this.label, this.segments);
}

class _Point {
  final String letter;
  final double x;
  final double y;
  const _Point(this.letter, this.x, this.y);
}

class _GraphData {
  final String title;
  final double xMin, xMax, yMin, yMax;
  final List<_Curve> curves;
  final List<_Point> points;
  final List<double> vlines;
  final List<double> hlines;

  const _GraphData({
    required this.title,
    required this.xMin,
    required this.xMax,
    required this.yMin,
    required this.yMax,
    required this.curves,
    required this.points,
    required this.vlines,
    required this.hlines,
  });

  static _GraphData? tryParse(String raw) {
    try {
      final j = jsonDecode(raw) as Map<String, dynamic>;
      final x = (j['x'] as List).map((e) => (e as num).toDouble()).toList();
      final y = (j['y'] as List).map((e) => (e as num).toDouble()).toList();

      final curves = <_Curve>[
        for (final c in (j['c'] as List? ?? const []))
          _Curve(
            (c['l'] ?? '').toString(),
            [
              for (final s in (c['s'] as List))
                [for (final v in (s as List)) (v as num).toDouble()],
            ],
          ),
      ];
      final points = <_Point>[
        for (final p in (j['p'] as List? ?? const []))
          _Point(
            (p['k'] ?? '').toString(),
            (p['x'] as num).toDouble(),
            (p['y'] as num).toDouble(),
          ),
      ];
      final vlines = <double>[
        for (final v in (j['v'] as List? ?? const []))
          (v['x'] as num).toDouble(),
      ];
      final hlines = <double>[
        for (final h in (j['h'] as List? ?? const []))
          (h['y'] as num).toDouble(),
      ];

      if (x.length != 2 || y.length != 2) return null;
      return _GraphData(
        title: (j['t'] ?? '').toString(),
        xMin: x[0],
        xMax: x[1],
        yMin: y[0],
        yMax: y[1],
        curves: curves,
        points: points,
        vlines: vlines,
        hlines: hlines,
      );
    } catch (_) {
      return null;
    }
  }
}

class _GraphPainter extends CustomPainter {
  final _GraphData graph;
  final Color axisColor;
  final Color gridColor;
  final Color textColor;
  final List<Color> curveColors;
  final Color pointColor;
  final Color haloColor;

  _GraphPainter({
    required this.graph,
    required this.axisColor,
    required this.gridColor,
    required this.textColor,
    required this.curveColors,
    required this.pointColor,
    required this.haloColor,
  });

  static const double _left = 38;
  static const double _right = 12;
  static const double _top = 12;
  static const double _bottom = 26;

  @override
  void paint(Canvas canvas, Size size) {
    final plot = Rect.fromLTRB(
      _left,
      _top,
      size.width - _right,
      size.height - _bottom,
    );
    if (plot.width <= 0 || plot.height <= 0) return;

    double sx(double x) =>
        plot.left + (x - graph.xMin) / (graph.xMax - graph.xMin) * plot.width;
    double sy(double y) =>
        plot.bottom -
            (y - graph.yMin) / (graph.yMax - graph.yMin) * plot.height;

    final gridPaint = Paint()
      ..color = gridColor.withOpacity(0.5)
      ..strokeWidth = 1;
    final axisPaint = Paint()
      ..color = axisColor
      ..strokeWidth = 1.6;
    final borderPaint = Paint()
      ..color = gridColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Grid + tick labels along the bottom and left edges.
    final xStep = _niceStep(graph.xMax - graph.xMin, 6);
    final yStep = _niceStep(graph.yMax - graph.yMin, 6);

    for (var v = (graph.xMin / xStep).ceil() * xStep;
    v <= graph.xMax + 1e-9;
    v += xStep) {
      final px = sx(v);
      canvas.drawLine(Offset(px, plot.top), Offset(px, plot.bottom), gridPaint);
      _text(canvas, _fmt(v), Offset(px, plot.bottom + 4), center: true);
    }
    for (var v = (graph.yMin / yStep).ceil() * yStep;
    v <= graph.yMax + 1e-9;
    v += yStep) {
      final py = sy(v);
      canvas.drawLine(Offset(plot.left, py), Offset(plot.right, py), gridPaint);
      _text(canvas, _fmt(v), Offset(plot.left - 4, py),
          alignRight: true, centerY: true);
    }

    // Everything below is clipped to the plot area.
    canvas.save();
    canvas.clipRect(plot);

    // Axes through zero, if zero is in view.
    if (graph.xMin <= 0 && graph.xMax >= 0) {
      canvas.drawLine(
          Offset(sx(0), plot.top), Offset(sx(0), plot.bottom), axisPaint);
    }
    if (graph.yMin <= 0 && graph.yMax >= 0) {
      canvas.drawLine(
          Offset(plot.left, sy(0)), Offset(plot.right, sy(0)), axisPaint);
    }

    // Dashed asymptote / symmetry lines.
    final dashPaint = Paint()
      ..color = axisColor.withOpacity(0.65)
      ..strokeWidth = 1.2;
    for (final x in graph.vlines) {
      _dashed(canvas, Offset(sx(x), plot.top), Offset(sx(x), plot.bottom),
          dashPaint);
    }
    for (final y in graph.hlines) {
      _dashed(canvas, Offset(plot.left, sy(y)), Offset(plot.right, sy(y)),
          dashPaint);
    }

    // Curves.
    for (var ci = 0; ci < graph.curves.length; ci++) {
      final paint = Paint()
        ..color = curveColors[ci % curveColors.length]
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.4
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round;
      for (final seg in graph.curves[ci].segments) {
        if (seg.length < 4) continue;
        final path = Path()..moveTo(sx(seg[0]), sy(seg[1]));
        for (var i = 2; i + 1 < seg.length; i += 2) {
          path.lineTo(sx(seg[i]), sy(seg[i + 1]));
        }
        canvas.drawPath(path, paint);
      }
    }
    canvas.restore();

    canvas.drawRect(plot, borderPaint);

    // Lettered points, drawn last and unclipped so letters stay readable.
    final dot = Paint()..color = pointColor;
    final halo = Paint()..color = haloColor;
    for (final p in graph.points) {
      final c = Offset(sx(p.x), sy(p.y));
      canvas.drawCircle(c, 4.5, dot);
      final labelCenter = Offset(
        (c.dx + 13).clamp(plot.left + 8, plot.right - 8).toDouble(),
        (c.dy - 13).clamp(plot.top + 8, plot.bottom - 8).toDouble(),
      );
      canvas.drawCircle(labelCenter, 9, halo);
      canvas.drawCircle(
        labelCenter,
        9,
        Paint()
          ..color = pointColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.4,
      );
      _text(canvas, p.letter, labelCenter,
          center: true,
          centerY: true,
          bold: true,
          color: pointColor,
          fontSize: 11);
    }
  }

  void _dashed(Canvas canvas, Offset a, Offset b, Paint paint) {
    const dash = 6.0;
    const gap = 5.0;
    final total = (b - a).distance;
    if (total == 0) return;
    final dir = (b - a) / total;
    var d = 0.0;
    while (d < total) {
      final end = math.min(d + dash, total);
      canvas.drawLine(a + dir * d, a + dir * end, paint);
      d += dash + gap;
    }
  }

  void _text(
      Canvas canvas,
      String text,
      Offset at, {
        bool center = false,
        bool centerY = false,
        bool alignRight = false,
        bool bold = false,
        Color? color,
        double fontSize = 10,
      }) {
    final tp = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color ?? textColor,
          fontSize: fontSize,
          fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    var dx = at.dx;
    var dy = at.dy;
    if (center) dx -= tp.width / 2;
    if (alignRight) dx -= tp.width;
    if (centerY) dy -= tp.height / 2;
    tp.paint(canvas, Offset(dx, dy));
  }

  static double _niceStep(double range, int target) {
    final raw = range / target;
    final mag = math.pow(10, (math.log(raw) / math.ln10).floor()).toDouble();
    final n = raw / mag;
    final f = n < 1.5 ? 1 : (n < 3.5 ? 2 : (n < 7.5 ? 5 : 10));
    return f * mag;
  }

  static String _fmt(double v) {
    final r = (v * 10000).round() / 10000;
    if (r == r.roundToDouble()) return r.toInt().toString();
    return r.toString();
  }

  @override
  bool shouldRepaint(covariant _GraphPainter old) => old.graph != graph;
}