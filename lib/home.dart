import 'package:facebook/assets.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/SuggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/sections/StatusSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/headerButtonSection.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search Screen appears");
                }
            ),

            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () => print("message friends")
            ),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("go live");
                  },
                  buttonColor: Colors.red
              ),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take photo");
                  },
                  buttonColor: Colors.green
              ),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create room");
                  },
                  buttonColor: Colors.purple
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              name: "Mammootty",
              avatar: mammootty,
              publishedAt: "5h",
              postImage: mammustory,
              postTitle: "Releasing Worldwide on November 23,2023",
              showBlueTick: true,
              likeCount:" 10K",
              commentCount: "1K",
              shareCount: "1K",
            ),
            thickDivider,
            PostCard(
              name: "Prithviraj",
              avatar: prithviraj,
              publishedAt: "5 min ago",
              postImage: pristory,
              postTitle: "First Look Poster of EMPURAAN",
              showBlueTick: true,
              likeCount:" 9K",
              commentCount: "1.1K",
              shareCount: "1.5K",

            ),
            thickDivider,
            PostCard(
              name: "Mohanlal",
              avatar: mohanlal,
              publishedAt: "2 day ago",
              postImage: mohanlalstory,
              postTitle: " ",
              showBlueTick: true,
              likeCount:" 15K",
              commentCount: "1.1K",
              shareCount: "4K",

            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
          ],

        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}