import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String THEME_MODE = 'them_mode';

class ThemeCacheService {
  ThemeMode? _themeMode;

  ThemeMode? get themeMode => _themeMode;

  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<bool> saveTheme(ThemeMode theme) async {
    _themeMode = theme;
    final bool saved =
        await sharedPrefs.setString(THEME_MODE, theme.toString());

    return saved;
  }

  bool isDarkMode(BuildContext context) {
    // get current app theme mode
    final ThemeMode themeMode = Theme.of(context).brightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;

    return themeMode == ThemeMode.light;
  }

  Future<ThemeMode> getTheme() async {
    ThemeMode thm;
    final themeMap = sharedPrefs.getString(THEME_MODE);
    if (themeMap == null) {
      thm = ThemeMode.system;
    } else if (themeMap == ThemeMode.dark.toString()) {
      thm = ThemeMode.dark;
    } else {
      thm = ThemeMode.light;
    }
    await saveTheme(thm);

    return thm;
  }
}
