import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants.dart';
import 'package:netflix_bloc/presentation/search/widgets/title.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w500_and_h282_face/kEYWal656zP5Q2Tohm91aw6orlT.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextWidget(title: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => TopSearchTile(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  const TopSearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          backgroundColor: kWhiteColor,radius:25,child: CircleAvatar(
          backgroundColor: kblackColor,radius: 23,child: Icon(CupertinoIcons.play_fill,color: kWhiteColor,),
        ),
        )
      ],
    );
  }
}
