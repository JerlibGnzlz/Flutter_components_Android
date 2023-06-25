import 'package:flutter/material.dart';

class AppThemes {
  //color primario
  static const Color primary = Colors.orange;

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
      scaffoldBackgroundColor: Colors.black,


      inputDecorationTheme:const InputDecorationTheme(
floatingLabelStyle: TextStyle(
  color: Colors.green),

 enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.green),
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(10),
    topRight: Radius.circular(10))
 ),

 focusedBorder: OutlineInputBorder(
   borderSide: BorderSide(color: Colors.green),
  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))
 ),

 border: OutlineInputBorder(
   borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))
 )
      )
      );

     
}
