import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class CircularButton extends StatelessWidget {
  //const AppBarButton({super.key});
  final IconData iconButtonData;
  final void Function() buttonAction;
  final Color IconColor;

  CircularButton(
      {required this.iconButtonData,
      required this.buttonAction,
      this.IconColor = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        onPressed: buttonAction,
        // ignore: prefer_const_constructors
        icon: Icon(
          iconButtonData,
          color: IconColor,
          size: 25,
        ),
      ),
    );
  }
}
