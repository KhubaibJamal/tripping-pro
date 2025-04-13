import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/home/widgets/popular_travelers.dart';
import 'package:tripping_pro/screens/home/widgets/recent_itineraries_card.dart';
import 'package:tripping_pro/screens/widgets/custom_search_bar.dart';
import 'package:tripping_pro/screens/widgets/header_with_see_all.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> itineraries = [
    {'imageUrl': 'assets/images/home_bg.png', 'title': 'Trip to Paris'},
    {'imageUrl': 'assets/images/new_year.png', 'title': 'Trip to London'},
    {'imageUrl': 'assets/images/valleys.png', 'title': 'Trip to New York'},
    {'imageUrl': 'assets/images/home_bg.png', 'title': 'Trip to Tokyo'},
    {'imageUrl': 'assets/images/new_year.png', 'title': 'Trip to Sydney'},
  ];

  final List<Map<String, dynamic>> popularTravelers = [
    {
      'imageUrl': 'assets/images/new_year.png',
      'title': 'Saad',
      "location": "Florida",
    },
    {
      'imageUrl': 'assets/images/valleys.png',
      'title': 'Penney',
      "location": "New York",
    },
    {
      'imageUrl': 'assets/images/home_bg.png',
      'title': 'Asad',
      "location": "Albania",
    },
    {
      'imageUrl': 'assets/images/new_year.png',
      'title': 'Richard',
      "location": "USA",
    },
    {
      'imageUrl': 'assets/images/home_bg.png',
      'title': 'Areeb',
      "location": "Dubai",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header section
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: context.screenHeight * 0.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(MediaConstants.homeBg),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: context.screenHeight * 0.06),

                      // app bar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  RouteNames.myBookingScreen,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  MediaConstants.drawerIcon,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/profile.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // blow container
                Positioned(
                  bottom: -25,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: context.screenWidth * 0.9,
                        // height: 34.rh(context),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFF292A2C),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(19),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "I’m Tripping Pro !",
                              style: TextStyle(
                                fontFamily: 'Quantico',
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                height: 1.0,
                                color: CustomColors.white,
                                letterSpacing: 1.0,
                              ),
                            ),
                            SizedBox(height: 5.rh(context)),
                            Text(
                              "Your guide to stress-free travel",
                              style: TextStyle(
                                fontFamily: 'ReemKufi',
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                height: 1.0,
                                color: CustomColors.white,

                                letterSpacing: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.9,
                        child: CustomSearchBar(
                          isBottomBorder: true,
                          textController: searchController,
                          hintText: "Ask Anything",
                          onTap: () {
                            Navigator.pushNamed(context, RouteNames.chatScreen);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 20.rh(context)),
                  HeaderWithSeeAllButton(title: "Recent Itineraries"),
                  SizedBox(height: 20.rh(context)),
                  SizedBox(
                    height: 250.rh(context),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itineraries.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: RecentItinerariesCard(
                            imageUrl: itineraries[index]['imageUrl'],
                            title: itineraries[index]['title'],
                            onTap: () {},
                          ),
                        );
                      },
                    ),
                  ),

                  // popular travelers
                  SizedBox(height: 20.rh(context)),
                  HeaderWithSeeAllButton(title: "Popular Travelers"),
                  SizedBox(height: 20.rh(context)),
                  SizedBox(
                    height: 250.rh(context),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itineraries.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: PopularTravelers(
                            imageUrl: popularTravelers[index]['imageUrl'],
                            title: popularTravelers[index]['title'],
                            subtitle: popularTravelers[index]['location'],
                            onTap: () {},
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
