import 'package:flutter/material.dart';

class CascadingAvatars extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/user/user1.jpg',
    'assets/user/user2.jpg',
    'assets/user/user3.jpg',
    'assets/user/user4.jpg',
  ];

  CascadingAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Adjust based on the avatar size
      child: Stack(
        clipBehavior: Clip.none,
        children: List.generate(imagePaths.length, (index) {
          return Positioned(
            left: index * 40, // Adjust cascading distance
            child: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage(imagePaths[index]), // Dynamic image path
            ),
          );
        }),
      ),
    );
  }
}
