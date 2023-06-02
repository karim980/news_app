import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/news%20cubit/cubit_states.dart';
import 'package:news_app/presentation/news%20cubit/news_cubit.dart';
import 'package:news_app/presentation/pages/search_screen.dart';

class NewsLayout extends StatelessWidget {
  String? query;
   NewsLayout({Key? key, this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsStats>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(),));
                }, icon: Icon(Icons.search_rounded)),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                ),
              ],
              title: Text('News For You'),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomItems,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
            ),
          );
        },
      ),
    );
  }
}
