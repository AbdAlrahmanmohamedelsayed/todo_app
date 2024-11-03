import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/color_pallets.dart';

class AoolecationThemeManager {
  static Color primary = ColorPallets.primaryColor;
  static ThemeData lightThemeData = ThemeData(
      scaffoldBackgroundColor: ColorPallets.backGroundColorLight,
      primaryColor: primary,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
              side: const BorderSide(width: 5, color: Colors.white))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent),
      bottomSheetTheme: const BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14)))),
      textTheme: const TextTheme(
        displayMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'Poppins'),
        titleMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
            fontFamily: 'Poppins'),
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
