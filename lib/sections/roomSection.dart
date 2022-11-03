// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';
import 'package:my_facebookui/widgetsSample/profile.dart';

class RoomSection extends StatelessWidget {
  //const RoomSection({super.key});
  Widget div = Divider(
    endIndent: 10,
  );
  Widget CreateRoom() {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: Colors.green),
        ),
        onPressed: () {},
        // ignore: prefer_const_constructors
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(10),
        children: [
          CreateRoom(),
          div,
          profilewidget(profileImage: hamdan, profileStatus: true),
          div,
          profilewidget(profileImage: apj, profileStatus: true),
          div,
          profilewidget(profileImage: Zhukenberk, profileStatus: true),
          div,
          profilewidget(profileImage: obama, profileStatus: true),
          div,
          profilewidget(profileImage: sundarpichai, profileStatus: true),
          div,
          profilewidget(profileImage: hamdan, profileStatus: true),
          div,
          profilewidget(profileImage: apj, profileStatus: true),
          div,
          profilewidget(profileImage: Zhukenberk, profileStatus: true),
          div,
          profilewidget(profileImage: obama, profileStatus: true),
          div,
          profilewidget(profileImage: sundarpichai, profileStatus: true),
          div,
        ],
      ),
    );
  }
}
