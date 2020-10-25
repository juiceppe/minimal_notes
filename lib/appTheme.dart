import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    accentColor: Colors.teal[400],
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    cardTheme: CardTheme(color: Colors.teal),
  );

  static final ThemeData darkTheme = ThemeData(
      accentColor: Colors.blueGrey[300],
      scaffoldBackgroundColor: Color.fromRGBO(31, 31, 41, 5),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      cardTheme: CardTheme(color: Color.fromRGBO(91, 91, 112, 7)),
      buttonTheme: ButtonThemeData(
        hoverColor: Colors.black,
        buttonColor: Colors.green,
      ),
      dialogBackgroundColor: Colors.blueGrey[300],
      dialogTheme: DialogTheme(elevation: 5));
}
