import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF101010);
  static MaterialColor mainColor = MaterialColor(
    primary.value,
    const <int, Color>{
      50: Color.fromRGBO(16, 16, 16, 0.1),
      100: Color.fromRGBO(16, 16, 16, 0.2),
      200: Color.fromRGBO(16, 16, 16, 0.3),
      300: Color.fromRGBO(16, 16, 16, 0.4),
      400: Color.fromRGBO(16, 16, 16, 0.5),
      500: Color.fromRGBO(16, 16, 16, 0.6),
      600: Color.fromRGBO(16, 16, 16, 0.7),
      700: Color.fromRGBO(16, 16, 16, 0.8),
      800: Color.fromRGBO(16, 16, 16, 0.9),
      900: Color.fromRGBO(16, 16, 16, 1),
    },
  );

  static const Color textColor = Color(0xFF101010);
  static const Color primaryNeutral500 = Color(0xFF101010);
  static const Color primaryNeutral300 = Color(0xFFB7B7B7);
  static const Color productCardBgColor = Color(0xFFF3F3F3);
  static const Color starColor = Color(0xFFFCD240);
}
