import 'package:flutter/material.dart';

import 'appTheme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData themeData;

  ThemeData light = AppTheme.lightTheme;

  ThemeData dark = AppTheme.darkTheme;

  ThemeProvider({bool isDarkMode}) {
    this.themeData = isDarkMode ? dark : light;
  }

  ThemeData get getTheme => themeData;

  void swapTheme() {
    themeData = themeData == dark ? light : dark;
    notifyListeners();
  }
}
