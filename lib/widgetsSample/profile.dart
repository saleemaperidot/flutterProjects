import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';

class profilewidget extends StatelessWidget {
  final String profileImage;
  final bool profileStatus;
  final bool displayBorder;
  final bool borderStatus;

  profilewidget(
      {required this.profileImage,
      required this.profileStatus,
      this.displayBorder = false,
      this.borderStatus = false});

  @override
  Widget build(BuildContext context) {
    // Widget StatusIndicator;
    // if (profileStatus == true) {
    //   StatusIndicator = Positioned(
    //     bottom: 0,
    //     right: 1,
    //     child: Container(
    //       width: 15,
    //       height: 15,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: Colors.white,
    //           width: 2,
    //         ),
    //       ),
    //     ),
    //   );
    // } else {
    //   StatusIndicator = SizedBox();
    // }
    return Stack(
      children: [
        Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: borderStatus
                ? Border.all(
                    color: Colors.blueAccent,
                    // ignore: prefer_const_constructors
                    width: 3)
                : Border(),
          ),
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: CircleAvatar(
            backgroundImage: AssetImage(profileImage),
          ),
        ),
        profileStatus
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
    // return CircleAvatar(
    //     backgroundImage: AssetImage(hamdan),
    //   );
  }
}
