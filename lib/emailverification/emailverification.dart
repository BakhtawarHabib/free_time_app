import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/emailverification/emailverified.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pin_code_text_field/pin_code_text_field.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: whiteColor),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: BackArrow(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Text(
                      "Email Verification ",
                      style: GoogleFonts.roboto(
                          fontSize: 22, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      "images/animate.svg",
                      height: 124.h,
                      width: 167.69.w,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text(
                      "FreeTime has sent you an email with\nverification code kindly enter\ncode to verify.",
                      style: black14,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Form(
                    key: formKey,
                    child: Center(
                      child: PinCodeTextField(
                        pinBoxOuterPadding: const EdgeInsets.all(10),
                        pinBoxHeight: 57.h,
                        hasTextBorderColor: whiteColor,
                        pinBoxWidth: 57.w,
                        pinBoxRadius: 6,
                        pinBoxDecoration:
                            ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                        defaultBorderColor: blackColor.withOpacity(0.1),
                        pinBoxColor: blackColor.withOpacity(0.1),
                        highlightPinBoxColor: blackColor.withOpacity(0.3),
                        pinTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: whiteColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      "RESEND CODE",
                      style: GoogleFonts.roboto(
                          color: const Color(0xffFF2E2E),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: CustomBtn(
                      txt: "VERIFY & CONTINUE",
                      onpress: () {
                        Get.to(() => EmailVerifiedScreen());
                        // formKey.currentState!.validate();
                        // // conditions for validating
                        // if (currentText.length != 4 || currentText != "1234") {
                        //   setState(() => hasError = true);
                        // } else {
                        //   setState(
                        //     () {
                        //       hasError = false;
                        //       snackBar("OTP Verified!!");
                        //
                        //     },
                        //   );
                        // }
                      },
                      height: 45.h,
                      width: 308.w,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ErrorAnimationType {}
