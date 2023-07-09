
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Models/Individual_bar_model.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';

class CustomChart extends StatelessWidget {
  CustomChart({Key? key}) : super(key: key);

  final List<IndividualBarModel> myList = [
    IndividualBarModel(x: 1, y: 800, color: Pallete.greenAccentColor),
    IndividualBarModel(x: 2, y: 700, color: Pallete.yellowColor),
    IndividualBarModel(x: 3, y: 400, color: Pallete.redColor),
    IndividualBarModel(x: 4, y: 950, color: Pallete.purpleColor),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.greenColor,
      body: BarChart(
        BarChartData(
          maxY: 1000,
          minY: 0,
          backgroundColor: Pallete.greenColor,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(
              border: Border(
                bottom: BorderSide(width: 2, color: Pallete.whiteColor),
                left: BorderSide(width: 2, color: Pallete.whiteColor),
              )),
          titlesData: const FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: getBottomTitles,
                  reservedSize: 30),
            ),
          ),
          barGroups: myList
              .map(
                (data) => BarChartGroupData(x: data.x, barRods: [
              BarChartRodData(
                toY: data.y.toDouble(),
                color: data.color,
                width: 60,
                borderRadius: BorderRadius.circular(2),
              ),
            ]),
          )
              .toList(),
        ),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  final style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Pallete.whiteColor,
  );

  Widget text;
  switch (value.toInt()) {
    case 1:
      text = Text('Green', style: style);
      break;
    case 2:
      text = Text('Yellow', style: style);
      break;
    case 3:
      text = Text('Red', style: style);
      break;
    case 4:
      text = Text('Purple', style: style);
      break;
    default:
      text = Text('', style: style);
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}