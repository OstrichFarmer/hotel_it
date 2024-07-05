import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.grey, // Use grey to avoid conflicts with white
    brightness: Brightness.light, // Ensure brightness matches ThemeData
  ).copyWith(
    primary: Colors.white, // Set primary to white
    secondary: Colors.grey, // Set a contrasting secondary color
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.grey,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.grey,
    brightness: Brightness.dark, // Ensure brightness matches ThemeData
  ).copyWith(
    secondary: Colors.black,
  ),
);
