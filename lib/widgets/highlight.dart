import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Highlight extends StatelessWidget {
  const Highlight({Key? key , required this.radius}) : super(key: key);
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                    radius: radius),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
              )
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(7.0),
            child: GestureDetector(
              onTap: () {
                debugPrint('Button tapped');
              },
              child: CircleAvatar(
                radius: radius,
                backgroundColor: Colors.white60,
              ),
            )
        ),
      ],
    );
  }
}

