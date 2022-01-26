import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:free_time_app/chat/chatmainscreen.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/events/reminderalert.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'messagebox.dart';

bool status = false;

class EventProfileScreen extends StatefulWidget {
  const EventProfileScreen({Key? key}) : super(key: key);

  @override
  _EventProfileScreenState createState() => _EventProfileScreenState();
}

class _EventProfileScreenState extends State<EventProfileScreen> {
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
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => ReminderAlert(),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: btncolor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Notify",
                                style: GoogleFonts.roboto(
                                    fontSize: 12.sp, color: whiteColor),
                              ),
                              const Icon(
                                Icons.notifications,
                                color: whiteColor,
                                size: 17,
                              ),
                            ],
                          ),
                        ),
                        height: 30.h,
                        width: 87.w,
                      ),
                    )
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
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
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
                            "Add friend",
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
          Column(
            children: List.generate(
                2,
                (index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                        ],
                      ),
                    )),
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
                "Friends Attending",
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
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      friendsattending.length,
                      (index) => Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  friendsattendingimgs[index],
                                  height: 40.h,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  friendsattending[index],
                                  style: black10,
                                )
                              ],
                            ),
                          )),
                )),
                Expanded(
                    flex: 0,
                    child: Column(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: textfieldbordercolor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "20+",
                            style: white12med,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "Attending",
                          style: black12medium,
                        )
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Event Description",
                  style: black18medium,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  eventdescription,
                  style: black12,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/muteicon.png",
                    height: 60.h,
                  ),
                  Text(
                    "Mute Group Chat",
                    style: black14medium,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlutterSwitch(
                  width: 35.0,
                  height: 18.0,
                  valueFontSize: 12.0,
                  toggleSize: 15.0,
                  toggleColor: whiteColor,
                  padding: 1,
                  value: status,
                  activeColor: btncolor,
                  inactiveColor: switchactiveColor,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => MessageAlertBox(),
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), color: btncolor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("images/arrowup.svg"),
                      Text(
                        "Messages",
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ],
                  ),
                ),
                height: 45.h,
                width: 308.w,
              ),
            ),
          )
        ],
      )),
    );
  }
}
