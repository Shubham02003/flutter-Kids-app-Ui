import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/home/controller/home_controller.dart';
import 'package:flutter_ui_task1/Features/profile/controller/profile_controller.dart';
import 'package:flutter_ui_task1/Features/profile/screen/profile_info_screen.dart';
import 'package:flutter_ui_task1/Models/event_model.dart';
import 'package:flutter_ui_task1/Models/post_model.dart';
import 'package:flutter_ui_task1/Models/user_model.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';
import 'package:flutter_ui_task1/core/utils/post_listtile.dart';
import 'package:flutter_ui_task1/core/utils/snack_bar.dart';
import 'package:flutter_ui_task1/core/utils/subtitle_widget.dart';
import 'package:flutter_ui_task1/core/utils/title_reuseable_widget.dart';

class HomeScreenBody extends ConsumerWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<PostModel> topPostList =
        ref.watch(homeControllerProvider).getTopPost();
    final List<EventModel> upComingEventsList =
        ref.watch(homeControllerProvider).getUpcomingEvents();
    final UserModel user = ref.watch(profileControllerProvider).getUserData();
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello ${user.name} !',
                  style: TextStyle(
                    color: Pallete.titleTextColor,
                    letterSpacing: 0.5,
                    fontSize: 23,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //TODO:implement route
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileInfoScreen(
                          user: user,
                        ),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage(
                      user.profileImage,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0).copyWith(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(
                      10,
                    ),
                    fillColor: Pallete.searchBackGroundColor,
                    hintText: 'Search Competition',
                    hintStyle: TextStyle(
                      color: Pallete.whiteColor,
                      letterSpacing: 1.5,
                      fontSize: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Pallete.whiteColor,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const TitleText(title: 'Inspiration'),
                const SizedBox(height: 10),
                const SubTitleText(subTitle: 'View the recent top performances')
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.48,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topPostList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final post = topPostList[index];
                  return CustomListTile(post: post);
                }),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                TitleText(title: 'Attention!'),
                SizedBox(height: 10),
                SubTitleText(
                    subTitle:
                        'Pull up your socks for the upcoming competitions'),
              ],
            ),
          ),
          ListView.builder(
            itemCount: upComingEventsList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final event = upComingEventsList[index];
              return GestureDetector(
                onTap: ()=>showSnackBar(context),
                child: Container(
                    decoration: BoxDecoration(
                      color: Pallete.postBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.25,
                            width: double.infinity,
                            child: Image.asset(
                              event.eventBannerUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                event.eventName,
                                style: TextStyle(
                                  color: Pallete.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Start Date :${event.eventStartDate}',
                                    style: TextStyle(
                                      color: Pallete.subTextColor,
                                    ),
                                  ),
                                  Text(
                                    'End Date :${event.eventEndDate}',
                                    style: TextStyle(
                                      color: Pallete.subTextColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              );
            },
          )
        ],
      ),
    );
  }
}
