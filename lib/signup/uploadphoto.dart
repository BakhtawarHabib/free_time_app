import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/signup/addfreetime/addfreetime.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mycalender/mycalender.dart';

class UploadPhotoScreen extends StatefulWidget {
  @override
  _UploadPhotoScreenState createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: scaffoldKey,
          body: Container(
            padding: const EdgeInsets.only(),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 17, top: 20),
                  decoration: const BoxDecoration(
                      color: btncolor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60))),
                  height: 361.h,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      // width: MediaQuery.of(context).size.width - 70,
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        "Welcome Dear User!",
                        style: white19medium,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "You're all set",
                        style: white18medium,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Let's Upload your profile photo",
                        style: white16regular,
                      )
                    ],
                  )),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 240,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/upload.png",
                            height: 173.h,
                            width: 173.w,
                          ),
                          Text(
                            "Upload Photo",
                            style: GoogleFonts.roboto(
                                color: blackColor.withOpacity(0.5),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 0.6),
                          ),
                          Container(
                            height: 120.h,
                          ),
                          CustomBtn(
                            height: 45.h,
                            onpress: () {
                              Get.to(() => const MyCalenderScreen());
                            },
                            txt: 'SAVE',
                            width: 308.w,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "SKIP",
                            style: GoogleFonts.roboto(
                                color: blackColor.withOpacity(0.5),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 0.6),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
