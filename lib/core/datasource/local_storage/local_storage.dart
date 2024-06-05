import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kanban_board_app/core/core.dart';

class AuthBox {
  ///opening box
  static Future<Box<dynamic>> openBox() async {
    try {
      await Hive.initFlutter();
      return await Hive.openBox<dynamic>(Strings.boxNameKey);
    } catch (e) {
      // Handle exceptions appropriately, e.g., logging or rethrowing
      throw Exception('Failed to open box: $e');
    }
  }

  static Future<bool> isLoggedIn() async {
    final box = await openBox();
    return box.get(Strings.isLoggedIn, defaultValue: false);
  }

  ///theme functionality

  static Future<void> saveTheme(bool isDarkMode) async {
    final box = await openBox();
    await box.put(Strings.themeModeKey, isDarkMode);
  }

  static Future<bool> getTheme() async {
    final box = await openBox();
    return box.get(Strings.themeModeKey, defaultValue: false);
  }

  ///onboarding  functionality
  static Future<void> setOnboardingComplete(bool isComplete) async {
    final box = await openBox();
    await box.put(Strings.onboardingCompleteKey, isComplete);
  }

  static Future<bool> isOnboardingComplete() async {
    final box = await openBox();
    return box.get(Strings.onboardingCompleteKey, defaultValue: false);
  }

  ///language storage functionality
  static Future<void> saveLanguage(String languageCode) async {
    final box = await openBox();
    await box.put(Strings.languageKey, languageCode);
  }

  static Future<String> getLanguage() async {
    final box = await openBox();
    return box.get(Strings.languageKey, defaultValue: 'en');
  }

  ///logout functionality
  static Future<void> logout() async {
    final box = await openBox();
    await box.clear();
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

  static Future<List<TaskModel>> getAllTasks() async {
    final box = await openBox();
    List<TaskModel>? tasks = box.get('tasks');
    return tasks ?? [];
  }

  static Future<void> saveTasks(List<TaskModel> tasks) async {
    final box = await openBox();
    await box.put('tasks', tasks);
  }
}
