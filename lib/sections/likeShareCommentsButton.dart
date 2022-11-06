//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/material.dart';

class LikeShareComment extends StatelessWidget {
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
            buttonColor: Color.fromARGB(255, 33, 32, 32),
            buttonIcon: Icons.thumb_up_off_alt_outlined,
            buttonLabel: "Like",
          ),
          verticalDivider,
          headerbuttons(
            buttonAction: () {
              print("Take Photo");
            },
            buttonColor: Colors.grey,
            buttonIcon: Icons.message_outlined,
            buttonLabel: "Comment",
          ),
          verticalDivider,
          headerbuttons(
            buttonAction: () {
              print("create Chat room");
            },
            buttonColor: Colors.grey,
            buttonIcon: Icons.share_outlined,
            buttonLabel: "Share",
          ),
        ],
      ),
    );
  }
}
