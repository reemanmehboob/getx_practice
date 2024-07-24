import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.red[200],
  brightness: Brightness.light,
   textTheme:TextTheme(bodyLarge: TextStyle(color: Color.fromARGB(255, 134, 91, 88))),
  appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(255, 180, 62, 60))
);
final ThemeData darkappThemeData = ThemeData(
  primaryColor: Color.fromARGB(255, 160, 38, 29),
  brightness: Brightness.dark,
  textTheme:TextTheme(bodyLarge: TextStyle(color: const Color.fromARGB(255, 133, 65, 60))),

   appBarTheme: AppBarTheme(backgroundColor: const Color.fromARGB(255, 112, 17, 17),
   
   )

); 