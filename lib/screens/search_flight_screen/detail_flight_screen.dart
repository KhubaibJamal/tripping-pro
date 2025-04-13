import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class DetailFlightScreen extends StatelessWidget {
  const DetailFlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var availableHeight = height - (height * 0.2 + height * 0.08);
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      MediaConstants.arrowLeft,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: CustomColors.primary.withValues(
                                alpha: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              "Monday, 12th July",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          SizedBox(width: 20.rh(context)),
                        ],
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                              SvgPicture.asset(
                                MediaConstants.doubleArrowHorizontal,
                              ),
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
            Column(
              children: [
                SizedBox(height: 20.rh(context)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Passenger",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          height: 1.0,
                          letterSpacing: 0,
                          color: const Color(0xFF414141),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Class",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          height: 1.0,
                          letterSpacing: 0,
                          color: const Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.rh(context)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "2 Child 3 Adults",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.0,
                          letterSpacing: 0,
                          color: const Color(0xFF414141),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Economy",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.0,
                          letterSpacing: 0,
                          color: const Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),

                // FlightDetailBox(),
                SizedBox(height: 20.rh(context)),
                Container(
                  width: context.screenWidth,
                  height: availableHeight,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20.0,
                  ),
                  color: CustomColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "6 Flight Found",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 22 / 14,
                              letterSpacing: 0,
                              color: const Color(0xFF979797),
                            ),
                          ),
                          Spacer(),

                          Text(
                            "Flight",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 22 / 14,
                              letterSpacing: 0,
                            ),
                          ),
                          SvgPicture.asset(MediaConstants.doubleArrowVertical),
                        ],
                      ),
                      SizedBox(height: 20.rh(context)),
                      FlightDetailBox(),
                      SizedBox(height: 20.rh(context)),
                      Divider(color: Colors.grey),
                      FlightDetailBox(),
                      SizedBox(height: 20.rh(context)),
                      Divider(color: Colors.grey),
                      FlightDetailBox(),
                      SizedBox(height: 20.rh(context)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FlightDetailBox extends StatelessWidget {
  const FlightDetailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100.rh(context),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KHI",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    height: 22 / 28,
                    letterSpacing: 0,
                  ),
                ),

                Text(
                  "12:33",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 22 / 12,
                    letterSpacing: 0,
                    color: const Color(0xFF6B6B6B),
                  ),
                ),
                Spacer(),
                Text(
                  "AIRBLUE",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 22 / 16,
                    letterSpacing: 0,
                    color: CustomColors.bodyTextColor,
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DXB",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    height: 22 / 28,
                    letterSpacing: 0,
                  ),
                ),

                Text(
                  "15:33",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 22 / 12,
                    letterSpacing: 0,
                    color: const Color(0xFF6B6B6B),
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Terminal',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      height: 22 / 12,
                      letterSpacing: 0,
                      color: Color(0xFF9F9F9F),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\t\tA',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          height: 22 / 12,
                          letterSpacing: 0,
                          color: const Color(0xFF595959),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Gate',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      height: 22 / 12,
                      letterSpacing: 0,
                      color: Color(0xFF9F9F9F),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\t\t226',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          height: 22 / 12,
                          letterSpacing: 0,
                          color: const Color(0xFF595959),
                        ),
                      ),
                    ],
                  ),
                ),

                Spacer(),
                Text(
                  "\$214.06",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 22 / 16,
                    letterSpacing: 0,
                    color: CustomColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
