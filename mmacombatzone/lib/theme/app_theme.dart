


import 'package:flutter/material.dart';


class AppTheme{
  
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,

      appBarTheme: const AppBarTheme(
        color: primary
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: Colors.orange)

      ),
      //FloatingActionButtons
      floatingActionButtonTheme:  const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5
      ),
      elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: const StadiumBorder(),
            elevation: 0

          ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),

        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),

        ),
      )

  );
  




}



