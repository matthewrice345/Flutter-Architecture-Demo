import 'dart:io';

import 'package:flutter/material.dart';
import 'package:architecture_demo/main.dart' as Main;

class DemoTheme {

  static bool get soBright => Main.isDarkMode == false;
  static bool get soDark  => Main.isDarkMode == true;

  static Color get backgroundLight => Colors.white;
  static Color get backgroundDark => Colors.grey.shade800;

  static Color get lightStatusbarColor => Color(0xFFF5F5F5);
  static Color get darkStatusbarColor => Color(0xFF313131);

  static Color get logoColor => soDark ? Colors.white : Colors.grey;

  static const MaterialColor accentColor = const MaterialColor(0xFF93C47D, const <int, Color>{
    50:  const Color(0xFFF2F8EF),
    100: const Color(0xFFDFEDD8),
    200: const Color(0xFFC9E2BE),
    300: const Color(0xFFB3D6A4),
    400: const Color(0xFFA3CD91),
    500: const Color(0xFF93C47D),
    600: const Color(0xFF8BBE75),
    700: const Color(0xFF80B66A),
    800: const Color(0xFF76AF60),
    900: const Color(0xFF64A24D),
  });

  static final ThemeData light = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      primaryColorBrightness: Brightness.light,
      accentColor: accentColor[500],
      accentColorBrightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black38),
      appBarTheme: AppBarTheme(elevation: Platform.isIOS ? 0.0 : 1.0, color: backgroundLight),
      textSelectionHandleColor: accentColor[500]
  );

  static final ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.grey,
      primaryColor: Colors.grey.shade500,
      primaryColorBrightness: Brightness.dark,
      accentColor: accentColor[500],
      accentColorBrightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white30),
      appBarTheme: AppBarTheme(elevation: Platform.isIOS ? 0.0 : 1.0, color: backgroundDark),
      textSelectionHandleColor: accentColor[500]
  );
}