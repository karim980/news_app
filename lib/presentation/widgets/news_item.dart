import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  String title;
  String image;
  String date;

  NewsItem({
    Key? key,
    required this.title,
    required this.image,
    required this.date,

  }) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 180.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(
                        image),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1
                )),
                Text(date,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
