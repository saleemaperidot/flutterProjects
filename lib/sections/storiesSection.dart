import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_facebookui/widgetsSample/assets.dart';
import 'package:my_facebookui/widgetsSample/storyCard.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            story: hamdan,
            profileOfStory: hamdan,
            circularButtonIconStatus: true,
          ),
          StoryCard(
            labelText: "APJ Abdul kalam",
            story: apjStory,
            profileOfStory: apj,
            circularButtonIconStatus: false,
            borderStatusavathar: true,
          ),
          StoryCard(
            labelText: "Barak obama",
            story: obamaStory,
            profileOfStory: obama,
            circularButtonIconStatus: false,
            borderStatusavathar: true,
          ),
          StoryCard(
            labelText: "Zuken berg",
            story: zukenbergStory,
            profileOfStory: Zhukenberk,
            circularButtonIconStatus: false,
            borderStatusavathar: true,
          ),
          StoryCard(
            labelText: "sundar pchai",
            story: sundarpichaiStory,
            profileOfStory: sundarpichai,
            circularButtonIconStatus: false,
            borderStatusavathar: true,
          ),
        ],
      ),
    );
  }
}
