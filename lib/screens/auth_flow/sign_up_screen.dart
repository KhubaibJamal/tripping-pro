import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_check_box.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/screens/widgets/custom_text_form_field.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isChecked = false;
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
          actions: [
            Text(
              "Continue as Guest",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.screenHeight * 0.1),
                Text(
                  "Register",
                  style: TextStyle(
                    color: CustomColors.primaryTextColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    height: 1.0,
                    letterSpacing: 0.0,
                  ),
                ),

                SizedBox(height: 30.rh(context)),

                CustomTextFormField(
                  hintText: "Full Name",
                  controller: _nameController,
                ),
                SizedBox(height: 30.rh(context)),

                CustomTextFormField(
                  hintText: "Phone Number",
                  controller: _phoneNumberController,
                ),
                SizedBox(height: 30.rh(context)),
                CustomTextFormField(
                  hintText: "Email",
                  controller: _emailController,
                ),
                SizedBox(height: 30.rh(context)),

                CustomTextFormField(
                  hintText: "Password",
                  controller: _passwordController,
                  isPasswordField: true,
                ),
                SizedBox(height: 30.rh(context)),

                CustomButton(onPressed: () {}, buttonTitle: "Sign Up"),

                SizedBox(height: 30.rh(context)),
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    SizedBox(width: 8.rw(context)),
                    Text(
                      "Accept terms and condition",
                      style: TextStyle(
                        color: CustomColors.bodyTextColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: context.font.large.rf(context),
                        height: 1.0,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.rh(context)),
                Divider(color: CustomColors.grey),
                SizedBox(height: 20.rh(context)),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: CustomColors.bodyTextColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: context.font.normal.rf(context),
                      height: 1.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: 20.rh(context)),
                CustomButton(
                  textColor: CustomColors.primary,
                  buttonColor: CustomColors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.loginScreen);
                  },
                  buttonTitle: "Sign in",
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
