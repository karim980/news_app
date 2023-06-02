import 'package:flutter/material.dart';
import 'package:news_app/core/app_theme.dart';
import 'package:news_app/data/dio_helper.dart';
import 'package:news_app/presentation/pages/news_layout.dart';
import 'package:news_app/presentation/splash.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:appTheme,
      home: SplashPage(),
      );
  }
}
