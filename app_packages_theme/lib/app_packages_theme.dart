library app_packages_theme;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData.dark().copyWith(
        primaryColor: colorScheme.primary,
        colorScheme: colorScheme,
      );
  static CupertinoThemeData get cupertinoThemeData => CupertinoThemeData.raw(
    Brightness.dark,
    colorScheme.primary,
    colorScheme.primaryVariant,
    CupertinoTextThemeData(),
    Colors.transparent,
    colorScheme.background,
  );

  static ColorScheme colorScheme = ColorScheme.dark(
    primary: Colors.pink,
    primaryVariant: Colors.pinkAccent,
  );
}
