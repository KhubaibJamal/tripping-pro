import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripping_pro/provider/auth_provider.dart';
import 'package:tripping_pro/res/constants/constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/utils/service_locator.dart';
import 'package:tripping_pro/utils/utils.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    ServiceLocator.setContext(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: Utils.scaffoldMessengerKey,
          title: Constants.appName,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: Routes.generateRoute,
          themeMode: ThemeMode.light,
          theme: lightTheme,
          // darkTheme: darkTheme,
        ),
      ),
    );
  }
}
