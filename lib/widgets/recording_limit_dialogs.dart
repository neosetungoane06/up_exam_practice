import 'dart:async';

import 'package:flutter/material.dart';

import '../models/plan_limits.dart';
import '../services/recording_controller.dart';

const _indigo = Color(0xff4F46E5);

String _humanLimit() {
  final d = PlanLimits.maxRecording;
  final h = d.inHours;
  final m = d.inMinutes.remainder(60);
  return '${h > 0 ? '$h hour${h == 1 ? '' : 's'}' : ''}'
      '${h > 0 && m > 0 ? ' ' : ''}'
      '${m > 0 ? '$m minutes' : ''}';
}

Widget _icon(IconData icon) => Container(
  width: 40,
  height: 40,
  decoration: BoxDecoration(
    color: _indigo.withValues(alpha: 0.12),
    borderRadius: BorderRadius.circular(12),
  ),
  child: Icon(icon, color: _indigo, size: 20),
);

/// Removes the dialog's own route, even if another route is on top of it.
void _removeSelf(BuildContext context) {
  final route = ModalRoute.of(context);
  if (route != null && route.isActive) {
    Navigator.of(context).removeRoute(route);
  }
}

/// "You are close to the maximum recording time" with an Ignore button.
/// It closes itself if the limit is hit while it is open.
Future<void> showRecordingNearLimitDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (_) => const _NearLimitDialog(),
  );
}

class _NearLimitDialog extends StatefulWidget {
  const _NearLimitDialog();

  @override
  State<_NearLimitDialog> createState() => _NearLimitDialogState();
}

class _NearLimitDialogState extends State<_NearLimitDialog> {
  final RecordingController _c = RecordingController.instance;

  @override
  void initState() {
    super.initState();
    _c.addListener(_onController);
  }

  @override
  void dispose() {
    _c.removeListener(_onController);
    super.dispose();
  }

  /// Closes itself as soon as the recording is no longer running (it was
  /// stopped, or the limit hit and Kepler saved it).
  void _onController() {
    if (!mounted || _c.isActive) return;
    _removeSelf(context);
  }

  @override
  Widget build(BuildContext context) {
    final left = PlanLimits.maxRecording - _c.elapsed;
    final minutes = left.inMinutes < 1 ? 1 : left.inMinutes;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Row(
        children: [
          _icon(Icons.timer_outlined),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Almost at the recording limit',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      content: Text(
        'The maximum recording time is ${_humanLimit()} and you are close '
            'to it (about $minutes minute${minutes == 1 ? '' : 's'} left).\n\n'
            'When the time is up, Kepler stops and saves your recording '
            'automatically, so nothing is lost.',
        style: const TextStyle(fontSize: 14, height: 1.45),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Ignore'),
        ),
      ],
    );
  }
}

/// "Maximum recording time reached - your recording is saved". Closes by
/// itself after a few seconds (or when tapped) so the student moves on to
/// Create Notes automatically.
Future<void> showRecordingLimitHitDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const _LimitHitDialog(),
  );
}

class _LimitHitDialog extends StatefulWidget {
  const _LimitHitDialog();

  @override
  State<_LimitHitDialog> createState() => _LimitHitDialogState();
}

class _LimitHitDialogState extends State<_LimitHitDialog> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 5), () {
      if (mounted) _removeSelf(context);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Row(
        children: [
          _icon(Icons.check_circle_outline_rounded),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Maximum recording time reached',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      content: Text(
        'You reached the ${_humanLimit()} limit. Your recording is saved, '
            "and it's now being opened in Create Notes. It also stays under "
            'Saved uploads on your home screen until your notes are created.',
        style: const TextStyle(fontSize: 14, height: 1.45),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: _indigo,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Continue',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}