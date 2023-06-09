import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/app_theme.dart';
import 'package:news_app/data/dio_helper.dart';
import 'package:news_app/presentation/news%20cubit/cubit_states.dart';
import 'package:news_app/presentation/news%20cubit/news_cubit.dart';
import 'package:news_app/presentation/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit,NewsStats>(
        listener:(context, state) {
        },
        builder: (context, state) {
          bool theme = NewsCubit.get(context).isDarkTheme ;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appThemeLite ,
            darkTheme: appThemeDark,
            themeMode: theme ? ThemeMode.light : ThemeMode.dark,
            home: SplashPage(),
          );
        },
      ),
    );
  }
}
