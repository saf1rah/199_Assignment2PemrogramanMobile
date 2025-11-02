import 'package:flutter/material.dart';

/// Palet warna yang meniru mockup
class AppColors {
  static const navy = Color(0xFF2E3450);        // bar atas theater
  static const navyDark = Color(0xFF262B43);
  static const primaryBtn = Color(0xFF3B4163);  // tombol login/register
  static const accentYellow = Color(0xFFF2C94C);
  static const fieldBg = Colors.white;          // kotak input putih
  static const fieldHint = Color(0xFF8F9BB3);
  static const divider = Color(0xFF454B6A);
  static const listCard = Color(0xFFF0F2F7);    // kartu abu soft
}

final appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.fieldBg,
    hintStyle: const TextStyle(color: AppColors.fieldHint),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
  ),
);
