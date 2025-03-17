import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {
  static const themeKey = 'app_theme';

  static Future<void> setAppTheme(String theme) async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString(themeKey, theme);
  }

  static Future<ThemeMode> getAppTheme() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(themeKey) == 'light'
        ? ThemeMode.light
        : ThemeMode.dark;
  }
}
