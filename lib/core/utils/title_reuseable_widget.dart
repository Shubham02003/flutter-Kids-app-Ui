import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Pallete.whiteColor,
        fontSize: 20,
        letterSpacing: 1.2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}