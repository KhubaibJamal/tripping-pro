import 'package:flutter/material.dart';
import 'package:tripping_pro/screens/auth_flow/login_screen.dart';
import 'package:tripping_pro/screens/auth_flow/sign_up_screen.dart';
import 'package:tripping_pro/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:tripping_pro/screens/chat_screen/chat_screen.dart';
import 'package:tripping_pro/screens/explore_screen/explore_screen.dart';
import 'package:tripping_pro/screens/get_started_screen/get_started_screen.dart';
import 'package:tripping_pro/screens/guide_screen/guide_screen.dart';
import 'package:tripping_pro/screens/home/home_screen.dart';
import 'package:tripping_pro/screens/my_booking_screen/my_booking_screen.dart';
import 'package:tripping_pro/screens/notification_screen.dart/notification_screen.dart';
import 'package:tripping_pro/screens/profile_screen/profile_screen.dart';
import 'package:tripping_pro/screens/search_flight_screen/detail_flight_screen.dart';
import 'package:tripping_pro/screens/search_flight_screen/search_flight_screen.dart';
import 'package:tripping_pro/screens/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String getStartedScreen = 'get_started_screen';
  static const String loginScreen = 'login_screen';
  static const String registerScreen = 'register_screen';
  static const String homeScreen = 'home_screen';
  static const String bottomNavBar = 'bottom_nav_bar';
  static const String notificationScreen = 'notification_screen';
  static const String chatScreen = 'chat_screen';
  static const String profileScreen = 'profile_screen';
  static const String exploreScreen = 'explore_screen';
  static const String myBookingScreen = 'my_booking_screen';
  static const String guideScreen = 'guide_screen';
  static const String searchFlightScreen = 'search_flight_screen';
  static const String detailFlightScreen = 'detail_flight_screen';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );

      case RouteNames.getStartedScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const GetStartedScreen(),
        );

      case RouteNames.loginScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );

      case RouteNames.registerScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignUpScreen(),
        );

      case RouteNames.homeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );

      case RouteNames.bottomNavBar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const BottomNavBar(),
        );

      case RouteNames.notificationScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const NotificationScreen(),
        );

      case RouteNames.chatScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChatScreen(),
        );

      case RouteNames.profileScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProfileScreen(),
        );

      case RouteNames.exploreScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => ExploreScreen(),
        );

      case RouteNames.myBookingScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MyBookingScreen(),
        );

      case RouteNames.guideScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const GuideScreen(),
        );

      case RouteNames.searchFlightScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SearchFlightScreen(),
        );

      case RouteNames.detailFlightScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DetailFlightScreen(),
        );

      default:
        return MaterialPageRoute(
          builder:
              (BuildContext context) =>
                  const Center(child: Text('No Route Defined')),
        );
    }
  }
}
