import 'package:flutter/material.dart';


ThemeData purpleTheme=ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF6A0DAD),
  primaryColorDark: Color(0xFF4B0082),
  primaryColorLight: Color(0xFF9B30FF),
 // accentColor: Color(0xFF8A2BE2),
  backgroundColor: Color(0xFF1C1C1C),
  scaffoldBackgroundColor: Color(0xFF1C1C1C),
  cardColor: Color(0xFF2A2A2A),
  errorColor: Color(0xFFCF6679),
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline2: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
    headline4: TextStyle(color: Colors.white),
    headline5: TextStyle(color: Colors.white),
    headline6: TextStyle(color: Colors.white),
    subtitle1: TextStyle(color: Colors.white),
    subtitle2: TextStyle(color: Colors.white),
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
    caption: TextStyle(color: Colors.white),
    button: TextStyle(color: Colors.white),
    overline: TextStyle(color: Colors.white),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF6A0DAD),
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: AppBarTheme(
    color: Color(0xFF6A0DAD),
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
     color: Colors.white, fontSize: 20
    ),
  ),
);