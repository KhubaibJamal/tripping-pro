import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_radio_button.dart';
import 'package:tripping_pro/screens/widgets/custom_text_form_field.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class SearchFlightScreen extends StatefulWidget {
  const SearchFlightScreen({super.key});

  @override
  State<SearchFlightScreen> createState() => _SearchFlightScreenState();
}

class _SearchFlightScreenState extends State<SearchFlightScreen> {
  String? _selectedClass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 264.rh(context),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(42),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1679830513873-5f9163fcc04a?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 50.rh(context)),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(MediaConstants.arrowLeft),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 70,
                left: 70,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: CustomColors.primary.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "Destinations",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 100.rh(context),
                    width: context.screenWidth * 0.7,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.5),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "From",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF979797),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "To",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF979797),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.rh(context)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Karachi",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(MediaConstants.doubleArrowHorizontal),
                            Spacer(),
                            Text(
                              "Dubai",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.rh(context)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Pakistan",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "UAE",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          //
          SizedBox(height: 70.rh(context)),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: context.screenWidth * 0.5,
                        child: CustomButton(
                          onPressed: () {},
                          buttonTitle: "One Way",
                        ),
                      ),
                    ),
                    SizedBox(width: 10.rw(context)),
                    Expanded(
                      child: SizedBox(
                        width: context.screenWidth * 0.5,
                        child: CustomButton(
                          buttonColor: Color(0xFFF0F0F0),
                          textColor: Color(0xFF595959),
                          onPressed: () {},
                          buttonTitle: "One Way",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.rh(context)),
                Text(
                  "Departure",
                  style: TextStyle(
                    fontFamily: 'Hind Jalandhar',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 1.0,
                    letterSpacing: 1,
                    color: const Color(0xFF292C2B),
                  ),
                ),

                SizedBox(height: 10.rh(context)),
                CustomTextFormField(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  hasFullBorder: true,
                  controller: TextEditingController(text: "Monday, 20 July"),
                ),

                SizedBox(height: 20.rh(context)),
                Text(
                  "How Many Persons?",
                  style: TextStyle(
                    fontFamily: 'Hind Jalandhar',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 1.0,
                    letterSpacing: 1,
                    color: const Color(0xFF292C2B),
                  ),
                ),
                SizedBox(height: 10.rh(context)),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        hasFullBorder: true,
                        controller: TextEditingController(text: "2 Child"),
                      ),
                    ),
                    SizedBox(width: 10.rw(context)),
                    Expanded(
                      child: CustomTextFormField(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        hasFullBorder: true,
                        controller: TextEditingController(text: "4 Adult"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.rh(context)),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomRadioButton(
                      label: 'Economy',
                      isSelected: _selectedClass == 'Economy',
                      onTap: () {
                        setState(() {
                          _selectedClass = 'Economy';
                        });
                      },
                    ),
                    CustomRadioButton(
                      label: 'Business',
                      isSelected: _selectedClass == 'Business',
                      onTap: () {
                        setState(() {
                          _selectedClass = 'Business';
                        });
                      },
                    ),
                    CustomRadioButton(
                      label: 'First Class',
                      isSelected: _selectedClass == 'First Class',
                      onTap: () {
                        setState(() {
                          _selectedClass = 'First Class';
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20.rh(context)),

                CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.detailFlightScreen);
                  },
                  buttonTitle: "Search Flights",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
