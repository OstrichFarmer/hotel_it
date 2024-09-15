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
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ));
