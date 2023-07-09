import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class CustomTableCell extends StatelessWidget {
  final String cellTitle;
  const CustomTableCell({super.key, required this.cellTitle});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        height: 20,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.centerLeft,
        child: Text(
          cellTitle,
          style: TextStyle(color: Pallete.whiteColor, fontSize: 18),
        ),
      ),
    );
  }
}
