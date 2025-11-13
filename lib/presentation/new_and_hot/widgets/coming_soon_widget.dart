import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants.dart';
import 'package:netflix_bloc/presentation/home/widgets/background_card.dart';
import 'package:netflix_bloc/presentation/new_and_hot/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FEB",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  "11",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                kheight,
                Row(
                  children: [
                    Text(
                      "Tall Girls",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -3),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButton(
                          icon: Icons.notifications_outlined,
                          text: "Remind me",
                          IconSize: 20,
                          TextSize: 12,
                        ),
                        kWidth,
                        CustomButton(
                          icon: Icons.info_outline,
                          text: "Info",
                          IconSize: 20,
                          TextSize: 11,
                        ),
                        kWidth,
                      ],
                    ),
                  ],
                ),
                Text("Coming On Friday"),
                kheight,
                Text(
                  "Tall Girl2",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Landing a flight on airoplane then she met a guy with baby .he is broken because of job lost that time send he confidence -- and her -- relationship - into talispan",
                  style: TextStyle(color: kGreyColor),
                ),
                kheight20
              ],
            ),
          ),
        ],
      ),
    );
  }
}

