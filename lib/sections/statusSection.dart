// ignore_for_file: prefer_const_constructors

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';
import 'package:my_facebookui/widgetsSample/profile.dart';

//import '';
class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: profilewidget(
        profileImage: hamdan,
        profileStatus: false,
      ),
      // leading: ClipRRect(
      //   borderRadius: BorderRadius.circular(100),
      //   child: Image.asset(
      //     hamdan,
      //     width: 50,
      //     height: 50,

      //   ),
      // ),
      // ignore: prefer_const_constructors
      title: TextField(
        decoration: InputDecoration(
          hintText: "What is in your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
