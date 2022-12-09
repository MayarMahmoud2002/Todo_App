import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app/shared/styles/colors.dart';

class MyThemeData
{
  ThemeData lightMode = ThemeData(
    primaryColor: BlueColor,
    scaffoldBackgroundColor: MintGreenColor,
    colorScheme: ColorScheme(
        primary: BlueColor,
        primaryVariant: BlueColor,
        secondary: WhiteColor,
        secondaryVariant: WhiteColor,
        surface: BlackColor,
        background: MintGreenColor,
        error: RedColor,
        onPrimary: WhiteColor,
        onSecondary: WhiteColor,
        onSurface: BlackColor,
        onBackground: WhiteColor,
        onError: RedColor,
        brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      iconTheme:IconThemeData(color: WhiteColor),
      centerTitle: false,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: WhiteColor,

      ),
      subtitle1: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: BlueColor,

      ),
      subtitle2: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: GreenColor,

      ),



    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: WhiteColor,
      unselectedItemColor:GreyColor,
      selectedItemColor: BlueColor,
    ),

  );
  ThemeData darkMode = ThemeData(
    primaryColor: BlueColor,
    scaffoldBackgroundColor: MintGreenColor,
    colorScheme: ColorScheme(
      primary: BlueColor,
      primaryVariant: BlueColor,
      secondary: WhiteColor,
      secondaryVariant: WhiteColor,
      surface: BlackColor,
      background: DarkColor,
      error: RedColor,
      onPrimary: WhiteColor,
      onSecondary: WhiteColor,
      onSurface: BlackColor,
      onBackground: WhiteColor,
      onError: RedColor,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      iconTheme:IconThemeData(color: WhiteColor),
      centerTitle: false,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: BlackColor,

      ),
      subtitle1: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: BlueColor,

      ),
      subtitle2: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: GreenColor,

      ),



    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: BlackColor,
      unselectedItemColor:WhiteColor,
      selectedItemColor: BlueColor,
    ),

  );



}