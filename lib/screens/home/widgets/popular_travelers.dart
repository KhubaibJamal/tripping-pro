import 'package:flutter/material.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class PopularTravelers extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const PopularTravelers({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 96.rh(context),
            width: 77.rw(context),
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
              letterSpacing: 1.0,
              color: const Color(0xFF292C2B),
            ),
          ),
          SizedBox(height: 10.rh(context)),
          Text(
            subtitle,
            style: TextStyle(
              fontFamily: 'HindJalandhar',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.0,
              letterSpacing: 1.0,
              color: const Color(0xFF899390),
            ),
          ),
          SizedBox(height: 10.rh(context)),
        ],
      ),
    );
  }
}
