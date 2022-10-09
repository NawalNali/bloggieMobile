import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Color primeLight = const Color(0xFFFFC4C4);
Color secondaryLight = const Color(0xFFEE6983);
Color backgroundLight = const Color(0xFFFFF5E4);
Color thirdColorLight = const Color(0xFF850E35);

Color primeDark = const Color(0xFF0F3460);
Color secondaryDark = const Color(0xFF533483);
Color backgroundDark = const Color(0xFF16213E);
Color thirdColorDark = const Color(0xFFE94560);

class Themes {
  static final ThemeData light = ThemeData(
      primaryColor: primeLight,
      secondaryHeaderColor: secondaryLight,
      backgroundColor: backgroundLight,
      shadowColor: thirdColorLight,
      brightness: Brightness.light);

  static final ThemeData dark = ThemeData(
    primaryColor: primeDark,
    accentColor: secondaryDark,
    backgroundColor: backgroundDark,
    shadowColor: thirdColorDark,
    brightness: Brightness.dark,
  );

  static TextStyle get headingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }

  static TextStyle get subHeadingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }

  static TextStyle get titleStyle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ));
  }

  static TextStyle get bodyStyle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ));
  }

  static TextStyle get buttonStyle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ));
  }

  static TextStyle get greyTitle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    ));
  }
}
