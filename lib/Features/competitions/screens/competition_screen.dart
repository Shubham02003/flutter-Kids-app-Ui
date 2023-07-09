import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.greenColor,
      body: Container(
        alignment: Alignment.center,
        child: Text('Coming Soon...',style: TextStyle(
            color: Pallete.whiteColor,fontSize: 25
        ),),
      ),
    );
  }
}
