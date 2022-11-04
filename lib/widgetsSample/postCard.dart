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

  PostCard(
      {required this.profilePicture,
      required this.profileName,
      required this.PublishedAt});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: profilewidget(
                profileImage: profilePicture, profileStatus: false),
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
                Bluetick(),
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
          )
        ],
      ),
    );
  }
}
