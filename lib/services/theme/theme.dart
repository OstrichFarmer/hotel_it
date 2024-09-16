import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.grey,
      brightness: Brightness.light,
    ).copyWith(
      primary: Colors.white,
      secondary: Colors.grey,
      onSurface: Colors.black,
      onSurfaceVariant: const Color(0xFF5C5752),
      onSecondaryFixed: const Color(0xFF109A27),
      onSecondaryContainer: const Color(0xFFFEFEFE),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ));

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.grey,
      brightness: Brightness.dark, // Ensure brightness matches ThemeData
    ).copyWith(
      secondary: Colors.black,
      onSurface: Colors.white,
      onSurfaceVariant: const Color(0xFFFFFFFF),
      onSecondaryFixed: const Color(0xFF12B12D),
      onSecondaryContainer: const Color(0xFF0E0E0E),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ));
