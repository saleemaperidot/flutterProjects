// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_facebookui/sections/headerButtonSection.dart';
import 'package:my_facebookui/sections/likeShareCommentsButton.dart';
import 'package:my_facebookui/sections/roomSection.dart';
import 'package:my_facebookui/sections/statusSection.dart';
import 'package:my_facebookui/sections/storiesSection.dart';
import 'package:my_facebookui/sections/suggestionSection.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';
import 'package:my_facebookui/widgetsSample/circularButton.dart';
import 'package:my_facebookui/widgetsSample/postCard.dart';

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
            PostCard(
              profilePicture: sundarpichai,
              profileName: "Sundar Pichai",
              PublishedAt: "3h",
              title: "powerfull",
              PostedImage: sundarpichaiStory,
              bluetickflag: true,
              likes: "15K",
              comments: "30",
              share: "600",
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[400],
            ),
            LikeShareComment(),
            Divider(
              thickness: 10,
              color: Colors.grey[700],
            ),
            PostCard(
              profilePicture: apj,
              profileName: "APJ  Abdulkalam",
              PublishedAt: "1h",
              title: "Fine",
              PostedImage: apjStory,
              bluetickflag: true,
              likes: "15K",
              comments: "300",
              share: "100K",
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[400],
            ),
            LikeShareComment(),
            Divider(
              thickness: 10,
              color: Colors.grey[700],
            ),

            SuggesionSection(),
            thickDivider,
            PostCard(
              profilePicture: hamdan,
              profileName: "Shiek Hamdan",
              PublishedAt: "1day",
              title: "",
              PostedImage: hamdanStory,
              bluetickflag: false,
              likes: "15K",
              comments: "300",
              share: "100K",
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[400],
            ),
            LikeShareComment(),
            Divider(
              thickness: 10,
              color: Colors.grey[700],
            ),
            // thickDivider,
          ],
        ),
      ),
    );
  }
}
