import 'package:flutter/material.dart';

import '../models/plan_limits.dart';
import '../screens/subscription_plans_screen.dart';
import '../services/plan_service.dart';

/// Friendly warnings for the per-plan upload limits (attachments per
/// upload, size of one file). Each has an "Ignore" button that simply
/// closes it, and an "Upgrade" button that opens the plans screen. On the
/// top plan there is nothing to upgrade to, so only "Ignore" is shown.

const _indigo = Color(0xff4F46E5);

String _planName(String id) =>
    id.isEmpty ? 'Free' : '${id[0].toUpperCase()}${id.substring(1)}';

String _mb(int bytes) {
  final mb = bytes / (1024 * 1024);
  return mb >= 10 || mb == mb.roundToDouble()
      ? '${mb.round()} MB'
      : '${mb.toStringAsFixed(1)} MB';
}

/// What the next plans up offer, e.g. "Standard (10) or Premium (15)".
String _upgradeHint(PlanLimits now, int Function(PlanLimits) pick,
    String Function(int) fmt) {
  final tiers = <PlanLimits>[
    if (now.planId == 'free') PlanLimits.standard,
    if (now.planId != 'premium') PlanLimits.premium,
  ];
  return tiers
      .map((t) => '${_planName(t.planId)} (${fmt(pick(t))})')
      .join(' or ');
}

Future<void> _show(
    BuildContext context, {
      required String title,
      required String message,
      required bool canUpgrade,
    }) async {
  final upgrade = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: _indigo.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.layers_rounded, color: _indigo, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      content: Text(message, style: const TextStyle(fontSize: 14, height: 1.45)),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, false),
          child: const Text('Ignore'),
        ),
        if (canUpgrade)
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: _indigo,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Upgrade',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
      ],
    ),
  );

  if (upgrade == true && context.mounted) {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) =>
          SubscriptionPlansScreen(currentPlanId: limits.planId)),
    );
    await PlanService.instance.refresh();
  }
}

/// Shown when the student tries to put more attachments on one upload than
/// their plan allows. [tried] is how many they would end up with.
Future<void> showAttachmentLimitWarning(
    BuildContext context,
    PlanLimits limits, {
      required int tried,
    }) {
  final canUpgrade = limits.planId != 'premium';
  final hint = _upgradeHint(limits, (t) => t.filesPerUpload, (n) => '$n');

  return _show(
    context,
    title: 'Attachment limit reached',
    message: 'The ${_planName(limits.planId)} plan allows up to '
        '${limits.filesPerUpload} attachments per upload, and this would be '
        '$tried.'
        '${canUpgrade ? ' Upgrade for more: $hint.' : ''}',
    canUpgrade: canUpgrade,
  );
}

/// Shown when one file is bigger than the plan's maximum file size.
Future<void> showFileSizeWarning(
    BuildContext context,
    PlanLimits limits, {
      required String fileName,
      required int sizeBytes,
    }) {
  final canUpgrade = limits.planId != 'premium';
  final hint = _upgradeHint(limits, (t) => t.maxFileSizeBytes, _mb);

  return _show(
    context,
    title: 'File is too large',
    message: '"$fileName" is ${_mb(sizeBytes)}. The '
        '${_planName(limits.planId)} plan allows files up to '
        '${_mb(limits.maxFileSizeBytes)} each.'
        '${canUpgrade ? ' Upgrade for bigger files: $hint.' : ''}',
    canUpgrade: canUpgrade,
  );
}