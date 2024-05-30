import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;//ThemeMode.system;

  get themeMode => _themeMode;

  toggleToDark(){
    _themeMode = ThemeMode.dark;
    notifyListeners();
  }

  toggleToLight(){
    _themeMode = ThemeMode.light;
    notifyListeners();
  }
}