// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';

class SuggessionCard extends StatelessWidget {
  const SuggessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,

        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  child: Image.asset(hamdan, height: 350, fit: BoxFit.cover),
                )
                // child:
                ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 140,
                color: Colors.grey[300],
                child: Column(children: [
                  ListTile(
                    title: Text("saleema"),
                    subtitle: Text("mutual friend"),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      10,
                    ),
                    child: Row(children: [
                      iconButton(
                          buttonAction: () {},
                          buttonText: "Add Friend",
                          buttonColor: Colors.blue,
                          buttonData: Icons.add_moderator,
                          buttonTextColor: Colors.white,
                          buttonIconColor: Colors.red)
                      //  buttonAction: print("object")

                      //  buttonText: "saleema",
                      //  buttonData: Icon(Icons.abc_outlined)),
                    ]),
                  ),
                ]),
              ),
            )
          ],
        ));
  }

  Widget iconButton(
      {required void Function() buttonAction,
      required IconData buttonData,
      required Color buttonColor,
      required Color buttonTextColor,
      required Color buttonIconColor,
      required String buttonText}) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonData,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)
          //Color:Colors.blue),

          ),
    );
  }
}
