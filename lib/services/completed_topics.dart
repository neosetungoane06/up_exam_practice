import 'package:shared_preferences/shared_preferences.dart';

class CompletedTopicsService {

  static String _key(String module) {
    return 'completed_$module';
  }

  static Future<List<String>> getCompleted(String module) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key(module)) ?? [];
  }

  static Future<void> markCompleted(
      String module,
      String topic,
      ) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> list =
        prefs.getStringList(_key(module)) ?? [];

    if (!list.contains(topic)) {
      list.add(topic);
      await prefs.setStringList(_key(module), list);
    }
  }

  static Future<bool> isCompleted(
      String module,
      String topic,
      ) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> list =
        prefs.getStringList(_key(module)) ?? [];

    return list.contains(topic);
  }

  static Future<int> countCompleted(String module) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> list =
        prefs.getStringList(_key(module)) ?? [];

    return list.length;
  }
}