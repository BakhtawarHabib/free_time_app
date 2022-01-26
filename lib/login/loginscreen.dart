import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:free_time_app/widgets/customtextfield.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        // leading: const CrossIcon(),
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
                    "images/spot1.png",
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
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Continue to Log in!",
                        style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                            // wordSpacing: 0.2,
                            )),
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
                      height: 343.h,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Center(
                              child: Text(
                                "Log In",
                                style: black16medium,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  containericon: 'images/emailicon.svg',
                                  hinttext: '  Email',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text("Forgot my Password?",
                                      style: GoogleFonts.roboto(
                                        color: const Color(0xffFF3636),
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: textfieldbordercolor),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                width: 308.w,
                                child: TextFormField(
                                  obscureText: !_passwordVisible,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  cursorColor: const Color(0xFF075E54),
                                  decoration: InputDecoration(
                                    hintStyle: hinttextStyle,
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: whiteColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 3,
                                                blurRadius: 7,
                                                offset: const Offset(0,
                                                    4), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          height: 27.h,
                                          width: 27.w,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset(
                                              "images/passwordicon.svg",
                                            ),
                                          )),
                                    ),
                                    focusColor: textfieldbordercolor,
                                    fillColor: whiteColor,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 60, vertical: 16),
                                    hintText: "Password",
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                            color: textfieldbordercolor)),
                                    border: InputBorder.none,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                          child: !_passwordVisible
                                              ? Icon(
                                                  Icons.visibility,
                                                  color: blackColor
                                                      .withOpacity(0.5),
                                                )
                                              : Icon(
                                                  Icons.visibility_off,
                                                  color: blackColor
                                                      .withOpacity(0.5),
                                                )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Center(
                              child: CustomBtn(
                                height: 45.h,
                                onpress: () {},
                                txt: 'LOG IN',
                                width: 308.w,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: RichText(
                                text: TextSpan(
                                    text: "Don't have an account yet? ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      color: blackColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "SIGN UP",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
