import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants.dart';
import 'package:netflix_bloc/presentation/home/widgets/background_card.dart';
import 'package:netflix_bloc/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_bloc/presentation/new_and_hot/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "New & Hot",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w900, color: kWhiteColor),
          ),
          actions: [
            Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            ),
            kWidth,
            Container(
              width: 30,
              height: 30,
              color: Colors.blue,
            ),
            kWidth
          ],
          bottom: TabBar(
              unselectedLabelColor: kWhiteColor,
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              labelColor: const Color.fromRGBO(0, 0, 0, 1),
              dividerColor: Colors.transparent,
              indicator:
                  BoxDecoration(color: kWhiteColor, borderRadius: kRadius30),
              tabs: [
                SizedBox(
                  height: 40,
                  child: Center(child: Text("🍿 Coming Soon")),
                ),
                SizedBox(
                  height: 40,
                  child: Center(child: Text("👀 Everyone's watching")),
                ),
              ]),
        ),
        body: TabBarView(
          children: [_buildComingSoon(), _buildEveryonesWatching()],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => ComingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatching() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index) => EveryoneWatching()),
    );
  }
}

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          "Tall Girl2",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Landing a flight on airoplane then she met a guy with baby .he is broken because of job lost that time send he confidence -- and her -- relationship - into talispan",
          style: TextStyle(color: kGreyColor),
        ),
        kheight50,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.share,
              text: "Share",
              IconSize: 25,
              TextSize: 12,
            ),
            kWidth,
            CustomButton(
              icon: Icons.add,
              text: "My List",
              IconSize: 25,
              TextSize: 12,
            ),
            kWidth,
            CustomButton(
              icon: Icons.play_arrow,
              text: "Play",
              IconSize: 25,
              TextSize: 12,
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}
