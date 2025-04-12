import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';

class StoryWidget extends StatelessWidget {
  final String imageUrl;
  final String title;

  const StoryWidget({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: CustomColors.primary, width: 2),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: CustomColors.primaryTextColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.0,
            letterSpacing: 0.0,
          ),
        ),
      ],
    );
  }
}
