import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),Spacer(),
        Icon(Icons.cast,color: Colors.white,size: 30,),
        kWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kWidth
      ],
    );
  }
}
