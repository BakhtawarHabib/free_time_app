import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/login/loginscreen.dart';
import 'package:free_time_app/signup/signup.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:free_time_app/widgets/orwidget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInProcess extends StatefulWidget {
  const SignInProcess({Key? key}) : super(key: key);

  @override
  _SignInProcessState createState() => _SignInProcessState();
}

class _SignInProcessState extends State<SignInProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        // leading: const CrossIcon(),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            right: -30,
            child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "images/spot1.png",
                  height: 72.h,
                )),
          ),
          Positioned(
            bottom: 60,
            left: -30,
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Back!",
                      style: GoogleFonts.roboto(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                          // wordSpacing: 0.2,
                          )),
                  Center(
                      child: Column(
                    children: [
                      SvgPicture.asset(
                        "images/logo.svg",
                        height: 132.h,
                        width: 132.w,
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
                  Center(
                    child: Column(
                      children: [
                        CustomBtn(
                          height: 45.h,
                          onpress: () {
                            Get.to(() => LoginScreen());
                          },
                          txt: 'LOG IN',
                          width: 308.w,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => SignUpScreen());
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: textfieldbordercolor),
                            child: Text(
                              "SIGN UP",
                              style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor),
                            ),
                            height: 45.h,
                            width: 308.w,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        const ORWidget(),
                        SizedBox(
                          height: 15.h,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xff3B5998)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("images/fb.svg"),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "CONTINUE WITH FACEBOOK",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor),
                                ),
                              ],
                            ),
                            height: 45.h,
                            width: 308.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
