import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/events/postevent.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReminderAlert extends StatefulWidget {
  @override
  _ReminderAlertState createState() => _ReminderAlertState();
}

class _ReminderAlertState extends State<ReminderAlert> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 520.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "images/closecircle.svg",
              height: 25.h,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Get notification before the event start",
                    style: black16medium,
                  ),
                ),
                Center(
                  child: Image.asset(
                    "images/animatenotification.png",
                    height: 150.h,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Set Reminder",
                    style:
                        GoogleFonts.roboto(fontSize: 14.sp, color: blackColor),
                  ),
                ),
                Container(
                  height: 140,
                  child: CupertinoPicker(
                    itemExtent: 30,
                    onSelectedItemChanged: (int index) {
                      print(selected);
                      setState(() {
                        selected = index;
                      });
                      print(selected);
                    },
                    children: <Widget>[
                      Text(
                        "03 OCT 2021",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: selected == 0 ? baseColor : Color(0xff727272),
                        ),
                      ),
                      Text(
                        "04 OCT 2021",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: selected == 1 ? baseColor : Color(0xff727272),
                        ),
                      ),
                      Text(
                        "05 OCT 2021",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: selected == 2 ? baseColor : Color(0xff727272),
                        ),
                      ),
                      Text(
                        "06 OCT 2021",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: selected == 3 ? baseColor : Color(0xff727272),
                        ),
                      ),
                      Text(
                        "07 OCT 2021",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: selected == 4 ? baseColor : Color(0xff727272),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: btncolor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("images/activenotification.svg"),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "SET REMINDER",
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
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 121,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.roboto(
                        color: blackColor.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:carappui/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MotAlert extends StatelessWidget {
//   const MotAlert({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 315.w,
//       height: 181.h,
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: 315.w,
//             height: 70.h,
//           ),
//         ],
//       ),
//     );
//   }
// }
