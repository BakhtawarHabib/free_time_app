import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/custombtn.dart';

bool status = false;
List _status = [true, true, true, true];

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: SvgPicture.asset(
                "images/notificationactive.svg",
                height: 100.h,
              )),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Notifications",
                style: black20medium,
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                  children: List.generate(
                4,
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30.h,
                                width: 30.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFF7F2),
                                  borderRadius: BorderRadius.circular(4),
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
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: SvgPicture.asset(
                                    notificationsettingicons[index],
                                    height: 20.h,
                                    color: btncolor.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                notificationsettingnames[index],
                                style: black16textStylefont,
                              )
                            ],
                          ),
                          FlutterSwitch(
                            width: 35.0,
                            height: 18.0,
                            valueFontSize: 12.0,
                            toggleSize: 15.0,
                            toggleColor: whiteColor,
                            padding: 1,
                            value: _status[index],
                            activeColor: textfieldbordercolor,
                            inactiveColor: switchactiveColor,
                            onToggle: (val) {
                              setState(() {
                                _status[index] = val;
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Divider(
                          thickness: 1,
                          color: btncolor.withOpacity(0.2),
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
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
    );
  }
}
