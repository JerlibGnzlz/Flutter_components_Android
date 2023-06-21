import 'package:flutter/material.dart';

class AppThemes {
  //color primario
  static const Color primary = Color.fromARGB(255, 18, 223, 7);

//AppBar Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,

      //appBar themes
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      //elevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppThemes.primary,
            elevation: 16.0,
            shape: const StadiumBorder()),
      ),

      // FloatingActionButtons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: const Color.fromARGB(255, 125, 13, 97),
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
