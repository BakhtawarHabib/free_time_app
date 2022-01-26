import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/signup/addfreetime/addfreetime.dart';
import 'package:free_time_app/widgets/circularavatar.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSetting extends StatefulWidget {
  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
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
                  padding: const EdgeInsets.all(20),
                  height: 201.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/group2.png"),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: whiteColor,
                                  size: 18,
                                ),
                              ),
                              Text(
                                "Back",
                                style: white16medium,
                              )
                            ],
                          ),
                          InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "Edit Cover",
                                    style: white12med,
                                  ),
                                  SizedBox(width: 5.w),
                                  const Icon(
                                    Icons.edit,
                                    color: whiteColor,
                                    size: 16,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 120,
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
                          const CircularAvatar(),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Elina Stark", style: black22medium),
                          Text("elinastark@freetime.com",
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: blackColor.withOpacity(0.5),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            child: Card(
                              color: const Color(0xffFFF7F2),
                              child: Column(
                                children: List.generate(
                                    myprofilenames.length,
                                    (index) => InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        myprofilenavigation[
                                                            index]));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 40.h,
                                                      width: 40.w,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color: whiteColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.2),
                                                            spreadRadius: 3,
                                                            blurRadius: 7,
                                                            offset: const Offset(
                                                                0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: SvgPicture.asset(
                                                          myprofileicons[
                                                              index]),
                                                    ),
                                                    SizedBox(
                                                      width: 20.w,
                                                    ),
                                                    Text(
                                                      myprofilenames[index],
                                                      style:
                                                          black16textStylefont,
                                                    ),
                                                  ],
                                                ),
                                                const Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: btncolor,
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: textfieldbordercolor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("images/logout.svg"),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(
                                      "LOG OUT",
                                      style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: whiteColor),
                                    ),
                                  ],
                                ),
                              ),
                              height: 45.h,
                              width: 182.w,
                            ),
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
