import 'package:flutter/material.dart';
import 'package:tripping_pro/screens/get_started_screen/get_started_screen.dart';
import 'package:tripping_pro/screens/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String getStartedScreen = 'get_started_screen';
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

      default:
        return MaterialPageRoute(
          builder:
              (BuildContext context) =>
                  const Center(child: Text('No Route Defined')),
        );
    }
  }
}
