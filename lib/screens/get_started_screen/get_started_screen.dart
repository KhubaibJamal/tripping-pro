import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),

            child: Column(
              spacing: 10.rh(context),
              children: [
                SizedBox(height: context.screenHeight * 0.1),
                SvgPicture.asset(
                  // MediaConstants.getStartedLogo,
                  "assets/svg/get_started_logo.svg",
                  height: 300,
                  width: 300,
                  fit: BoxFit.contain,
                ),

                Text(
                  "Get Started",
                  style: TextStyle(
                    color: CustomColors.primaryTextColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),
                Text(
                  "\"Today\" encourages immediate action, which matches the \"Get Started\" heading and the \"Create My Account\" button.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.primaryTextSubtitleColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.5,
                    letterSpacing: 0.5,
                  ),
                ),

                // buttons
                SizedBox(height: 20.rh(context)),
                CustomButton(
                  onPressed: () {},
                  buttonTitle: "Create My Account",
                ),
                SizedBox(height: 20.rh(context)),
                CustomButton(
                  textColor: CustomColors.primary,
                  buttonColor: CustomColors.white,
                  onPressed: () {},
                  buttonTitle: "Sign in",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
