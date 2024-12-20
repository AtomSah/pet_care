import 'package:flutter/material.dart';

ThemeData PetApplicationTheme() {
  return ThemeData(
    // Primary Color
    primaryColor: Colors.lightBlue,

    // Background Color
    scaffoldBackgroundColor: Colors.lightBlue[200],

    // Font Family
    fontFamily: 'Montserrat',

    // Text Themes
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700, // Set bold font weight
        fontFamily: 'Montserrat',
        color: Colors.black, // Set text color
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: Colors.black,
      ),
    ),

    // Elevated Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
        ),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),

    // Input Field Theme (TextFields)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontFamily: 'Montserrat',
        color: Colors.black,
      ),
    ),

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.lightGreen,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins-SemiBold',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        // color: Colors.white,
        size: 30,
      ),
    ),

    // Checkbox Theme
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(Colors.lightBlue),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),

    // Circle Avatar Theme (used in social icons)
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 30,
    ),

    // TextButton Theme (e.g., "Create Account")
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          color: Colors.blue,
        ),
      ),
    ),

    // FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.lightBlue,
      foregroundColor: Colors.white,
    ),
  );
}
