
import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class CardTIle extends StatelessWidget {
  final IconData iconName;
  final String title;
  final VoidCallback function;
   const CardTIle({
    super.key,
     required this.iconName,
     required this.title,required this.function
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconName,
                  size: 30,
                  color: Pallete.whiteColor,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(color: Pallete.whiteColor,fontSize: 15),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Pallete.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}