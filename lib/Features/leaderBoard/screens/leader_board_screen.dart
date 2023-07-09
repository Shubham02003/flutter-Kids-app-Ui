import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/leaderBoard/repository/leader_board_repository.dart';
import 'package:flutter_ui_task1/Features/profile/controller/profile_controller.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';
import 'package:flutter_ui_task1/core/utils/custom_chart.dart';
import 'package:flutter_ui_task1/core/utils/custom_table_cell.dart';
import 'package:flutter_ui_task1/core/utils/title_reuseable_widget.dart';

class LeaderBoardScreen extends ConsumerWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(profileControllerProvider).getUserData();
    final leaderBoardList =
        ref.watch(leaderBoardRepositoryProvider).getLeaderBoard();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallete.greenColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Leaderboard',
                      style: TextStyle(
                          color: Pallete.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(user.profileImage),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'This week:',
                  style: TextStyle(
                    color: Pallete.subTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(),
                    1: FlexColumnWidth(),
                    2: FlexColumnWidth(),
                  },
                  children: List.generate(
                    leaderBoardList.length,
                    (index) {
                      final row = leaderBoardList[index];
                      return TableRow(
                        children: [
                          CustomTableCell(
                            cellTitle: '0${index + 1}',
                          ),
                          CustomTableCell(
                            cellTitle: row.houseName,
                          ),
                          CustomTableCell(
                            cellTitle: '${row.points}pts',
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Current Team Positions:',
                  style: TextStyle(
                    color: Pallete.subTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(height: 380, child: CustomChart()),
                const SizedBox(height: 15),
                const TitleText(title: 'Your Contribution to Red House:'),
                const TitleText(title: '160pts'),
                const SizedBox(height: 25),
                const Center(child: TitleText(title: 'Keep it up!')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
