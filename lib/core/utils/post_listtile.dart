import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/Models/post_model.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';
import 'package:flutter_ui_task1/core/utils/snack_bar.dart';
import 'package:flutter_ui_task1/core/utils/subtitle_widget.dart';
import 'package:flutter_ui_task1/core/utils/title_reuseable_widget.dart';


class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ()=>showSnackBar(context),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Pallete.postBackgroundColor,
          borderRadius: BorderRadius.circular(25),
        ),
        width: size.width * 0.8,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post.profileImage),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TitleText(title: post.name)
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                height: size.height * 0.22,
                width: size.width * 0.75,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    post.postImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SubTitleText(subTitle: post.description),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "House - ${post.houseName}",
                        style: TextStyle(
                            color: Pallete.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "School - ${post.schoolName}",
                        style: TextStyle(
                            color: Pallete.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Pallete.redColor,
                        size: 30,
                      ),
                      Text(
                        "${post.upvotes} upVotes",
                        style: TextStyle(
                          color: Pallete.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
