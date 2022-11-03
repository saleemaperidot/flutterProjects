import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  //const HeaderButtonSection({super.key});
  Widget verticalDivider = const VerticalDivider(
    thickness: 1,
    color: Colors.grey,
  );

  Widget headerbuttons({
    required String buttonLabel,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      label: Text(buttonLabel), // <-- TextButton
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
        size: 24.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerbuttons(
            buttonAction: () {
              print("Go Live");
            },
            buttonColor: Colors.red,
            buttonIcon: Icons.video_call,
            buttonLabel: "Vedio",
          ),
          verticalDivider,
          headerbuttons(
            buttonAction: () {
              print("Take Photo");
            },
            buttonColor: Colors.green,
            buttonIcon: Icons.photo_library,
            buttonLabel: "Photo",
          ),
          verticalDivider,
          headerbuttons(
            buttonAction: () {
              print("create Chat room");
            },
            buttonColor: Colors.purple,
            buttonIcon: Icons.video_call,
            buttonLabel: "Room",
          ),
        ],
      ),
    );
  }
}
