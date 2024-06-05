import 'package:flutter/material.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeData _themeData = AppTheme.lightTheme;
  static const String _defaultLanguage = 'en';

  String _currentLanguage = _defaultLanguage;

  SettingsProvider() {
    _loadTheme();
    _loadLanguage();
  }

  String get currentLanguage => _currentLanguage;

  ThemeData get themeData => _themeData;

  setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() async {
    if (_themeData == AppTheme.lightTheme) {
      setThemeData(AppTheme.darkTheme);
      await AuthBox.saveTheme(true);
    } else {
      setThemeData(AppTheme.lightTheme);
      await AuthBox.saveTheme(false);
    }
  }

  Future<void> _loadTheme() async {
    bool isDarkMode = await AuthBox.getTheme();
    if (isDarkMode) {
      _themeData = AppTheme.darkTheme;
    } else {
      _themeData = AppTheme.lightTheme;
    }
    notifyListeners();
  }

  Future<void> _loadLanguage() async {
    String language = await AuthBox.getLanguage();
    _currentLanguage = language;
    notifyListeners();
  }

  void notifyTaskProviderOnLanguageChange(BuildContext context) {
    Provider.of<TaskProvider>(context, listen: false)
        .reloadTasksOnLanguageChange(context);
  }

  void setLanguage(String language, BuildContext context) async {
    _currentLanguage = language;
    await AuthBox.saveLanguage(language);
    notifyListeners();
    notifyTaskProviderOnLanguageChange(context);
  }
}
