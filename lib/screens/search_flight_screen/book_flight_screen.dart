import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_shaper_clipper.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class BookingFlightScreen extends StatelessWidget {
  const BookingFlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      image: AssetImage('assets/images/flight.jpg'),
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
                    ],
                  ),
                ),

                Positioned(
                  bottom: -170,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: ClipPath(
                        clipper: CustomShapeClipper(),
                        child: Container(
                          width: context.screenWidth * 0.8,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
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
                                  Icon(
                                    Icons.flight_takeoff,
                                    color: CustomColors.primary,
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
                              SizedBox(height: 8.rh(context)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "12:33",
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
                                    "15:21",
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

                              SizedBox(height: 20.rh(context)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "FLY JINNAH",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 22 / 16,
                                      letterSpacing: 0,
                                      color: const Color(0xFF595959),
                                    ),
                                  ),
                                  Spacer(),
                                  // make a row widget and generate start icons 4 times
                                  Row(
                                    children: List.generate(
                                      4,
                                      (index) => Icon(
                                        Icons.star,
                                        color: CustomColors.reviewColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 8.rh(context)),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "120k Reviews",
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: const Color(0xFF595959),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.rh(context)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FlightTypeWidget(
                                    title: "Code",
                                    subtitle: "AB-221",
                                  ),
                                  FlightTypeWidget(
                                    title: "Class",
                                    subtitle: "Economy",
                                  ),
                                  FlightTypeWidget(
                                    title: "Terminal",
                                    subtitle: "A",
                                  ),
                                  FlightTypeWidget(
                                    title: "Gate",
                                    subtitle: "221",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.rh(context)),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PersonType(
                                    title: "Child",
                                    numberOfPerson: "2",
                                  ),
                                  SizedBox(width: 20.rh(context)),
                                  PersonType(
                                    title: "Adult",
                                    numberOfPerson: "3",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.rh(context)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // facilities
            SizedBox(height: context.screenHeight * 0.3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Facilities",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      height: 22 / 14,
                      letterSpacing: 0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.rh(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: context.screenWidth * 0.25,
                          child: CustomButton(
                            onPressed: () {},
                            buttonTitle: "Snacks",
                            buttonColor: Color(0xFF6DDA6B),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.rw(context)),
                      Expanded(
                        child: SizedBox(
                          width: context.screenWidth * 0.25,
                          child: CustomButton(
                            onPressed: () {},
                            buttonTitle: "Wifi",
                            buttonColor: Color(0xFF7861D7),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.rw(context)),
                      Expanded(
                        child: SizedBox(
                          width: context.screenWidth * 0.25,
                          child: CustomButton(
                            onPressed: () {},
                            buttonTitle: "Restrom",
                            buttonColor: Color(0xFFE45D32),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.rh(context)),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          height: 22 / 14,
                          letterSpacing: 0,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$ 145,00",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          height: 22 / 24,
                          letterSpacing: 0,
                          color: CustomColors.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.rh(context)),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.myBookingScreen);
                    },
                    buttonTitle: "BOOK FLIGHT",
                  ),
                  SizedBox(height: 10.rh(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonType extends StatelessWidget {
  final String title;
  final String numberOfPerson;

  const PersonType({
    super.key,
    required this.title,
    required this.numberOfPerson,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: CustomColors.primary.withValues(alpha: 0.3),
            shape: BoxShape.circle,
            border: Border.all(color: CustomColors.primary, width: 2),
          ),
          child: Center(
            child: Text(
              numberOfPerson,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: 1.0,
                letterSpacing: -0.24,
                color: CustomColors.primary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.rh(context)),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            height: 22 / 12,
            letterSpacing: 0,
            color: const Color(0xFFA5A5A5),
          ),
        ),
      ],
    );
  }
}

class FlightTypeWidget extends StatelessWidget {
  final String title, subtitle;
  const FlightTypeWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            height: 22 / 12,
            letterSpacing: 0,
            color: const Color(0xFFA5A5A5),
          ),
        ),
        SizedBox(height: 5.rh(context)),
        Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 22 / 14,
            letterSpacing: 0,
            color: const Color(0xFF595959),
          ),
        ),
      ],
    );
  }
}
