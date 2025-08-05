// ThemeNotifier class to manage theme state using Provider
import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  // Default to light theme
  ThemeMode _themeMode = ThemeMode.light;

  // Getter for current theme mode
  ThemeMode get themeMode => _themeMode;

  // Toggle between light and dark theme
  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // Notify listeners of state change
  }
}
