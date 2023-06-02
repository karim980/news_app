import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/news%20cubit/cubit_states.dart';
import 'package:news_app/presentation/news%20cubit/news_cubit.dart';
import 'package:news_app/presentation/widgets/news_item.dart';

import '../../widgets/divider.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStats>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var sportdata=NewsCubit.get(context).sport;

        return ConditionalBuilder(
          condition:state is! NewsLoadingSportState,
          builder: (context) => ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) =>  NewsItem(image:  sportdata[index]['urlToImage'] != null ? sportdata[index]['urlToImage'] :'https://media.istockphoto.com/id/929047972/vector/world-news-flat-vector-icon-news-symbol-logo-illustration-business-concept-simple-flat.jpg?s=612x612&w=0&k=20&c=5jpcJ7xejjFa2qKCzeOXKJGeUl7KZi9qoojZj1Kq_po=' ,
              title: sportdata[index]['title'],
              date: sportdata[index]['publishedAt'],
            ),
            itemCount: sportdata.length,
            separatorBuilder: (context, index) => DefDivider(),
          ),
          fallback: (context) => Center(child: CircularProgressIndicator(
            color: Colors.orange,
          )),
        );
      },

    );
  }
}
