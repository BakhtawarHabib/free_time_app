import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class AddFreeTimeScreen extends StatefulWidget {
  const AddFreeTimeScreen({Key? key}) : super(key: key);

  @override
  _AddFreeTimeScreenState createState() => _AddFreeTimeScreenState();
}

class _AddFreeTimeScreenState extends State<AddFreeTimeScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: whiteColor),
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [BackArrow(), Text("")],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Container(
                      alignment: Alignment.center,
                      height: 30.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(4),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.add,
                            color: btncolor,
                          ),
                          Text("ADD FREE TIME",
                              style: GoogleFonts.roboto(
                                  fontSize: 12.sp, color: btncolor))
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("images/dp.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF7F2),
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                  height: 30.h,
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: const EdgeInsets.all(0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset("images/t.svg"),
                                              SizedBox(width: 10.w),
                                              Text(
                                                "Event Title",
                                                style: GoogleFonts.roboto(
                                                    color: blackColor,
                                                    fontSize: 16.sp),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 70.w,
                                            height: 20.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: btncolor),
                                            child: Text(
                                              "Learn More",
                                              style: GoogleFonts.roboto(
                                                  color: whiteColor,
                                                  fontSize: 10.sp),
                                            ),
                                          )
                                        ],
                                      ),
                                      Divider(
                                        thickness: 1,
                                        color: blackColor.withOpacity(0.6),
                                      ),
                                      Center(
                                        child: Text(
                                          "Friends Having Same Free time",
                                          style: GoogleFonts.roboto(
                                              color: blackColor,
                                              fontSize: 10.sp),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                children: <Widget>[
                                                  Positioned(
                                                      top: 20,
                                                      left: 50,
                                                      height: 36.h,
                                                      width: 36.w,
                                                      child: const CircleAvatar(
                                                        backgroundImage:
                                                            AssetImage(
                                                                "images/img3.png"),
                                                      )),
                                                  Positioned(
                                                      top: 20,
                                                      left: 20,
                                                      height: 36.h,
                                                      width: 36.w,
                                                      child: const CircleAvatar(
                                                        backgroundImage:
                                                            AssetImage(
                                                                "images/img1.png"),
                                                      )),
                                                  Positioned(
                                                      top: 20,
                                                      height: 36.h,
                                                      width: 36.w,
                                                      child: const CircleAvatar(
                                                        backgroundImage:
                                                            AssetImage(
                                                                "images/img2.png"),
                                                      )),
                                                  Positioned(
                                                      top: 20,
                                                      left: 75,
                                                      height: 36.h,
                                                      width: 36.w,
                                                      child: const CircleAvatar(
                                                        backgroundImage:
                                                            AssetImage(
                                                                "images/img2.png"),
                                                      )),
                                                  Positioned(
                                                      top: 20,
                                                      left: 100,
                                                      height: 36.h,
                                                      width: 36.w,
                                                      child: const CircleAvatar(
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
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              )
                            ],
                          )),
                ),
              ])))),
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
