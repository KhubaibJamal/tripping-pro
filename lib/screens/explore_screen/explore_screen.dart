
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/explore_screen/widget/story_widget.dart';
import 'package:tripping_pro/screens/explore_screen/widget/trending_destination.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/screens/widgets/custom_search_bar.dart';
import 'package:tripping_pro/screens/widgets/header_with_see_all.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  final List<Map<String, dynamic>> destinations = [
    {
      "airlines": "12",
      "country": "USA",
      "city": "New York",
      "imageUrl": "https://picsum.photos/200",
    },
    {
      "airlines": "15",
      "country": "USA",
      "city": "New York",
      "imageUrl": "https://picsum.photos/500",
    },
    {
      "airlines": "22",
      "country": "USA",
      "city": "New York",
      "imageUrl": "https://picsum.photos/300",
    },
    {
      "airlines": "19",
      "country": "USA",
      "city": "New York",
      "imageUrl": "https://picsum.photos/400",
    },
    {
      "airlines": "12",
      "country": "USA",
      "city": "New York",
      "imageUrl": "https://picsum.photos/500",
    },
    {
      "airlines": "64",
      "country": "Tokyo",
      "city": "Japan",
      "imageUrl": "https://picsum.photos/600",
    },
  ];

  final Map<String, String> countryStories = {
    'Agra': 'https://picsum.photos/200',
    'Paris': 'https://picsum.photos/300',
    'Tokyo': 'https://picsum.photos/400',
    'Cairo': 'https://picsum.photos/500',
    'Bali': 'https://picsum.photos/700',
    'Pak': 'https://picsum.photos/600',
  };
  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Explore',
            style: TextStyle(
              color: CustomColors.primaryTextColor,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36,
              height: 1.0,
              letterSpacing: 0.0,
            ),
          ),
          actions: [
            SvgPicture.asset(MediaConstants.notification),
            SizedBox(width: 15.rw(context)),
          ],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.rh(context)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomSearchBar(
                textController: TextEditingController(),
                hintText: "Where you want to go?",
                fillColor: Color(0xFFF5F5F5),
              ),
            ),
            SizedBox(height: 20.rh(context)),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: HeaderWithSeeAllButton(
                title: "Trending Destinations",
                isBold: true,
              ),
            ),
            SizedBox(height: 20.rh(context)),

            SizedBox(
              height: 240.rh(context),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: TrendingDestinationCard(
                        airlines: destinations[index]['airlines'],
                        country: destinations[index]['country'],
                        city: destinations[index]['city'],
                        imageUrl: destinations[index]['imageUrl'],
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 20.rh(context)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Top 10 Destinations",
                style: TextStyle(
                  color: CustomColors.primaryTextColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  height: 1.0,
                  letterSpacing: 0.0,
                ),
              ),
            ),

            SizedBox(height: 20.rh(context)),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: countryStories.length,
                  itemBuilder: (context, index) {
                    final entries = countryStories.entries.toList();
                    final entry = entries[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: StoryWidget(
                        imageUrl: entry.value,
                        title: entry.key,
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 20.rh(context)),
          ],
        ),
      ),
    );
  }
}
