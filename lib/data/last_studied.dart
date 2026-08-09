import 'package:shared_preferences/shared_preferences.dart';

class LastStudied {
  static const String moduleKey = "last_module";
  static const String topicKey = "last_topic";
  static const String subtopicKey = "last_subtopic";

  static Future<void> save({
    required String module,
    required String topic,
    required String subtopic,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(moduleKey, module);
    await prefs.setString(topicKey, topic);
    await prefs.setString(subtopicKey, subtopic);
  }

  static Future<Map<String, String>> load() async {
    final prefs = await SharedPreferences.getInstance();

    return {
      "module": prefs.getString(moduleKey) ?? "",
      "topic": prefs.getString(topicKey) ?? "",
      "subtopic": prefs.getString(subtopicKey) ?? "",
    };
  }
}