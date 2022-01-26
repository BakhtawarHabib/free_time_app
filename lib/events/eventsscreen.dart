import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/events/createevent.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'eventprofile.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "EVENTS",
          style: black16textStylefont,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(() => const CreateEventScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47.h,
                    width: 324.w,
                    decoration: BoxDecoration(
                      color: whiteColor,
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
                        const Icon(
                          Icons.add,
                          color: btncolor,
                        ),
                        Text("ADD NEW EVENT",
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                color: btncolor,
                                fontWeight: FontWeight.w500)),
                        const Text("")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                child: Text(
                  "Events You haven't joined yet!",
                  style: black12medium,
                ),
              ),
              Column(
                  children: List.generate(
                      events.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: InkWell(
                              onTap: () {
                                // Get.to(() => Studioinfo());
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 140.h,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFF7F2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              4), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Image.asset(
                                                  events[index],
                                                  height: 56.h,
                                                  width: 56.w,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      " Sunday's Night",
                                                      style: black16medium,
                                                    ),
                                                    Text(
                                                      "Elina Stark",
                                                      style: black13fontreg,
                                                    ),
                                                    Text("Created this event",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontSize: 11.sp,
                                                                color: blackColor
                                                                    .withOpacity(
                                                                  0.5,
                                                                )))
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "images/location.svg",
                                                        height: 10.h,
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Text("Date",
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: blackColor
                                                                      .withOpacity(
                                                                    0.5,
                                                                  ))),
                                                    ],
                                                  ),
                                                  Text(
                                                    "27 Nov 2021",
                                                    style: black14,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "images/calender.svg",
                                                        height: 10.h,
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Text("Venue",
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: blackColor
                                                                      .withOpacity(
                                                                    0.5,
                                                                  ))),
                                                    ],
                                                  ),
                                                  Text(
                                                    "123ST, London",
                                                    style: black14,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                Get.to(() =>
                                                    const EventProfileScreen());
                                              },
                                              child: Container(
                                                color: whiteColor,
                                                width: 100,
                                                height: 50,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SvgPicture.asset(
                                                          "images/accept.svg"),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Text(
                                                        "Accept",
                                                        style: black14,
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                color: const Color(0xffF9F9F9),
                                                width: 100,
                                                height: 50,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SvgPicture.asset(
                                                          "images/deny.svg"),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Text(
                                                        "Deny",
                                                        style:
                                                            GoogleFonts.roboto(
                                                          fontSize: 14.sp,
                                                          color: const Color(
                                                              0xffFF7777),
                                                        ),
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ))),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 73.h,
                    // width: 334.w,
                    decoration: BoxDecoration(
                      color: whiteColor,
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
                        SvgPicture.asset("images/archive.svg"),
                        Text("ARCHIVED EVENTS",
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                color: textfieldbordercolor,
                                fontWeight: FontWeight.w500)),
                        const Text("")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
