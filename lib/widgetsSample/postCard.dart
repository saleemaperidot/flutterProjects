// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/blueTick.dart';
import 'package:my_facebookui/widgetsSample/profile.dart';

class PostCard extends StatelessWidget {
  //const MyWidget({super.key});
  final String profilePicture;
  final String profileName;
  final String PublishedAt;
  final String title;
  final String PostedImage;
  bool bluetickflag;
  final String likes;
  final String comments;
  final String share;
  PostCard(
      {required this.profilePicture,
      required this.profileName,
      required this.PublishedAt,
      required this.title,
      required this.PostedImage,
      this.bluetickflag = false,
      required this.likes,
      required this.comments,
      required this.share});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          postcardTittle(),
          titleSection(),
          postedImage(),
          footersection()
        ],
      ),
    );
  }

  Widget footersection() {
    return Container(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  SizedBox(width: 5),
                  displayText(likes),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 6),
              child: Row(
                children: [
                  displayText("Comments"),
                  SizedBox(
                    width: 3,
                  ),
                  displayText(comments),
                  SizedBox(
                    width: 5,
                  ),
                  displayText("Shares"),
                  SizedBox(
                    width: 3,
                  ),
                  displayText(share),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    //decoration: ,
                    width: 25,
                    height: 25,
                    child: profilewidget(
                      profileImage: profilePicture,
                      displayBorder: false,
                      profileStatus: false,
                      borderStatus: false,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget displayText(String displayText) {
    return Text(displayText == "" ? "" : displayText,
        style: TextStyle(color: Colors.grey[700]));
  }

  Widget postedImage() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(PostedImage),

      //     decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage(PostedImage), // Image.asset(PostedImage),
      //       fit: BoxFit.cover),
      // )
    );
  }

  Widget titleSection() {
    return title != null && title != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              title == "" ? "" : title,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        : SizedBox();
  }

  Widget postcardTittle() {
    return ListTile(
      leading:
          profilewidget(profileImage: profilePicture, profileStatus: false),
      title: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            profileName,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          bluetickflag ? Bluetick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          // ignore: prefer_if_null_operators
          Text(PublishedAt == null ? "" : PublishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            "press more";
          },
          icon: Icon(Icons.more_horiz, color: Colors.grey[700])),
    );
  }
}
