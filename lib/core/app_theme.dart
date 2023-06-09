import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final primaryColor = Color(0xffffffff);
final primaryColorDark = Color(0xff2d2c2c);
final secondaryColor = Color(0xffff7d00);
final tdColor = Color(0xff1a234f);
final tdColorDark = Color(0xff2d2c2c);

final appThemeLite = ThemeData(
  scaffoldBackgroundColor: primaryColor,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.black
      ),
      titleTextStyle: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: tdColor,
        statusBarBrightness: Brightness.light
      ),
      elevation: 0,
      backgroundColor: primaryColor,
      centerTitle: true,
    ),
    brightness: Brightness.light,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: secondaryColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: tdColor,
      elevation: 5,
      selectedItemColor: secondaryColor,
      unselectedItemColor: primaryColor
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        iconColor: secondaryColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        )));


final appThemeDark = ThemeData(
  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 18,color: primaryColor,),
  ),
    scaffoldBackgroundColor: primaryColorDark,
    popupMenuTheme: PopupMenuThemeData(
      color: primaryColorDark

    ),
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
          color: Colors.white
      ),
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold,),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: tdColorDark,
          statusBarBrightness: Brightness.light
      ),
      elevation: 0,
      backgroundColor: primaryColorDark,
      centerTitle: true,
    ),
    brightness: Brightness.light,
    primaryColor: primaryColorDark,
    colorScheme: ColorScheme.light(
      primary: primaryColorDark,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColorDark),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColorDark,
      foregroundColor: secondaryColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: tdColorDark,
        elevation: 5,
        selectedItemColor: secondaryColor,
        unselectedItemColor: primaryColor
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColorDark),
        iconColor: secondaryColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColorDark),
          borderRadius: BorderRadius.circular(8),
        )));
