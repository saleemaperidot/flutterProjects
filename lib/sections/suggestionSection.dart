import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/suggesionCard.dart';

class SuggesionSection extends StatelessWidget {
  const SuggesionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          ListTile(
            // ignore: prefer_const_constructors
            title: Text("People you may know"),
            // ignore: prefer_const_constructors
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
              color: Colors.grey[700],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
              height: 340,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  SuggessionCard(),
                  SuggessionCard(),
                  SuggessionCard(),
                  SuggessionCard(),
                ],
              )),
        ],
      ),
    );
  }
}
