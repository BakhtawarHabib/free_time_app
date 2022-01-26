import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0.0,
          leading: const BackArrow(),
          title: Text(
            "Notifications",
            style: black16medium,
          ),
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
        body: Column(
          children: List.generate(
              notificationsicons.length,
              (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Color(0xffFFF7F2),
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
                                      color: whiteColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Image.asset(
                                      notificationsicons[index],
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
                                      notificationtitle[index],
                                      style: black16medium,
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(notificationsubtitle[index],
                                        style: GoogleFonts.roboto(
                                          fontSize: 14.sp,
                                          color: const Color(0xff0015FF),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 13),
                            child: Text(
                              notificationtime[index],
                              style: GoogleFonts.roboto(
                                  color: Color(0xffD1D1D1), fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
        ));
  }
}
