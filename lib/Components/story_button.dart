import 'package:flutter/material.dart';
import 'package:instagram/utils/story_data.dart';
import 'package:instagram/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

Widget storyButton(StoryData story, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(50.0),
          onTap: () {},
          child: Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
                color: MyTheme.creamColor,
                borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
      ],
    ),
  );
}
