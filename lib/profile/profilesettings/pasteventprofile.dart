import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/chat/chatmainscreen.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/profile/profilesettings/eventtab.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class PastEventProfile extends StatefulWidget {
  @override
  _PastEventProfileState createState() => _PastEventProfileState();
}

class _PastEventProfileState extends State<PastEventProfile>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  int currentPos = 0;
  final controller = CarouselController();
  List<int> list = [1, 2, 3, 4, 5];

  CarouselController? carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.only(),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: whiteColor),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
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
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
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
                                child: const CircleAvatar(
                                  radius: 60.0,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 17.0,
                                        child: Icon(
                                          Icons.edit,
                                          size: 17.0,
                                          color: btncolor,
                                        ),
                                      ),
                                    ),
                                    radius: 55.0,
                                    backgroundImage:
                                        AssetImage('images/dp2.png'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text("Scarlett Jasmin", style: black22medium),
                            Text("Fashion&Beauty",
                                style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor.withOpacity(0.5),
                                )),
                            SizedBox(
                              height: 10.h,
                            ),
                            Material(
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => ChatPageView());

                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => ChatPageView()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: btncolor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ChatPageView()));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              "images/message.svg"),
                                          SizedBox(
                                            width: 30.w,
                                          ),
                                          Text(
                                            "Message Now",
                                            style: GoogleFonts.roboto(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                                color: whiteColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  height: 45.h,
                                  width: 308.w,
                                ),
                              ),
                            ),
                            // MaterialButton(
                            //   color: btncolor,
                            //   onPressed: () {
                            //     Get.to(() => ChatPageView());
                            //   },
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       SvgPicture.asset("images/message.svg"),
                            //       SizedBox(
                            //         width: 30.w,
                            //       ),
                            //       Text(
                            //         "Message Now",
                            //         style: GoogleFonts.roboto(
                            //             fontSize: 16.sp,
                            //             fontWeight: FontWeight.w500,
                            //             color: whiteColor),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
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
                              margin: const EdgeInsets.all(10),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 5),
                                      child: Text("About"),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
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
                                            child: SvgPicture.asset(
                                                "images/abouticon.svg")),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Expanded(
                                          child: Text(
                                            abouttext,
                                            style: black16textStylefont,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300.h,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    controller: _controller,
                    indicatorColor: btncolor,
                    labelStyle: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      color: btncolor,
                      fontWeight: FontWeight.w600,
                    ),
                    labelColor: btncolor,
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      color: blackColor,
                    ),
                    tabs: const [
                      Tab(
                        text: 'Events',
                      ),
                      Tab(
                        text: 'Free Time',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500.0,
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    const EventsTab(),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffFFF7F2),
                                borderRadius: BorderRadius.circular(11),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: TableCalendar(
                                calendarStyle: CalendarStyle(
                                    rangeHighlightColor: textfieldbordercolor,
                                    selectedDecoration: BoxDecoration(
                                        color: textfieldbordercolor,
                                        shape: BoxShape.circle)),
                                headerVisible: false,
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: _focusedDay,
                                calendarFormat: _calendarFormat,
                                selectedDayPredicate: (day) {
                                  // Use `selectedDayPredicate` to determine which day is currently selected.
                                  // If this returns true, then `day` will be marked as selected.

                                  // Using `isSameDay` is recommended to disregard
                                  // the time-part of compared DateTime objects.
                                  return isSameDay(_selectedDay, day);
                                },
                                onDaySelected: (selectedDay, focusedDay) {
                                  if (!isSameDay(_selectedDay, selectedDay)) {
                                    // Call `setState()` when updating the selected day
                                    setState(() {
                                      _selectedDay = selectedDay;
                                      _focusedDay = focusedDay;
                                    });
                                  }
                                },
                                onFormatChanged: (format) {
                                  if (_calendarFormat != format) {
                                    // Call `setState()` when updating calendar format
                                    setState(() {
                                      _calendarFormat = format;
                                    });
                                  }
                                },
                                onPageChanged: (focusedDay) {
                                  // No need to call `setState()` here
                                  _focusedDay = focusedDay;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Container(
                                    height: 1,
                                    color: borderColor,
                                  ),
                                )),
                                Text(
                                  "15 Nov EVENT DETAILS",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    color: btncolor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Container(
                                    height: 1,
                                    color: borderColor,
                                  ),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Column(
                              children: List.generate(
                                  3,
                                  (index) => InkWell(
                                        onTap: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 45.h,
                                              width: 85.w,
                                              child: Text(
                                                "09:30 PM",
                                                style: GoogleFonts.roboto(
                                                    color: blackColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.sp),
                                              ),
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "images/timelinearrow.png"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            secondwidget(),
                                            Expanded(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                "images/t.svg"),
                                                            SizedBox(
                                                                width: 10.w),
                                                            Text(
                                                              "Event Title",
                                                              style: GoogleFonts
                                                                  .roboto(
                                                                      color:
                                                                          blackColor,
                                                                      fontSize:
                                                                          16.sp),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          width: 70.w,
                                                          height: 20.h,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color: btncolor),
                                                          child: Text(
                                                            "Learn More",
                                                            style: GoogleFonts
                                                                .roboto(
                                                                    color:
                                                                        whiteColor,
                                                                    fontSize:
                                                                        10.sp),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Divider(
                                                      thickness: 1,
                                                      color: blackColor
                                                          .withOpacity(0.6),
                                                    ),
                                                    Center(
                                                      child: Text(
                                                        "Friends Having Same Free time",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                color:
                                                                    blackColor,
                                                                fontSize:
                                                                    10.sp),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: 20.w,
                                                        ),
                                                        const Text(""),
                                                        Expanded(
                                                          flex: 1,
                                                          child: SizedBox(
                                                            height: 60.h,
                                                            // width: 100,
                                                            child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                Positioned(
                                                                    top: 10,
                                                                    right: 60,
                                                                    height:
                                                                        36.h,
                                                                    width: 36.w,
                                                                    child:
                                                                        const CircleAvatar(
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              "images/img3.png"),
                                                                    )),
                                                                Positioned(
                                                                    top: 10,
                                                                    right: 40,
                                                                    height:
                                                                        36.h,
                                                                    width: 36.w,
                                                                    child:
                                                                        const CircleAvatar(
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              "images/img1.png"),
                                                                    )),
                                                                Positioned(
                                                                    top: 10,
                                                                    right: 20,
                                                                    height:
                                                                        36.h,
                                                                    width: 36.w,
                                                                    child:
                                                                        const CircleAvatar(
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              "images/img2.png"),
                                                                    )),
                                                                Positioned(
                                                                    top: 10,
                                                                    right: 0,
                                                                    height:
                                                                        36.h,
                                                                    width: 36.w,
                                                                    child:
                                                                        Container(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
                                                                        "+20",
                                                                        style:
                                                                            white12med,
                                                                      ),
                                                                      decoration: BoxDecoration(
                                                                          color:
                                                                              textfieldbordercolor,
                                                                          shape:
                                                                              BoxShape.circle),
                                                                    )),
                                                                Positioned(
                                                                    top: 10,
                                                                    right: 85,
                                                                    height:
                                                                        36.h,
                                                                    width: 36.w,
                                                                    child:
                                                                        const CircleAvatar(
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              "images/img2.png"),
                                                                    )),
                                                                Positioned(
                                                                    top: 10,
                                                                    right: 110,
                                                                    height:
                                                                        36.h,
                                                                    width: 36.w,
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
                                                        SizedBox(
                                                          width: 20.w,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                height: 150.h,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ))),
    );
  }

  Widget secondwidget() {
    return Column(
      children: [
        SizedBox(
          height: 5.h,
        ),
        Icon(
          Icons.brightness_1,
          color: textfieldbordercolor,
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: greyColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5)),
          height: 30.h,
          width: 4.w,
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          color: greyColor.withOpacity(0.3),
          height: 30.h,
          width: 4.w,
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          color: greyColor.withOpacity(0.3),
          height: 30.h,
          width: 4.w,
        ),
      ],
    );
  }
}
