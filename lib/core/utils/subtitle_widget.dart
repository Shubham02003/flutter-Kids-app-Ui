import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class SubTitleText extends StatelessWidget {
  final String subTitle;
  const SubTitleText({
    super.key,required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: TextStyle(
        color: Pallete.subTextColor,
        fontSize: 15,
      ),
    );
  }
}