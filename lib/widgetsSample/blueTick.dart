import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Bluetick extends StatelessWidget {
  const Bluetick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      // ignore: prefer_const_constructors
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
