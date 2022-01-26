import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';

List _status = [
  true,
  true,
];

class PrivacySettingScreen extends StatefulWidget {
  const PrivacySettingScreen({Key? key}) : super(key: key);

  @override
  _PrivacySettingScreenState createState() => _PrivacySettingScreenState();
}

class _PrivacySettingScreenState extends State<PrivacySettingScreen> {
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
          "Privacy Settings ",
          style: black16medium,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
              child: SvgPicture.asset("images/privacyicon.svg", height: 150.h)),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Privacy",
            style: black20medium,
          ),
          Column(
              children: List.generate(
            2,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              privacypolicyicons[index],
                              height: 20.h,
                              color: blackColor.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            privacypolicynames[index],
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
          )),
          Text(
            "How can see my schedule & Events",
            style: black18medium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          activeColor: btncolor,
                          groupValue: group1Value,
                          onChanged: (value) {
                            setState(() {
                              group1Value = value.hashCode;
                            });
                          },
                        ),
                        Text(
                          "Friends",
                          style: black16medium,
                        ),
                      ],
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "images/groupicon.svg",
                  color: blackColor.withOpacity(0.5),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
            ),
            child: Divider(
              thickness: 1,
              color: btncolor.withOpacity(0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
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
                          "No One",
                          style: black16medium,
                        ),
                      ],
                    ),
                  ],
                ),
                SvgPicture.asset("images/nonicon.svg")
              ],
            ),
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
    );
  }
}
