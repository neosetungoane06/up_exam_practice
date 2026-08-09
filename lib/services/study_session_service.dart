import 'package:shared_preferences/shared_preferences.dart';

class StudySessionService {

  static const String currentModuleKey = "current_module";

  static Future<void> saveCurrentModule(String moduleCode) async {

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(currentModuleKey, moduleCode);

  }

  static Future<String?> getCurrentModule() async {

    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(currentModuleKey);

  }

}