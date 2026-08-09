import 'package:shared_preferences/shared_preferences.dart';
import '../models/study_location.dart';

class LearningStateService {
  static const _lastModuleKey = "last_module";
  static const _lastTopicKey = "last_topic";
  static const _lastSubtopicKey = "last_subtopic";
  static const _lastNoteKey = "last_note";

  /// Save current learning position
  static Future<void> saveCurrentPosition({
    required StudyLocation location,
    required String note,
  }) async {

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      _lastModuleKey,
      location.module,
    );

    await prefs.setString(
      _lastTopicKey,
      location.topic,
    );

    await prefs.setString(
      _lastSubtopicKey,
      location.subtopic,
    );

    await prefs.setString(
      _lastNoteKey,
      note,
    );
  }

  /// Read last module
  static Future<String?> getLastModule() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastModuleKey);
  }

  /// Read last topic
  static Future<String?> getLastTopic() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastTopicKey);
  }

  /// Read last subtopic
  static Future<String?> getLastSubtopic() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastSubtopicKey);
  }

  /// Read last note
  static Future<String?> getLastNote() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastNoteKey);
  }
  static Future<StudyLocation?> getLastLocation() async {

    final prefs = await SharedPreferences.getInstance();

    final module =
    prefs.getString(_lastModuleKey);

    final topic =
    prefs.getString(_lastTopicKey);

    final subtopic =
    prefs.getString(_lastSubtopicKey);

    if (module == null ||
        topic == null ||
        subtopic == null) {
      return null;
    }

    return StudyLocation(
      module: module,
      topic: topic,
      subtopic: subtopic,
    );
  }

  /// Clear everything (useful during development)
  static Future<void> clearLearningState() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(_lastModuleKey);
    await prefs.remove(_lastTopicKey);
    await prefs.remove(_lastSubtopicKey);
    await prefs.remove(_lastNoteKey);
  }
}