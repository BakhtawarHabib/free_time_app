import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/chat/chatmainscreen.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
            2,
            (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => ChatPageView());
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFF7F2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              pasteventimg[index],
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
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "images/clock.svg",
                                                    height: 15.h,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text("9:30PM",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 14.sp,
                                                          color: blackColor
                                                              .withOpacity(
                                                            0.5,
                                                          ))),
                                                ],
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
                                          onTap: () {},
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                SvgPicture.asset(
                                                  "images/location.svg",
                                                  color: blackColor
                                                      .withOpacity(0.7),
                                                  height: 15.h,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    pasteventlocation[index],
                                                    style: black14,
                                                  ),
                                                )
                                              ]),
                                        ),
                                      ),
                                      Expanded(
                                          child: InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/groupicon.svg",
                                                  color: blackColor
                                                      .withOpacity(0.5),
                                                ),
                                                Text(
                                                  "members",
                                                  style: black10,
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 35.h,
                                                width: 110.w,
                                                child: Stack(
                                                  // fit: StackFit.loose,
                                                  children: <Widget>[
                                                    Positioned(
                                                        right: 40,
                                                        height: 26.h,
                                                        width: 26.w,
                                                        child:
                                                            const CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "images/img3.png"),
                                                        )),
                                                    Positioned(
                                                        right: 25,
                                                        height: 26.h,
                                                        width: 26.w,
                                                        child:
                                                            const CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "images/img1.png"),
                                                        )),
                                                    Positioned(
                                                        right: 10,
                                                        height: 26.h,
                                                        width: 26.w,
                                                        child:
                                                            const CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "images/img2.png"),
                                                        )),
                                                    Positioned(
                                                        left: 35,
                                                        height: 26.h,
                                                        width: 26.w,
                                                        child:
                                                            const CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "images/img2.png"),
                                                        )),
                                                    Positioned(
                                                        left: 50,
                                                        height: 26.h,
                                                        width: 26.w,
                                                        child:
                                                            const CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "images/img1.png"),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ))
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
