import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/screens/widgets/custom_text_form_field.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: CustomColors.primaryScreenColor,

          leading: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                MediaConstants.arrowLeft,
                colorFilter: ColorFilter.mode(
                  CustomColors.black,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.screenHeight * 0.1),
                Text(
                  "Login",
                  style: TextStyle(
                    color: CustomColors.primaryTextColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),

                SizedBox(height: 30.rh(context)),

                CustomTextFormField(
                  hintText: "username",
                  controller: _usernameController,
                ),
                SizedBox(height: 30.rh(context)),

                CustomTextFormField(
                  hintText: "password",
                  controller: _passwordController,
                  isPasswordField: true,
                ),
                SizedBox(height: 30.rh(context)),

                CustomButton(onPressed: () {}, buttonTitle: "Login"),

                SizedBox(height: 30.rh(context)),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Did you forgot your password?",
                    style: TextStyle(
                      color: CustomColors.bodyTextColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: context.font.large.rf(context),
                      height: 1.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: 10.rh(context)),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Tap here for reset",
                    style: TextStyle(
                      color: Color(0xFF4C24B1),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.0,
                      letterSpacing: 0.0,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationThickness: 0.0,
                    ),
                  ),
                ),

                SizedBox(height: 30.rh(context)),
                Divider(color: CustomColors.grey),
                SizedBox(height: 20.rh(context)),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or sign in with",
                    style: TextStyle(
                      color: CustomColors.bodyTextColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),

                SizedBox(height: 20.rh(context)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialButton(
                      context,
                      onTap: () {},
                      svgIcon: MediaConstants.googleIcon,
                    ),
                    socialButton(
                      context,
                      onTap: () {},
                      svgIcon: MediaConstants.facebookIcon,
                    ),
                    socialButton(
                      context,
                      onTap: () {},
                      svgIcon: MediaConstants.twitterIcon,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector socialButton(
    BuildContext context, {
    required VoidCallback onTap,
    required String svgIcon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.rh(context),
        width: 50.rh(context),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: CustomColors.grey),
        ),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}
