import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {

  final Widget  buttonOne;
  final Widget  buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,


      });



 // const HeaderButtonSection({super.key});
 //  Widget headerButton({
 //    required String buttonText,
 //    required IconData buttonIcon,
 //    required void Function() buttonAction,
 //    required Color buttonColor,
 //  }){
 //    return TextButton.icon(
 //      onPressed: buttonAction,
 //      icon:Icon( buttonIcon,
 //        color: buttonColor,
 //      ),
 //      label: Text(buttonText),
 //    );
 //
 //  }
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          // headerButton(
          //   buttonAction: (){
          //     print("Go Live");
          //   },
          //   buttonIcon: Icons.video_call,
          //   buttonColor: Colors.red,
          //   buttonText: "Live",
          // ),
          verticalDivider,
          buttonTwo,
          // headerButton(
          //   buttonAction: (){
          //     print("Take a photo");
          //   },
          //   buttonIcon: Icons.photo_library,
          //   buttonColor: Colors.green,
          //   buttonText: "Photo",
          // ),
          verticalDivider,
          buttonThree,
          // headerButton(
          //   buttonAction: (){
          //     print("create Chat Room");
          //   },
          //   buttonIcon: Icons.video_call,
          //   buttonColor: Colors.purple,
          //   buttonText: "Room",
          // ),
        ],
      ),
    );
  }
}