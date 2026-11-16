import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/clario_colors.dart';

/// The "Invite Friends" screen: shows the student their unique link,
/// a live count of successful invites, and the list of friends who
/// joined. Unlocks one month of Premium at 12 invites (handled by the
/// Cloud Function on the backend).
class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  static const int _goal = 12;
  static const String _baseUrl = 'https://keplerstudy.com/?ref=';

  final User? _user = FirebaseAuth.instance.currentUser;

  String? _code;
  bool _codeError = false;

  @override
  void initState() {
    super.initState();
    _ensureCode();
  }

  Future<void> _ensureCode() async {
    try {
      final callable =
      FirebaseFunctions.instance.httpsCallable('ensureReferralCode');
      final result = await callable.call<Map<String, dynamic>>();
      final code = result.data['referralCode'] as String?;
      if (!mounted) return;
      setState(() {
        _code = code;
        _codeError = code == null;
      });
    } catch (e) {
      debugPrint('ensureReferralCode failed: $e');
      if (!mounted) return;
      setState(() => _codeError = true);
    }
  }

  Future<void> _copy(String link) async {
    await Clipboard.setData(ClipboardData(text: link));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Invite link copied. Share it anywhere.'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final text = ClarioColors.text(context);
    final sub = isDark ? Colors.grey.shade400 : Colors.grey.shade600;
    final line = isDark ? Colors.grey.shade800 : Colors.grey.shade200;
    final card = isDark ? Colors.white.withValues(alpha: 0.045) : Colors.white;
    final accent = ClarioColors.blue;

    if (_user == null) {
      return Scaffold(
        backgroundColor: ClarioColors.background(context),
        appBar: AppBar(
          backgroundColor: ClarioColors.background(context),
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Invite Friends',
            style: TextStyle(fontWeight: FontWeight.w800, color: text),
          ),
        ),
        body: Center(
          child: Text(
            'Please sign in to see your referral link.',
            style: TextStyle(color: sub),
          ),
        ),
      );
    }

    final uid = _user!.uid;
    final link = _code == null ? null : '$_baseUrl$_code';

    return Scaffold(
      backgroundColor: ClarioColors.background(context),
      appBar: AppBar(
        backgroundColor: ClarioColors.background(context),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Invite Friends',
          style: TextStyle(fontWeight: FontWeight.w800, color: text),
        ),
      ),
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .snapshots(),
        builder: (context, userSnap) {
          final data = userSnap.data?.data() ?? const <String, dynamic>{};
          final count = (data['referralCount'] as num?)?.toInt() ?? 0;
          final granted = data['referralRewardGranted'] == true;
          final remaining = (_goal - count).clamp(0, _goal);
          final progress = (count / _goal).clamp(0.0, 1.0);

          return ListView(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
            children: [
              // ── Hero card ─────────────────────────────────
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      accent.withValues(alpha: 0.18),
                      accent.withValues(alpha: 0.06),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: accent.withValues(alpha: 0.35)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.card_giftcard_rounded,
                            color: accent, size: 26),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Invite $_goal friends. Get 1 month of Premium free.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: text,
                              height: 1.25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Share your unique link. When $_goal friends join '
                          'Kepler, we add a full month of Premium to your '
                          'account — free.',
                      style: TextStyle(
                        fontSize: 13.5,
                        height: 1.45,
                        color: sub,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // ── Progress card ─────────────────────────────
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: card,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: line),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          granted
                              ? Icons.emoji_events_rounded
                              : Icons.trending_up_rounded,
                          color: granted ? const Color(0xFF16A34A) : accent,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          granted ? 'Reward unlocked!' : 'Your progress',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: granted
                                ? const Color(0xFF16A34A)
                                : text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: 10,
                        backgroundColor: line,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          granted ? const Color(0xFF16A34A) : accent,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '$count of $_goal invites completed',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: text,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      granted
                          ? 'A full month of Premium has been added. Enjoy.'
                          : remaining == 1
                          ? 'Just 1 more friend and you unlock your reward.'
                          : '$remaining more to go.',
                      style: TextStyle(fontSize: 12.5, color: sub),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // ── Share link ────────────────────────────────
              Text(
                'Your referral link',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: text,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.fromLTRB(14, 12, 6, 12),
                decoration: BoxDecoration(
                  color: card,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: line),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: _codeError
                          ? Text(
                        "Couldn't load your link. Tap to retry.",
                        style: TextStyle(
                          color: sub,
                          fontSize: 13,
                        ),
                      )
                          : link == null
                          ? Text(
                        'Loading your link…',
                        style: TextStyle(
                          color: sub,
                          fontSize: 13,
                        ),
                      )
                          : SelectableText(
                        link,
                        style: TextStyle(
                          color: text,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (link != null)
                      FilledButton.icon(
                        onPressed: () => _copy(link),
                        icon: const Icon(Icons.copy_rounded, size: 16),
                        label: const Text('Copy'),
                        style: FilledButton.styleFrom(
                          backgroundColor: accent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      )
                    else if (_codeError)
                      IconButton(
                        tooltip: 'Retry',
                        onPressed: () {
                          setState(() {
                            _codeError = false;
                            _code = null;
                          });
                          _ensureCode();
                        },
                        icon: Icon(Icons.refresh_rounded, color: accent),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // ── Invited friends list ──────────────────────
              Text(
                'Friends you\'ve invited',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: text,
                ),
              ),
              const SizedBox(height: 10),
              StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('referrals')
                    .where('referrerId', isEqualTo: uid)
                    .orderBy('createdAt', descending: true)
                    .snapshots(),
                builder: (context, refSnap) {
                  if (refSnap.hasError) {
                    return Text(
                      "Couldn't load your invites.",
                      style: TextStyle(color: sub, fontSize: 13),
                    );
                  }
                  if (!refSnap.hasData) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                    );
                  }
                  final docs = refSnap.data!.docs;
                  if (docs.isEmpty) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: card,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: line),
                      ),
                      child: Text(
                        'No invites yet. Share your link to get started.',
                        style: TextStyle(fontSize: 13, color: sub),
                      ),
                    );
                  }
                  return Column(
                    children: docs.map((doc) {
                      final d = doc.data();
                      final email =
                          (d['refereeEmail'] as String?) ?? 'Hidden';
                      final createdAt = d['createdAt'];
                      DateTime? when;
                      if (createdAt is Timestamp) when = createdAt.toDate();
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: card,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: line),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: accent.withValues(alpha: 0.14),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.person_rounded,
                                color: accent,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                email,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w600,
                                  color: text,
                                ),
                              ),
                            ),
                            if (when != null)
                              Text(
                                _timeAgo(when),
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: sub,
                                ),
                              ),
                          ],
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
              const SizedBox(height: 24),
              Text(
                'We only count real Kepler accounts. A friend who signs up '
                    'and stays active on Kepler counts as one invite. Your own '
                    'email will not count if you try to invite yourself.',
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  color: sub.withValues(alpha: 0.85),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _timeAgo(DateTime at) {
    final diff = DateTime.now().difference(at);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return '${diff.inDays}d ago';
  }
}