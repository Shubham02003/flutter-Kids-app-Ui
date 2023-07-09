import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/leaderBoard/screens/leader_board_screen.dart';
import 'package:flutter_ui_task1/Models/user_model.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';
import 'package:flutter_ui_task1/core/utils/profile_card_tile.dart';
import 'package:flutter_ui_task1/core/utils/profile_custom_box.dart';
import 'package:flutter_ui_task1/core/utils/snack_bar.dart';
import 'package:flutter_ui_task1/core/utils/title_reuseable_widget.dart';

class ProfileInfoScreen extends ConsumerWidget {
  final UserModel user;
  const ProfileInfoScreen({Key? key, required this.user}) : super(key: key);



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.greenColor,
        elevation: 0.0,
      ),
      backgroundColor: Pallete.greenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(user.profileImage),
                      radius: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(title: user.name),
                        const SizedBox(
                          height: 5,
                        ),
                        ProfileSubText(text: user.houseName)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Divider(
                  thickness: 1.5,
                  color: Pallete.whiteColor,
                ),
                const SizedBox(height: 25),
                const TitleText(title: 'Aadhar Number:'),
                const SizedBox(height: 10),
                ProfileSubText(text: user.aadharNumber),
                const SizedBox(height: 15),
                const TitleText(title: 'Phone Number:'),
                const SizedBox(height: 10),
                ProfileSubText(text: user.phoneNumber),
                const SizedBox(height: 15),
                const TitleText(title: 'School Name:'),
                const SizedBox(height: 10),
                ProfileSubText(text: user.schoolName),
                const SizedBox(height: 20),
                Divider(
                  thickness: 1.5,
                  color: Pallete.whiteColor,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBox(
                      text: 'Notifications',
                      iconName: Icons.notifications_none,
                      function:()=>showSnackBar(context),
                    ),
                    CustomBox(
                      text: 'LeaderBoard',
                      iconName: Icons.leaderboard_outlined,
                      function: () {
                        //TODO implement route
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LeaderBoardScreen(),
                          ),
                        );
                      },
                    ),
                    CustomBox(
                      text: 'Settings',
                      iconName: Icons.settings_outlined,
                      function: ()=>showSnackBar(context),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Card(
                  color: Pallete.postBackgroundColor,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Column(
                      children: [
                        CardTIle(
                          title: 'Contribution',
                          iconName: Icons.home_outlined,
                          function: ()=>showSnackBar(context),
                        ),
                        Divider(
                          thickness: 1,
                          color: Pallete.whiteColor,
                        ),
                         CardTIle(
                          title: 'View Plans',
                          iconName: Icons.account_balance_wallet_outlined,
                           function: ()=>showSnackBar(context),
                        ),
                        Divider(
                          thickness: 1,
                          color: Pallete.whiteColor,
                        ),
                        CardTIle(
                          title: "Share",
                          iconName: Icons.share,
                          function: ()=>showSnackBar(context),
                        ),
                      ],
                    ),
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

class ProfileSubText extends StatelessWidget {
  const ProfileSubText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 17, color: Pallete.subTextColor),
    );
  }
}
