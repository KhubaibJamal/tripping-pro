import 'package:flutter/material.dart';
import 'package:tripping_pro/screens/auth_flow/login_screen.dart';
import 'package:tripping_pro/screens/auth_flow/sign_up_screen.dart';
import 'package:tripping_pro/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:tripping_pro/screens/get_started_screen/get_started_screen.dart';
import 'package:tripping_pro/screens/home/home_screen.dart';
import 'package:tripping_pro/screens/notification_screen.dart/notification_screen.dart';
import 'package:tripping_pro/screens/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String getStartedScreen = 'get_started_screen';
  static const String loginScreen = 'login_screen';
  static const String registerScreen = 'register_screen';
  static const String homeScreen = 'home_screen';
  static const String bottomNavBar = 'bottom_nav_bar';
  static const String notificationScreen = 'notification_screen';
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

      default:
        return MaterialPageRoute(
          builder:
              (BuildContext context) =>
                  const Center(child: Text('No Route Defined')),
        );
    }
  }
}
