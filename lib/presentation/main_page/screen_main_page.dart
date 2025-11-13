import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/downloads/screen_downloads.dart';
import 'package:netflix_bloc/presentation/fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_bloc/presentation/home/screen_home.dart';
import 'package:netflix_bloc/presentation/main_page/widgets/bottom_navigation_widget.dart';
import 'package:netflix_bloc/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_bloc/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
 final List _pages=[ScreenHome(),ScreenNewAndHot(),ScreenFastLaughs(),ScreenSearch(),ScreenDownloads()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:ValueListenableBuilder(valueListenable: indexChangeNotifier, builder:(context, index, _) {
          return _pages[index];
        },),
      bottomNavigationBar:BottomNavigationWidget(),
      ),
    );
  }
}
