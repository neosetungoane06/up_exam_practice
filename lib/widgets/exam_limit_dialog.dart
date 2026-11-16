import 'package:flutter/material.dart';

import '../models/plan_limits.dart';
import '../services/plan_service.dart';

/// Bottom sheet shown when a student hits the per-upload exam limit.
/// Different copy per plan; hides the upgrade button on Premium.
class ExamLimitSheet {
  const ExamLimitSheet._();

  static Future<void> show({
    required BuildContext context,
    required String planId,
    required int limit,
    required DateTime nextAvailableAt,
    required Color accent,
    required VoidCallback onUpgrade,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _ExamLimitSheetContent(
        planId: planId,
        limit: limit,
        nextAvailableAt: nextAvailableAt,
        accent: accent,
        onUpgrade: onUpgrade,
      ),
    );
  }
}

class _ExamLimitSheetContent extends StatelessWidget {
  final String planId;
  final int limit;
  final DateTime nextAvailableAt;
  final Color accent;
  final VoidCallback onUpgrade;

  const _ExamLimitSheetContent({
    required this.planId,
    required this.limit,
    required this.nextAvailableAt,
    required this.accent,
    required this.onUpgrade,
  });

  static const int _stdLimit = PlanLimits.standard.examsPerUpload; // 7
  static const int _premLimit = PlanLimits.premium.examsPerUpload; // 10

  String get _title {
    switch (planId) {
      case 'standard':
        return 'Standard limit reached';
      case 'premium':
        return 'Premium limit reached';
      case 'free':
      default:
        return 'Free limit reached';
    }
  }

  String get _body {
    final cooldown = PlanLimits.examCooldown.inDays;
    switch (planId) {
      case 'standard':
        return "You've used all $limit practice exams for this upload on "
            "the Standard plan. Upgrade to Premium to unlock $_premLimit "
            "exams per upload, every $cooldown days.";
      case 'premium':
        return "You've used all $limit practice exams for this upload. "
            "That's the maximum on any plan. Take a short break and come "
            "back stronger.";
      case 'free':
      default:
        return "You've used all $limit practice exams for this upload on "
            "the Free plan. Upgrade to Standard for $_stdLimit or Premium "
            "for $_premLimit exams per upload, every $cooldown days.";
    }
  }

  String get _upgradeLabel {
    switch (planId) {
      case 'standard':
        return 'Upgrade to Premium';
      case 'premium':
        return '';
      case 'free':
      default:
        return 'See plans';
    }
  }

  bool get _canUpgrade => planId != 'premium';

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardBg = isDark ? const Color(0xFF1A1B1E) : Colors.white;
    final text = isDark ? const Color(0xFFEDEEF0) : const Color(0xFF15171A);
    final muted = isDark ? const Color(0xFF9BA0A8) : const Color(0xFF6B7280);
    final next = PlanService.formatDate(nextAvailableAt);

    return Container(
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        top: 8,
        bottom: MediaQuery.of(context).padding.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Grabber
          Container(
            width: 44,
            height: 4,
            decoration: BoxDecoration(
              color: muted.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 8),

          // Header: icon + title + close
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 12, 0),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.timer_outlined, color: accent, size: 22),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    _title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: text,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.close, size: 22, color: muted),
                  tooltip: 'Close',
                ),
              ],
            ),
          ),

          // Body
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _body,
                style: TextStyle(fontSize: 15, height: 1.55, color: text),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Next slot info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: accent.withValues(alpha: isDark ? 0.10 : 0.06),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.schedule, size: 18, color: accent),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Your next slot opens on $next.',
                      style: TextStyle(
                        fontSize: 13.5,
                        height: 1.45,
                        fontWeight: FontWeight.w600,
                        color: accent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                if (_canUpgrade) ...[
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          onUpgrade();
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: accent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          _upgradeLabel,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: cs.onSurface,
                        side: BorderSide(color: muted.withValues(alpha: 0.3)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Maybe later',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}