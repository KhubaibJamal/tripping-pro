import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class TrendingDestinationCard extends StatelessWidget {
  final String airlines;
  final String country;
  final String city;
  final String imageUrl;
  final VoidCallback onTap;
  const TrendingDestinationCard({
    super.key,
    required this.airlines,
    required this.country,
    required this.city,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 240.rh(context),
        width: 200.rw(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            onError: (exception, stackTrace) {
              if (kDebugMode) {
                print('Image load error: $exception');
              }
            },
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // airlines
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(33),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          airlines,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: CustomColors.white,
                            height: 1.0,
                            letterSpacing: 0.0,
                          ),
                        ),
                        Text(
                          " Airlines",
                          style: TextStyle(
                            color: CustomColors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            height: 1.0,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            // city, country
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      city,
                      style: TextStyle(
                        color: CustomColors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 1.0,
                        letterSpacing: 0.0,
                      ),
                    ),
                    SizedBox(height: 5.rh(context)),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // const Spacer(),
                        Text(
                          country,
                          style: TextStyle(
                            color: CustomColors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            height: 1.0,
                            letterSpacing: 0.0,
                          ),
                        ),
                        const Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(33),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10.0,
                              sigmaY: 10.0,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10.rw(context)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
