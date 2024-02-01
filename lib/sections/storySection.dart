import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storycard(
            labelText: "Add to Story",
            avatar: dulquar,
           story: dulquar,
            createStoryStatus: true,
           // displayBorder: true,

          ),
          Storycard(
            labelText: "Mammootty",
            avatar: mammootty,
            story: mammustory,
            displayBorder: true,

          ),

          // Storycard(
          //   labelText: "Mohanlal",
          //   avatar: mohanlal,
          //   story: mohanlalstory,
          //   displayBorder: true,
          //
          // ),
          Storycard(
            labelText: "prithviraj",
            avatar: prithviraj,
            story: pristory,
            displayBorder: true,
          ),
          Storycard(
            labelText: "vijay",
            avatar: vijay,
            story: vijaystory,
            displayBorder: true,
          ),
          Storycard(
            labelText: "Surya",
            avatar: surya,
            story: mammustory,
            displayBorder: true,

          ),
        ],
      ),
    );
  }
}
