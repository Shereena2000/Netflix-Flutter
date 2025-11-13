import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_bloc/core/constants.dart';
import 'package:netflix_bloc/presentation/home/widgets/background_card.dart';
import 'package:netflix_bloc/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_bloc/presentation/home/widgets/play_button.dart';
import 'package:netflix_bloc/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, index, _) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    return scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    return scrollNotifier.value = true;
                  } else {
                    return true;
                  }
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Stack(
                          children: [
                            BackgroundCard(),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 10, // Space from bottom
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomButton(
                                      icon: Icons.add, text: "My List"),
                                  playButton(),
                                  CustomButton(icon: Icons.info, text: "Info")
                                ],
                              ),
                            ),
                          ],
                        ),
                        MainTitleCard(title: "Released in the past year"),
                        kheight,
                        MainTitleCard(title: "Trending Now"),
                        kheight,
                        NumberTitleCard(),
                        MainTitleCard(title: "Tense Dramas"),
                        kheight,
                        MainTitleCard(title: "South Indian Cinema"),
                      ],
                    ),
                    scrollNotifier.value
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            child: Container(
                              width: double.infinity,
                              height: 70,
                              color: Colors.black38,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "lib/assets/netflix.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.cast,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      kWidth,
                                      Container(
                                        width: 26,
                                        height: 26,
                                        color: Colors.blue,
                                      ),
                                      kWidth
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "TV Shows",
                                        style: kHomeTextTitle,
                                      ),
                                      Text(
                                        "Movies",
                                        style: kHomeTextTitle,
                                      ),
                                      Text(
                                        "Categories",
                                        style: kHomeTextTitle,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        : SizedBox()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
