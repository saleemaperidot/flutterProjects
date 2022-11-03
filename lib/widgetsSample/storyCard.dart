// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';
import 'package:my_facebookui/widgetsSample/circularButton.dart';
import 'package:my_facebookui/widgetsSample/profile.dart';

class StoryCard extends StatelessWidget {
  // const StoryCard({super.key});
  final String labelText;
  final String story;
  final String profileOfStory;
  final bool circularButtonIconStatus;
  final bool borderStatusavathar;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.profileOfStory,
      this.circularButtonIconStatus = false,
      this.borderStatusavathar = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(children: [
        Positioned(
            left: 5,
            top: 5,
            child: circularButtonIconStatus
                ? CircularButton(
                    iconButtonData: Icons.add,
                    buttonAction: () {},
                    IconColor: Colors.blue,
                  )
                : profilewidget(
                    profileImage: profileOfStory,
                    profileStatus: false,
                    borderStatus: borderStatusavathar,
                  )),
        Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ))
      ]),
    );
  }
}
