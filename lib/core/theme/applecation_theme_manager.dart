import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/color_pallets.dart';

class AoolecationThemeManager {
  static Color primary = ColorPallets.primaryColor;
  static ThemeData lightThemeData = ThemeData(
      primaryColor: primary,
      textTheme: const TextTheme(
        bodySmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
            fontFamily: 'Poppins'),
        bodyMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          color: Colors.black54,
        ),
        bodyLarge: TextStyle(
            color: Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            fontFamily: 'Poppins'),
      ));
}
