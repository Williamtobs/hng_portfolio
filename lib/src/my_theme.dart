import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;

  void changeTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
