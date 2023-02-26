import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData defaultTheme() => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: primarySwatch,
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      fontFamily: GoogleFonts.inter().fontFamily,
      useMaterial3: true,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.inter(
          fontSize: 36,
          height: 46 / 36,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w700,
          color: fontColor,
        ),
        displayMedium: GoogleFonts.inter(
          fontSize: 24,
          height: 34 / 24,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w700,
          color: fontColor,
        ),
        displaySmall: GoogleFonts.inter(
          fontSize: 18,
          height: 28 / 18,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w700,
          color: fontColor,
        ),
        // bodyLarge
        bodyLarge: GoogleFonts.inter(
          fontSize: 16,
          height: 24 / 16,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w400,
          color: fontColor,
        ),
        // bodySmall
        bodySmall: GoogleFonts.inter(
          fontSize: 14,
          height: 20 / 14,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w400,
          color: fontColor,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 14,
          height: 16 / 14,
          fontWeight: FontWeight.w600,
          color: fontColor,
        ),
        labelSmall: GoogleFonts.inter(
          fontSize: 10,
          height: 12 / 10,
          fontWeight: FontWeight.w500,
          color: fontColor,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 14,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w600,
          color: fontColor,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: 12,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w600,
          color: fontColor,
        ),
      ).apply(
        displayColor: fontColor,
        bodyColor: fontColor,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: accentColor,
        brightness: Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appBarBgColor,
        elevation: 0,
        titleSpacing: 15,
        centerTitle: true,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 18,
          height: 28 / 18,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w700,
          color: fontColor,
        ),
      ),
      scaffoldBackgroundColor: bgColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          side: const BorderSide(width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(double.infinity, 50),
          // add primaryColor as splash color
          splashFactory: InkRipple.splashFactory,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // add primaryColor as splash color
          splashFactory: InkRipple.splashFactory,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: primaryColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        errorStyle: GoogleFonts.inter(
          fontSize: 12,
          height: 16 / 12,
          color: Colors.red,
        ),
        labelStyle: GoogleFonts.inter(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.w400,
          color: fontColor,
        ),
        hintStyle: GoogleFonts.inter(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.w400,
          color: gray,
        ),
      ),
      chipTheme: ChipThemeData(
        showCheckmark: false,
        side: const BorderSide(width: 1, style: BorderStyle.solid),
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        labelStyle: GoogleFonts.inter(
          fontSize: 16,
          height: 22 / 16,
          fontWeight: FontWeight.w600,
          color: fontColor,
        ),
        disabledColor: Colors.white,
        selectedColor: primaryColor,
        secondarySelectedColor: primaryColor,
        secondaryLabelStyle: GoogleFonts.inter(
          fontSize: 16,
          height: 22 / 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        brightness: Brightness.light,
      ),
      cardTheme: CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: const Color(0xff2d2a3c),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(width: 1, style: BorderStyle.solid),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearMinHeight: 4,
      ),
      tabBarTheme: TabBarTheme(
        labelStyle: GoogleFonts.inter(
          fontSize: 16,
          height: 22 / 16,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w600,
          color: primaryColor,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 16,
          height: 22 / 16,
          letterSpacing: -0.01,
          fontWeight: FontWeight.w400,
          color: gray,
        ),
        labelColor: primaryColor,
        unselectedLabelColor: gray,

        // indicator: const BoxDecoration(
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(1),
        //     topRight: Radius.circular(1),
        //   ),
        //   color: primaryColor,
        // ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
