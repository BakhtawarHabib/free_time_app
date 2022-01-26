import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/friendsui/searchfriends.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'invitefriendsscreen.dart';

class MyFriendsScreen extends StatefulWidget {
  const MyFriendsScreen({Key? key}) : super(key: key);

  @override
  _MyFriendsScreenState createState() => _MyFriendsScreenState();
}

class _MyFriendsScreenState extends State<MyFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "My Friends ",
          style: black16textStylefont,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => SearchFriendsScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("images/searchicon.svg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recent Hangouts",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Container(
                height: 30,
              ),
              Text(
                "Friends Free Time",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                // height: 526.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Friends",
                            style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "FreeTime",
                            style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 1,
                            color: borderColor,
                          )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Friends With Same FT",
                            style: black12medium,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                              child: Container(
                            height: 1,
                            color: borderColor,
                          )),
                        ],
                      ),
                      Column(
                        children: List.generate(
                            3,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 65.h,
                                      child: Card(
                                          color: const Color(0xffFFF7F2),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 46.h,
                                                      width: 46.w,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                sameftimgs[
                                                                    index])),
                                                        color: whiteColor,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 2.w,
                                                            color:
                                                                textfieldbordercolor),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      sameftfriends[index],
                                                      style: black13fontreg,
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: btncolor
                                                            .withOpacity(0.5)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "09:30PM",
                                                            style: GoogleFonts
                                                                .roboto(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color:
                                                                        whiteColor),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    height: 30.h,
                                                    width: 70.w,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                )),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 1,
                            color: borderColor,
                          )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Other Friends Free times",
                            style: black12medium,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                              child: Container(
                            height: 1,
                            color: borderColor,
                          )),
                        ],
                      ),
                      Column(
                        children: List.generate(
                            3,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 65.h,
                                      child: Card(
                                          color: const Color(0xffFFF7F2),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 46.h,
                                                      width: 46.w,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                sameftimgs[
                                                                    index])),
                                                        color: whiteColor,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 2.w,
                                                            color:
                                                                textfieldbordercolor),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      oldfriends[index],
                                                      style: black13fontreg,
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: btncolor
                                                            .withOpacity(0.5)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "27 Nov",
                                                            style: GoogleFonts
                                                                .roboto(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color:
                                                                        whiteColor),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    height: 30.h,
                                                    width: 70.w,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 90.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: btncolor),
                        child: Text(
                          "Show More",
                          style: GoogleFonts.roboto(
                              color: whiteColor, fontSize: 13.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const InviteFriendsScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 73.h,
                  // width: 334.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("images/sendoutline.svg"),
                      Text("Invites Friends",
                          style: GoogleFonts.roboto(
                              fontSize: 20.sp,
                              color: textfieldbordercolor,
                              fontWeight: FontWeight.w500)),
                      const Text("")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
