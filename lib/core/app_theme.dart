import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final primaryColor = Color(0xffffffff);
final secondaryColor = Color(0xffff7d00);
final tdColor = Color(0xff1a234f);

final appTheme = ThemeData(
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
