import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:free_time_app/chat/chatmainscreen.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/events/reminderalert.dart';
import 'package:free_time_app/friendsui/myfriends.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'messagebox.dart';

bool status = false;

class PostEventScreen extends StatefulWidget {
  const PostEventScreen({Key? key}) : super(key: key);

  @override
  _PostEventScreenState createState() => _PostEventScreenState();
}

class _PostEventScreenState extends State<PostEventScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 201.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/group2.png"), fit: BoxFit.cover)),
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
                  ],
                ),
                Text(
                  "Weekly Concert With William Smith",
                  style: white22fontbold,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/girl1.png",
                      height: 56.h,
                      width: 56.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Elina Stark",
                          style: black16medium,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text("Created this event",
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: blackColor.withOpacity(0.5),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(
                2,
                (index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 55.h,
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: textfieldbordercolor
                                          .withOpacity(0.5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SvgPicture.asset(
                                      eventsprofileicons[index],
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      eventsprofileiconstitles[index],
                                      style: black16medium,
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(eventsprofileiconssubtitles[index],
                                        style: GoogleFonts.roboto(
                                          fontSize: 12.sp,
                                          color: blackColor.withOpacity(0.5),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: btncolor.withOpacity(0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("images/editicon.svg"),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Change",
                                      style: GoogleFonts.roboto(
                                          fontSize: 12.sp, color: whiteColor),
                                    ),
                                  ],
                                ),
                              ),
                              height: 30.h,
                              width: 100.w,
                            ),
                          )
                        ],
                      ),
                    )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: textfieldbordercolor.withOpacity(0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            "images/groupicon.svg",
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 55.h,
                            width: 160,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                    left: 50,
                                    height: 36.h,
                                    width: 36.w,
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/img3.png"),
                                    )),
                                Positioned(
                                    left: 20,
                                    height: 36.h,
                                    width: 36.w,
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/img1.png"),
                                    )),
                                Positioned(
                                    height: 36.h,
                                    width: 36.w,
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/img2.png"),
                                    )),
                                Positioned(
                                    left: 75,
                                    height: 36.h,
                                    width: 36.w,
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/img2.png"),
                                    )),
                                Positioned(
                                    left: 100,
                                    height: 36.h,
                                    width: 36.w,
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/img1.png"),
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Only Invited users can Join",
                                      style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: blackColor.withOpacity(0.5),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const MyFriendsScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: btncolor.withOpacity(0.5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("images/addperson.svg"),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Invite",
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                    height: 30.h,
                    width: 100.w,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 1,
                  color: borderColor,
                ),
              )),
              Text(
                "Event Description",
                style: black12medium,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 1,
                  color: borderColor,
                ),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              eventdescription,
              style: black12,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: CustomBtn(
              height: 45.h,
              onpress: () {},
              txt: 'Post Now',
              width: 308.w,
            ),
          ),
        ],
      )),
    );
  }
}
