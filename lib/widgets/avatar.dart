import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/Pages/profile.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key , required this.radius}) : super(key: key);
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: radius),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
          )
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
              onTap: () {
                debugPrint('Button tapped');
              },
              child: CircleAvatar(
                radius: radius,
                backgroundColor: Colors.grey,
                ),
              )
          ),
      ],
    );
  }
}
