import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          'Coming Soon',
          style: TextStyle(
            color: Pallete.whiteColor,
            fontSize: 17,
          ),
        ),
        backgroundColor: Pallete.postBackgroundColor,
        padding: const EdgeInsets.all(10),

      ),
    );
}
