import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/profile/profilesettings/pasteventprofile.dart';
import 'package:free_time_app/profile/profilesettings/pasteventprofile.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PastEventHistory extends StatefulWidget {
  const PastEventHistory({Key? key}) : super(key: key);

  @override
  _PastEventHistoryState createState() => _PastEventHistoryState();
}

class _PastEventHistoryState extends State<PastEventHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "Events",
          style: black16medium,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.notifications,
                  color: blackColor,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                  5,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => PastEventProfile());
                          },
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "02",
                                        style: black14medium,
                                      ),
                                      Text(
                                        "Nov",
                                        style: grey12Style,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 1.w,
                                        color: blackColor.withOpacity(0.5),
                                      ),
                                      Icon(
                                        Icons.brightness_1,
                                        color: textfieldbordercolor,
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 1.w,
                                        color: blackColor.withOpacity(0.5),
                                      )
                                    ],
                                  ),
                                ],
                              ),
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
                                            offset: const Offset(0,
                                                4), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                                        CrossAxisAlignment
                                                            .start,
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
                                                          "images/clock.svg",
                                                          height: 15.h,
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text("9:30PM",
                                                            style: GoogleFonts
                                                                .roboto(
                                                                    fontSize:
                                                                        14.sp,
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
                                                          pasteventlocation[
                                                              index],
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
                                                              left: 25,
                                                              height: 26.h,
                                                              width: 26.w,
                                                              child:
                                                                  const CircleAvatar(
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        "images/img2.png"),
                                                              )),
                                                          Positioned(
                                                              left: 10,
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
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Alignment.center,
              width: 90.w,
              height: 30.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: btncolor),
              child: Text(
                "Show More",
                style: GoogleFonts.roboto(color: whiteColor, fontSize: 13.sp),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
