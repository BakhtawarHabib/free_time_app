import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/custombtn.dart';

class StatusSettingScreen extends StatefulWidget {
  const StatusSettingScreen({Key? key}) : super(key: key);

  @override
  _StatusSettingScreenState createState() => _StatusSettingScreenState();
}

class _StatusSettingScreenState extends State<StatusSettingScreen> {
  int? group1Value;
  int? group2Value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "Account Status",
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 45.h,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF7F2),
                    borderRadius: BorderRadius.circular(4),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        activeColor: btncolor,
                        value: 0,
                        groupValue: group1Value,
                        onChanged: (value) {
                          setState(() {
                            group1Value = value.hashCode;
                          });
                        },
                      ),
                      Text(
                        "Busy",
                        style: black16medium,
                      ),
                      SvgPicture.asset("images/busyicon.svg")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 45.h,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF7F2),
                    borderRadius: BorderRadius.circular(4),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: 1,
                        activeColor: btncolor,
                        groupValue: group1Value,
                        onChanged: (value) {
                          setState(() {
                            group1Value = value.hashCode;
                          });
                        },
                      ),
                      Text(
                        "Interested ",
                        style: black16medium,
                      ),
                      SvgPicture.asset("images/interestedicon.svg")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 45.h,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF7F2),
                    borderRadius: BorderRadius.circular(4),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: 2,
                        activeColor: btncolor,
                        groupValue: group1Value,
                        onChanged: (value) {
                          setState(() {
                            group1Value = value.hashCode;
                          });
                        },
                      ),
                      Text(
                        "Non",
                        style: black16medium,
                      ),
                      SvgPicture.asset("images/nonicon.svg")
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
                      "Interested",
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
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "By Selecting this option, members will actively looking\nfor events/activities to participate with you.",
                  style: black14,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: CustomBtn(
                  height: 45.h,
                  onpress: () {},
                  txt: 'Save',
                  width: 308.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
