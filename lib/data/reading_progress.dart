import 'package:shared_preferences/shared_preferences.dart';

class ReadingProgress {
  static Future<void> save({
    required String module,
    required String topic,
    required String subtopic,
    required double offset,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setDouble(
      "${module}_${topic}_${subtopic}_offset",
      offset,
    );
  }

  static Future<double> load({
    required String module,
    required String topic,
    required String subtopic,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getDouble(
      "${module}_${topic}_${subtopic}_offset",
    ) ??
        0;
  }
}