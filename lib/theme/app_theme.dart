import 'package:flutter/material.dart';

const circuloOrange = Color(0xFFF7941D);
const circuloBlue = Color(0xFF20409A);

ThemeData buildAppTheme() {
  const seed = circuloBlue;
  final scheme = ColorScheme.fromSeed(
    seedColor: seed,
    primary: circuloBlue,
    secondary: circuloOrange,
    brightness: Brightness.light,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}
