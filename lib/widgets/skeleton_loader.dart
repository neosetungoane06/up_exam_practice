// ============================================================
// FILE: lib/widgets/skeleton_loader.dart
// ============================================================
//
// Small shared helpers used by the mobile home screen and the web
// Study Sets page:
//
//  * [GreetingPicker]   - a different greeting each time the screen opens.
//  * [SkeletonShimmer]  - moving "loading" shimmer for skeleton blocks.
//  * [SkeletonBox], [SkeletonTile], [SkeletonTaskCard] - ready-made
//    skeleton shapes that match the real cards.
//  * [SkeletonSwitcher] - fades from a skeleton to the real content.
//  * [ScrollReveal]     - fades a section in the first time it scrolls
//    into view.

import 'dart:math';

import 'package:flutter/material.dart';

// ---------------------------------------------------------------------------
// Greeting
// ---------------------------------------------------------------------------

class GreetingPicker {
  GreetingPicker._();

  static final Random _random = Random();
  static String? _last;

  static const List<String> _neutral = [
    'Welcome back,',
    'Hi,',
    'Hello,',
    'Hey,',
    'Good to see you,',
  ];

  /// Picks a greeting that fits the time of day (or a neutral one) and
  /// never repeats the previous one while the app is running.
  static String pick([DateTime? now]) {
    final hour = (now ?? DateTime.now()).hour;

    final List<String> timed;
    if (hour >= 5 && hour < 12) {
      timed = const [
        'Good morning,',
        'Morning,',
        'Rise and shine,',
        'Ready for today,',
      ];
    } else if (hour >= 12 && hour < 17) {
      timed = const [
        'Good afternoon,',
        'Afternoon,',
        "Let's keep going,",
        'Hope your day is going well,',
      ];
    } else if (hour >= 17 && hour < 22) {
      timed = const [
        'Good evening,',
        'Evening,',
        'Hope today went well,',
        "Let's finish strong,",
      ];
    } else {
      timed = const [
        'Studying late,',
        'Still going,',
        'Late night,',
      ];
    }

    final pool = [...timed, ..._neutral];
    var choice = pool[_random.nextInt(pool.length)];
    var guard = 0;
    while (choice == _last && guard < 10) {
      choice = pool[_random.nextInt(pool.length)];
      guard++;
    }
    _last = choice;
    return choice;
  }
}

// ---------------------------------------------------------------------------
// Shimmer
// ---------------------------------------------------------------------------

class _SlidingGradientTransform extends GradientTransform {
  final double percent;
  const _SlidingGradientTransform(this.percent);

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * percent, 0.0, 0.0);
  }
}

/// Wrap [SkeletonBox]es in this to make them shimmer. The blocks must be
/// drawn in a solid colour (white) - the shimmer repaints that colour.
class SkeletonShimmer extends StatefulWidget {
  final Widget child;

  const SkeletonShimmer({super.key, required this.child});

  @override
  State<SkeletonShimmer> createState() => _SkeletonShimmerState();
}

class _SkeletonShimmerState extends State<SkeletonShimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1300),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final base = isDark ? const Color(0xFF2C2C2C) : const Color(0xFFE8EAF4);
    final highlight =
    isDark ? const Color(0xFF444444) : const Color(0xFFF8F9FD);

    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [base, highlight, base],
              stops: const [0.25, 0.5, 0.75],
              transform: _SlidingGradientTransform(_controller.value * 2 - 1),
            ).createShader(bounds);
          },
          child: child,
        );
      },
    );
  }
}

/// A single solid block (title line, icon square, button...). Put it
/// inside a [SkeletonShimmer].
class SkeletonBox extends StatelessWidget {
  final double? width;
  final double height;
  final double radius;

  const SkeletonBox({
    super.key,
    this.width,
    required this.height,
    this.radius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

Color _skeletonCardColor(BuildContext context, Color? override) {
  if (override != null) return override;
  return Theme.of(context).brightness == Brightness.dark
      ? const Color(0xFF1E1E1E)
      : Colors.white;
}

/// Skeleton for a folder / note row: icon square + two text lines.
class SkeletonTile extends StatelessWidget {
  final Color? cardColor;

  const SkeletonTile({super.key, this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      decoration: BoxDecoration(
        color: _skeletonCardColor(context, cardColor),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(blurRadius: 10, color: Color(0x0F000000)),
        ],
      ),
      child: SkeletonShimmer(
        child: Row(
          children: [
            const SkeletonBox(width: 40, height: 40, radius: 12),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FractionallySizedBox(
                    widthFactor: 0.6,
                    child: SkeletonBox(height: 14),
                  ),
                  SizedBox(height: 8),
                  FractionallySizedBox(
                    widthFactor: 0.35,
                    child: SkeletonBox(height: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Skeleton for the Today's Task card.
class SkeletonTaskCard extends StatelessWidget {
  final Color? cardColor;

  const SkeletonTaskCard({super.key, this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _skeletonCardColor(context, cardColor),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(blurRadius: 12, color: Color(0x0F000000)),
        ],
      ),
      child: const SkeletonShimmer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonBox(width: 80, height: 11),
            SizedBox(height: 14),
            FractionallySizedBox(
              widthFactor: 0.7,
              child: SkeletonBox(height: 20),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: SkeletonBox(height: 13),
            ),
            SizedBox(height: 22),
            SkeletonBox(width: 140, height: 46, radius: 30),
          ],
        ),
      ),
    );
  }
}

/// Shows [skeleton] while [loading], then fades to [child].
class SkeletonSwitcher extends StatelessWidget {
  final bool loading;
  final Widget skeleton;
  final Widget child;

  const SkeletonSwitcher({
    super.key,
    required this.loading,
    required this.skeleton,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeOut,
      switchOutCurve: Curves.easeIn,
      layoutBuilder: (current, previous) => Stack(
        alignment: Alignment.topLeft,
        children: [...previous, if (current != null) current],
      ),
      child: loading
          ? KeyedSubtree(key: const ValueKey('skeleton'), child: skeleton)
          : KeyedSubtree(key: const ValueKey('content'), child: child),
    );
  }
}

// ---------------------------------------------------------------------------
// Scroll reveal
// ---------------------------------------------------------------------------

/// Fades and lifts its child in the first time it is built. Inside a lazy
/// sliver list that is the moment the section scrolls into view. Once it
/// has appeared it stays alive, so it does not animate again.
class ScrollReveal extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const ScrollReveal({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  @override
  State<ScrollReveal> createState() => _ScrollRevealState();
}

class _ScrollRevealState extends State<ScrollReveal>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 420),
  );
  late final Animation<double> _fade =
  CurvedAnimation(parent: _controller, curve: Curves.easeOut);
  late final Animation<Offset> _slide = Tween<Offset>(
    begin: const Offset(0, 0.05),
    end: Offset.zero,
  ).animate(_fade);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (widget.delay == Duration.zero) {
      _controller.forward();
    } else {
      Future<void>.delayed(widget.delay, () {
        if (mounted) _controller.forward();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FadeTransition(
      opacity: _fade,
      child: SlideTransition(position: _slide, child: widget.child),
    );
  }
}