import 'package:flutter/material.dart';

class DefDivider extends StatelessWidget {
  const DefDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 1,
      width: double.infinity,
      color: Colors.grey[300],
    );
  }
}
