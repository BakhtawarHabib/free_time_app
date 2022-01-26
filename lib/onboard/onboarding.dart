import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/signinprocess.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: isActive ? 10.0 : 10,
      width: isActive ? 30.0 : 10,
      decoration: BoxDecoration(
        color: isActive ? whiteColor : greyColor,
        // shape: isActive ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //     fit: BoxFit.cover,
                    //     image: AssetImage("images/board1.png"))
                    ),
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/board1.png"))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                "images/logo.svg",
                                height: 105.h,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "FREETIME",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 0.6),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            children: [
                              Text(
                                "EVENTS COLLECTION",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 0.6),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet,\nconsectetur adipiscing",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: whiteColor,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: _buildPageIndicator(),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              CustomBtn(
                                height: 45.h,
                                onpress: () {
                                  Get.to(() => SignInProcess());
                                },
                                txt: 'GET STARTED',
                                width: 308.w,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.darken),
                              image: const AssetImage("images/board2.png"))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                "images/logo.svg",
                                height: 105.h,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "FREETIME",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 0.6),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            children: [
                              Text(
                                "CELEBRATE",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 0.6),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet,\nconsectetur adipiscing",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: whiteColor,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: _buildPageIndicator(),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              CustomBtn(
                                height: 45.h,
                                onpress: () {
                                  Get.to(() => const SignInProcess());
                                },
                                txt: 'GET STARTED',
                                width: 308.w,
                              )
                            ],
                          ),

                          // GeneralButton(
                          //   onpress: () {
                          //     Get.to(() => SplashScreen());
                          //   },
                          //   centerText: "Next",
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
