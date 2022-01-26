import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/events/postevent.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:free_time_app/widgets/customtextfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

bool status = false;

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({Key? key}) : super(key: key);

  @override
  _CreateEventScreenState createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                shape: BoxShape.rectangle,
                                color: whiteColor,
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
                              height: 33.h,
                              width: 33.w,
                              child: SvgPicture.asset(
                                "images/event.svg",
                              )),
                        ),
                        focusColor: textfieldbordercolor,
                        fillColor: whiteColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: "Event title",
                        hintStyle: GoogleFonts.roboto(
                            fontSize: 24.sp,
                            color: blackColor.withOpacity(0.33),
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                      )),
                ),
                CreateEventTextField(
                  containericon: 'images/description.svg',
                  hinttext: 'Add Description',
                ),
                CreateEventTextField(
                  containericon: 'images/datetime.svg',
                  hinttext: 'Time & Date',
                ),
                CreateEventTextField(
                  containericon: 'images/locationicon.svg',
                  hinttext: 'Location',
                ),
                CreateEventTextField(
                  containericon: 'images/gallery.svg',
                  hinttext: 'Cover Photo',
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                shape: BoxShape.rectangle,
                                color: whiteColor,
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
                              height: 33.h,
                              width: 33.w,
                              child: SvgPicture.asset("images/groupicon.svg")),
                        ),
                        focusColor: textfieldbordercolor,
                        fillColor: whiteColor,
                        hintText: "Invite Friends",
                        suffixIcon: SizedBox(
                          height: 60.h,
                          width: 120,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              Positioned(
                                  top: 20,
                                  right: 60,
                                  height: 46.h,
                                  width: 56.w,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        "images/closecircle.svg",
                                        color: Color(0xffFF7777),
                                        height: 10.h,
                                      ),
                                      const CircleAvatar(
                                        maxRadius: 15,
                                        backgroundImage:
                                            AssetImage("images/img3.png"),
                                      ),
                                    ],
                                  )),
                              Positioned(
                                  top: 20,
                                  right: 30,
                                  height: 56.h,
                                  width: 56.w,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        "images/closecircle.svg",
                                        height: 10.h,
                                        color: Color(0xffFF7777),
                                      ),
                                      const CircleAvatar(
                                        maxRadius: 15,
                                        backgroundImage:
                                            AssetImage("images/img1.png"),
                                      ),
                                    ],
                                  )),
                              Positioned(
                                  top: 20,
                                  height: 56.h,
                                  width: 56.w,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        "images/closecircle.svg",
                                        height: 10.h,
                                        color: Color(0xffFF7777),
                                      ),
                                      const CircleAvatar(
                                        maxRadius: 15,
                                        backgroundImage:
                                            AssetImage("images/img2.png"),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        hintStyle: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: blackColor.withOpacity(0.33),
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                shape: BoxShape.rectangle,
                                color: whiteColor,
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
                              height: 33.h,
                              width: 33.w,
                              child: SvgPicture.asset("images/inviteonly.svg")),
                        ),
                        focusColor: textfieldbordercolor,
                        fillColor: whiteColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: "Invite Only",
                        suffixIcon: SizedBox(
                          width: 100.w,
                          child: FlutterSwitch(
                            width: 35.0,
                            height: 18.0,
                            valueFontSize: 12.0,
                            toggleSize: 15.0,
                            toggleColor: whiteColor,
                            padding: 1,
                            value: status,
                            activeColor: btncolor,
                            inactiveColor: switchactiveColor,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ),
                        hintStyle: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: blackColor,
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: textfieldbordercolor)),
                      )),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomIconButton(
                    txt: "Show Preview",
                    onpress: () {
                      Get.to(() => const PostEventScreen());
                    },
                    height: 45.h,
                    width: 308.w)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
