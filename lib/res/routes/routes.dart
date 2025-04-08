import 'package:flutter/material.dart';
import 'package:tripping_pro/screens/auth_flow/login_screen.dart';
import 'package:tripping_pro/screens/auth_flow/sign_up_screen.dart';
import 'package:tripping_pro/screens/get_started_screen/get_started_screen.dart';
import 'package:tripping_pro/screens/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String getStartedScreen = 'get_started_screen';
  static const String loginScreen = 'login_screen';
  static const String registerScreen = 'register_screen';
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

      default:
        return MaterialPageRoute(
          builder:
              (BuildContext context) =>
                  const Center(child: Text('No Route Defined')),
        );
    }
  }
}
