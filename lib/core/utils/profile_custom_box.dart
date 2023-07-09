
import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class CustomBox extends StatelessWidget {
  final String text;
  final IconData iconName;
  final VoidCallback function;
  const CustomBox({super.key, required this.text, required this.iconName,required this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: function,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          color: Pallete.postBackgroundColor,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 100,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconName,
                  size: 30,
                  color: Pallete.whiteColor,
                ),
                const SizedBox(height: 5),
                Text(
                  text,
                  style: TextStyle(
                    color: Pallete.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}