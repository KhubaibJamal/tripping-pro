import 'package:flutter/material.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      bgColor:  CustomColors.primary,
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        appBar: AppBar(backgroundColor: CustomColors.primary),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                SizedBox(
                  height: context.screenHeight * 0.5,
                  width: context.screenWidth,
                  child: Image.asset(
                    "assets/images/splash_logo.png",
                    // MediaConstants.splashLogo,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: context.screenHeight * 0.05),
                const Spacer(),
                CustomButton(
                  buttonColor: Color(0xFFF3FFFB),
                  textColor: CustomColors.primary,
                  withIcon: true,
                  frontSvgIcon: MediaConstants.planeIcon,
                  radius: 16,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.getStartedScreen);
                  },
                  buttonTitle: "Explore",
                ),
                SizedBox(height: 50.rh(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
