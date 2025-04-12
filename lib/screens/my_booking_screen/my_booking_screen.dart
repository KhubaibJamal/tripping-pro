import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/my_booking_screen/widget/ticket_card.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'My Booking',
            style: TextStyle(
              color: CustomColors.primaryTextColor,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36,
              height: 1.0,
              letterSpacing: 0.0,
            ),
          ),
          actions: [
            SvgPicture.asset(MediaConstants.notification),
            SizedBox(width: 15.rw(context)),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.rh(context)),
              TicketCard(),
              SizedBox(height: 20.rh(context)),
              TicketCard(),
            ],
          ),
        ),
      ),
    );
  }
}

