import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeKitController extends ChangeNotifier {
  String _currentTheme;
  ThemeMode _themeMode;
  final Map<String, ThemeKitData> _themes;

  ThemeKitController({
    required String initialTheme,
    required Map<String, ThemeKitData> themes,
    ThemeMode themeMode = ThemeMode.system,
  }) : _currentTheme = initialTheme,
       _themes = themes,
       _themeMode = themeMode {
    _loadPreferences();
    _initAutoSwitch();
  }

  ThemeMode get mode => _themeMode;

  ThemeData get light => _themes[_currentTheme]?.light ?? ThemeData.light();

  ThemeData get dark => _themes[_currentTheme]?.dark ?? ThemeData.dark();

  void switchTheme(String themeKey) {
    if (_themes.containsKey(themeKey)) {
      _currentTheme = themeKey;
      _savePreferences();
      notifyListeners();
    }
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    _savePreferences();
    notifyListeners();
  }

  void _initAutoSwitch() {
    // Time-based switching (e.g., dark mode from 6 PM to 6 AM)
    final now = DateTime.now();
    final hour = now.hour;
    if (_themeMode == ThemeMode.system) {
      // Follow system theme
      final brightness = WidgetsBinding.instance.window.platformBrightness;
      _themeMode =
          brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
    } else if (hour >= 18 || hour < 6) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _currentTheme = prefs.getString('theme') ?? _currentTheme;
    _themeMode =
        ThemeMode.values[prefs.getInt('themeMode') ?? ThemeMode.system.index];
    notifyListeners();
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', _currentTheme);
    await prefs.setInt('themeMode', _themeMode.index);
  }

  static ThemeKitController of(BuildContext context) =>
      Provider.of<ThemeKitController>(context, listen: false);
}

class ThemeKitData {
  final ThemeData light;
  final ThemeData dark;

  ThemeKitData({required this.light, required this.dark});
}
