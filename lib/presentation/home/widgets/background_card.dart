import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/constants.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(urlimage),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final double IconSize;
  final double TextSize;
  const CustomButton(
      {super.key,
      required this.icon,
      required this.text,
      this.IconSize = 30,
      this.TextSize = 18});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: IconSize,
        ),
        Text(
          text,
          style: TextStyle(fontSize: TextSize),
        )
      ],
    );
  }
}
