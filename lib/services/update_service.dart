import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/update_available_dialog.dart';

/// Shows the "update available" pop-up, but only when Google Play really has
/// a newer version of Kepler for this phone.
///
/// - Android only. On the web the site is always current, and iOS is added
///   later.
/// - Play only answers for an app that was INSTALLED FROM Google Play
///   (including the internal / closed testing tracks). A debug build or an
///   APK sent by hand gets no answer and the pop-up simply never shows.
/// - "Maybe later" hides it for 24 hours. A new version brings it back.
/// - If the update was released with a high in-app update priority (4 or 5
///   in the Play Developer API), the pop-up has no "Maybe later".
class UpdateService {
  UpdateService._();

  static bool _checkedThisRun = false;

  static Future<void> checkAndPrompt(BuildContext context) async {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) return;
    if (_checkedThisRun) return;
    _checkedThisRun = true;

    try {
      final info = await InAppUpdate.checkForUpdate();
      if (info.updateAvailability != UpdateAvailability.updateAvailable) {
        return;
      }

      final versionCode = info.availableVersionCode ?? 0;
      final forced = info.updatePriority >= 4;

      final prefs = await SharedPreferences.getInstance();
      final snoozeKey = 'update_snooze_until_$versionCode';
      final until = prefs.getInt(snoozeKey) ?? 0;
      if (!forced && DateTime.now().millisecondsSinceEpoch < until) return;

      final name = await _firstName();
      if (!context.mounted) return;

      final update = await showUpdateAvailableDialog(
        context,
        name: name,
        forced: forced,
      );

      if (update) {
        await openPlayStore();
      } else {
        await prefs.setInt(
          snoozeKey,
          DateTime.now()
              .add(const Duration(hours: 24))
              .millisecondsSinceEpoch,
        );
      }
    } catch (e) {
      // Not installed from Play, no Play Store, offline, etc. Stay silent.
      debugPrint('[Update] check skipped: $e');
    }
  }

  /// Opens Kepler's page in the Play Store app.
  static Future<void> openPlayStore() async {
    final pkg = (await PackageInfo.fromPlatform()).packageName;
    final market = Uri.parse('market://details?id=$pkg');
    final web = Uri.parse('https://play.google.com/store/apps/details?id=$pkg');
    try {
      if (await launchUrl(market, mode: LaunchMode.externalApplication)) {
        return;
      }
    } catch (_) {}
    await launchUrl(web, mode: LaunchMode.externalApplication);
  }

  /// Shows the pop-up without asking Play. For looking at the design or
  /// testing the button while you have no new version uploaded:
  ///   UpdateService.preview(context);
  static Future<void> preview(BuildContext context, {bool forced = false}) async {
    final name = await _firstName();
    if (!context.mounted) return;
    final update =
    await showUpdateAvailableDialog(context, name: name, forced: forced);
    if (update) await openPlayStore();
  }

  static Future<String> _firstName() async {
    try {
      final uid = FirebaseAuth.instance.currentUser?.uid;
      if (uid == null) return '';
      final snap = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get()
          .timeout(const Duration(seconds: 1));
      final raw = (snap.data()?['preferredName'] ?? '').toString().trim();
      final first = raw.split(RegExp(r'\s+')).first;
      if (first.isEmpty || first.contains('@') || first.length > 20) return '';
      return first[0].toUpperCase() + first.substring(1);
    } catch (_) {
      return '';
    }
  }
}