import 'package:flutter/material.dart';

import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      scaffoldBackgroundColor: backgroundColor,
    
      textTheme: const TextTheme(bodySmall: TextStyle(color: Colors.white),
      bodyMedium:  TextStyle(color: Colors.white),
      
      ),

      ),
      home:ScreenMainPage()
    );
  }
}

