import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/news%20cubit/cubit_states.dart';
import 'package:news_app/presentation/news%20cubit/news_cubit.dart';
import 'package:news_app/presentation/pages/search_screen.dart';

import 'modules/about_screen.dart';

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
                  PopupMenuButton<int>(
                    itemBuilder: (context) => [
                      // popupmenu item 1
                      PopupMenuItem(
                        onTap: () {
                          NewsCubit.get(context).changeAppMode();
                        },
                        value: 1,
                        // row has two child icon and text.
                        child: Row(
                          children: [
                            Icon(Icons.sunny_snowing),
                            SizedBox(
                              // sized box with width 10
                              width: 10,
                            ),
                            Text("Mode",style: Theme.of(context).textTheme.bodyText2,)
                          ],
                        ),
                      ),
                      // popupmenu item 2
                      PopupMenuItem(
                        value: 2,
                        // row has two child icon and text
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  AboutScreen()));
                          },
                          child: Row(
                            children: [
                              Icon(Icons.info_outline_rounded),
                              SizedBox(
                                // sized box with width 10
                                width: 10,
                              ),
                              Text("About",style: Theme.of(context).textTheme.bodyText2,),
                              SizedBox(width: 20,)
                            ],
                          ),
                        ),
                      ),
                    ],
                    offset: Offset(0, 100),
                    position: PopupMenuPosition.over,

                  ),
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
