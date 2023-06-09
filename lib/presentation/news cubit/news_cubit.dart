import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/news%20cubit/cubit_states.dart';
import 'package:news_app/presentation/pages/modules/business_screen.dart';
import 'package:news_app/presentation/pages/modules/scince_screen.dart';
import 'package:news_app/presentation/pages/modules/sports_screen.dart';

import '../../data/dio_helper.dart';

class NewsCubit extends Cubit<NewsStats> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
    BottomNavigationBarItem(
        icon: Icon(Icons.science_outlined), label: 'Science'),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports_handball_rounded), label: 'Sports'),
  ];

  List<Widget> screens = [BusinessScreen(), ScienceScreen(), SportsScreen()];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if(index==1){
      getScience();
    }
    else if(index==2){
      getSports();
    }

    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness() {
    emit(NewsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': 'a99b8ccb05a648c49f42d31e0561b562'
    }).then((value) {
      business = value.data['articles'];
      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }
  List<dynamic> sport = [];

  void getSports() {
    emit(NewsLoadingSportState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'sports',
      'apiKey': 'a99b8ccb05a648c49f42d31e0561b562'
    }).then((value) {
      sport = value.data['articles'];
      debugPrint(sport.toString());
      emit(NewsGetSportSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetSportErrorState(error.toString()));
    });
  }
  List<dynamic> science = [];

  void getScience() {
    emit(NewsLoadingSportState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'Science',
      'apiKey': 'a99b8ccb05a648c49f42d31e0561b562'
    }).then((value) {
      science = value.data['articles'];
      debugPrint(science.toString());
      emit(NewsGetSportSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetSportErrorState(error.toString()));
    });
  }

  bool isDarkTheme = false;

  void changeAppMode(){
    isDarkTheme = !isDarkTheme;
    emit(AppChangeModeState());
    debugPrint('is dark theme $isDarkTheme');
  }

}
