import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/constants.dart';

class MainImageContainer extends StatelessWidget {
  const MainImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://image.tmdb.org/t/p/w1280/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
          ),
        ),
      ),
    );
  }
}
