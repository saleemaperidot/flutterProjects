// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_facebookui/sections/headerButtonSection.dart';
import 'package:my_facebookui/sections/roomSection.dart';
import 'package:my_facebookui/sections/statusSection.dart';
import 'package:my_facebookui/sections/storiesSection.dart';
import 'package:my_facebookui/widgetsSample/circularButton.dart';

class Home extends StatelessWidget {
  //const Home({super.key});
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey,
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    // return Container(
    //   child: Text("hello"),
    // );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          actions: <Widget>[
            CircularButton(
              iconButtonData: Icons.search,
              buttonAction: () {
                print("serch button");
              },
            ),
            CircularButton(
              iconButtonData: Icons.message,
              buttonAction: () {
                print("message button");
              },
            ),
          ],
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            Divider(
              thickness: 10,
              color: Colors.grey,
            ),
            RoomSection(),
            thickDivider,
            StoriesSection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
