import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';


class RecentItinerariesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;
  const RecentItinerariesCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 150.rh(context),
            width: 125.rw(context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.rh(context)),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'HindJalandhar',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.0,
              color: const Color(0xFF292C2B),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 10.rh(context)),
          AvatarRow(),
        ],
      ),
    );
  }
}

class AvatarRow extends StatelessWidget {
  const AvatarRow({super.key});

  @override
  Widget build(BuildContext context) {
    // List of avatar image URLs (replace with your own assets if needed)
    final List<String> avatarUrls = [
      'https://picsum.photos/200',
      'https://picsum.photos/300',
      'https://picsum.photos/400',
      'https://picsum.photos/500',
    ];

    return SizedBox(
      height: 60,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 50.rw(context),
            child: Stack(
              clipBehavior: Clip.none,
              children: List.generate(avatarUrls.length, (index) {
                return Positioned(
                  left: index * 15.0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                        image: NetworkImage(avatarUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          // Add the "+" button
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 25.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColors.primary,
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
