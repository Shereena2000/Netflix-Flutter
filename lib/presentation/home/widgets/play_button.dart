 import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

TextButton playButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(kWhiteColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        size: 25,
        color: kblackColor,
      ),
      label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Text(
            "Play",
            style: TextStyle(color: kblackColor),
          )),
    );
  }


