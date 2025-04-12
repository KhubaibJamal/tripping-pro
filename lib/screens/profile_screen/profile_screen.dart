import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_text_form_field.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header section
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: context.screenHeight * 0.3,
                  color: CustomColors.primary,
                  child: Column(
                    children: [
                      SizedBox(height: context.screenHeight * 0.06),

                      // app bar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Color(0xFFF3FFFB),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                height: 1.25,
                                letterSpacing: 0.0,
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: SvgPicture.asset(MediaConstants.arrowLeft),
                            ),

                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // blow container
                Positioned(
                  bottom: -50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/06ff/e8b0/23a2a110911bed68e65378ee240f900c?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=tkZqIjYeoqlGFodc5OgMIFtKjeGMfP8WoPrph~BfcdVuSyBmBJ2wb0HjMTv-L4axbCGeFIu9yMHVoxtGeoszmnrxMGM7CevMi-Zxh2-2vvnv9wFGwAlLBLBISHW1BGGb68~zqShQ4VvRfF27Df0To4PihhCfH~kkk5w9JpRxW-wGS7IBlsi~8D-c7-bAOJftVml6SlbQc~dQfs5PWnk~Nyu9~Tptan7smKOKomLGuDkHffksRpKEwuIi08qj3tEwMJLcBJVLaLt5HVW1MZvvEJeLTP8pFtmkN0pmiC-TqCLOKZE4az3KGlI7v2Umud9ONGYcNm9-Y~mg7wJAeKB3fw__',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: SvgPicture.asset(MediaConstants.camera),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50.rh(context)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(
                    context,
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    controller: TextEditingController(),
                    isPasswordField: false,
                  ),
                  SizedBox(height: 20.rh(context)),
                  _buildTextField(
                    context,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    controller: TextEditingController(),
                    isPasswordField: false,
                  ),
                  SizedBox(height: 20.rh(context)),
                  _buildTextField(
                    context,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    controller: TextEditingController(),
                    isPasswordField: true,
                  ),

                  // also add three more field: Date of birth, phone number and country
                  SizedBox(height: 20.rh(context)),
                  _buildTextField(
                    context,
                    hintText: 'Enter your date of birth',
                    labelText: 'Date of Birth',
                    controller: TextEditingController(),
                    isPasswordField: false,
                  ),
                  SizedBox(height: 20.rh(context)),
                  _buildTextField(
                    context,
                    hintText: 'Enter your phone number',
                    labelText: 'Phone Number',
                    controller: TextEditingController(),
                    isPasswordField: false,
                  ),
                  SizedBox(height: 20.rh(context)),
                  _buildTextField(
                    context,
                    hintText: 'Enter your country',
                    labelText: 'Country',
                    controller: TextEditingController(),
                    isPasswordField: false,
                  ),
                  SizedBox(height: 20.rh(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    BuildContext context, {
    required String hintText,
    required String labelText,
    required TextEditingController controller,
    required bool isPasswordField,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: CustomColors.black,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            height: 0.88,
            letterSpacing: 0.0,
          ),
        ),
        SizedBox(height: 10.rh(context)),
        CustomTextFormField(
          hintText: hintText,
          controller: controller,
          isPasswordField: isPasswordField,
          hasFullBorder: true,
        ),
      ],
    );
  }
}
