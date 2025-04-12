import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/routes/routes.dart';
import 'package:tripping_pro/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:tripping_pro/screens/widgets/custom_button.dart';
import 'package:tripping_pro/screens/widgets/custom_text_form_field.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class GuideScreen extends StatefulWidget {
  const GuideScreen({super.key});

  @override
  State<GuideScreen> createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  String selectedDate = '03.01.2025';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/9e3b/79f7/3090eb98068796b31899afe99a38a21c?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MlXLwbkp5ghgwmD-TpYXzW9OH0iQqpdatkI3bpOogI2Sb-~0qIwrBK46KcM6bbUlBbkFvjLiA9C772JJ2G8w20FDfp~JbUV-Bs-JM0iecLmk1FS4tYU9JcwB50lhfmeyKJqk4arcLmugu4x2cnj9SITrX7ahQvxtW5OCpk7S3QImOm32235p5wE3IGlDEKsWBfeWEaG9WjbVDZZwqW-2a28orbzX-tALM41TFALPFm32PjDKSL1TfPbzHD8Svpoct61o-Jj73OViSuA8b8dqyk7QxSIgsST8n92oDNcnyx5rkdag9CxX83-6W-eSRo33c38tYh7wPk-rg~hAtTgHFA__',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(index: 1),
                      ),
                    );
                  },
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

              const Spacer(),

              // Greeting Text
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome, Asad\nGood Morning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.rh(context)),

              // Form Card
              Container(
                height: context.screenHeight * 0.5,
                // height: availableHeight,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Let's explore the world",
                        style: TextStyle(
                          fontFamily: 'Hind Jalandhar',
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          height: 1.0,
                          letterSpacing: 1,
                          color: Color(0xFF292C2B),
                        ),
                      ),
                      SizedBox(height: 5.rh(context)),
                      Text(
                        'Make your trip as you need with demand',
                        style: TextStyle(
                          color: const Color(0xFF899390),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1.0,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 20.rh(context)),
                      // Place Selection
                      Text(
                        "Place",
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
                              prefix: Icon(Icons.flight_takeoff),
                              controller: TextEditingController(
                                text: "Pakistan",
                              ),
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
                              prefix: Icon(Icons.flight_land),
                              controller: TextEditingController(text: "Dubai"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.rh(context)),
                      Text(
                        "Days",
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

                      // Date Picker
                      CustomTextFormField(
                        controller: TextEditingController(text: selectedDate),
                        prefix: Icon(Icons.calendar_today),
                        hasFullBorder: true,
                        isReadOnly: true,
                        onTextFieldTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                          );
                          if (pickedDate != null) {
                            setState(() {
                              selectedDate =
                                  "${pickedDate.day}.${pickedDate.month}.${pickedDate.year}";
                            });
                          }
                        },
                      ),

                      SizedBox(height: 20.rh(context)),
                      // Persons and Budget
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              hasFullBorder: true,
                              prefix: Icon(Icons.people),
                              controller: TextEditingController(text: "8"),
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
                              prefix: Icon(Icons.attach_money),
                              controller: TextEditingController(text: "Budget"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.rh(context)),
                      // Find Button
                      CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.searchFlightScreen,
                          );
                        },
                        buttonTitle: "Find",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
