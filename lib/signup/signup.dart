import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/emailverification/emailverification.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:free_time_app/widgets/customtextfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int _groupValue = -1;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: whiteColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: -30,
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "images/spot3.png",
                    height: 72.h,
                  )),
            ),
            Positioned(
              bottom: 60,
              left: 20,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "images/spot3.png",
                    height: 98.h,
                  )),
            ),
            Positioned(
              bottom: 60,
              right: 20,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "images/spot2.png",
                    height: 98.h,
                  )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              // color: Colors.black,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BackArrow(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                            child: Column(
                          children: [
                            SvgPicture.asset(
                              "images/logo.svg",
                              height: 105.h,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "FREETIME",
                              style: GoogleFonts.roboto(
                                  color: blackColor,
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 0.6),
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(11),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Center(
                                  child: Text(
                                    "Continue to Sign Up!",
                                    style: black16medium,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                CustomTextField(
                                  containericon: 'images/user.svg',
                                  hinttext: '  Full Name',
                                ),
                                CustomTextField(
                                  containericon: 'images/emailicon.svg',
                                  hinttext: '  Email',
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextField(
                                      containericon: 'images/user.svg',
                                      hinttext: '  elinstark7',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Text(
                                        "People will easily finds you by your username",
                                        style: grey12Style,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: textfieldbordercolor),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              Radio(
                                                value: 0,
                                                groupValue: _groupValue,
                                                onChanged: (newValue) =>
                                                    setState(() => _groupValue =
                                                        newValue.hashCode),
                                                activeColor:
                                                    textfieldbordercolor,
                                              ),
                                              Text(
                                                "Male",
                                                style: hinttextStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: textfieldbordercolor),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              Radio(
                                                value: 1,
                                                groupValue: _groupValue,
                                                onChanged: (newValue) =>
                                                    setState(() => _groupValue =
                                                        newValue.hashCode),
                                                activeColor:
                                                    textfieldbordercolor,
                                              ),
                                              Text(
                                                "Female",
                                                style: hinttextStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                CustomTextField(
                                  containericon: 'images/passwordicon.svg',
                                  hinttext: '  Password',
                                ),
                                CustomTextField(
                                  containericon: 'images/passwordicon.svg',
                                  hinttext: '  Confirm Password',
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Center(
                                  child: CustomIconButton(
                                    height: 45.h,
                                    onpress: () {
                                      Get.to(() => PinCodeVerificationScreen());
                                    },
                                    txt: 'Continue',
                                    width: 308.w,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: RichText(
                                    text: TextSpan(
                                        text: "Already have account?",
                                        style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          color: blackColor,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: " SIGN IN",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16.sp,
                                              color: textfieldbordercolor,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 90.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
