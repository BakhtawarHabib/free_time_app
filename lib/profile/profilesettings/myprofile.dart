// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/circularavatar.dart';
import 'package:free_time_app/widgets/custombtn.dart';
import 'package:free_time_app/widgets/customtextfield.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "Profile",
          style: black16medium,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {}, child: SvgPicture.asset("images/useredit.svg")),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: const CircularAvatar()),
            SizedBox(
              height: 20.h,
            ),
            EditProfileTextField(
              containericon: 'images/user.svg',
              hinttext: 'Elina Stark',
              labeltext: 'Full Name',
            ),
            SizedBox(
              height: 10.h,
            ),
            EditProfileTextField(
              containericon: 'images/emailicon.svg',
              hinttext: 'stark21@freetime.com',
              labeltext: 'Email',
            ),
            SizedBox(
              height: 10.h,
            ),
            EditProfileTextField(
              containericon: 'images/user.svg',
              hinttext: 'elinstark7',
              labeltext: 'Username',
            ),
            SizedBox(
              height: 10.h,
            ),
            EditProfileTextField(
              containericon: 'images/hearticon.svg',
              hinttext: 'Movies & Songs',
              labeltext: 'Interest',
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // First child (child 1)
                width: 308.w,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintMaxLines: 6,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
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
                          height: 27.h,
                          width: 27.w,
                          child: SvgPicture.asset("images/abouticon.svg")),
                    ),
                    focusColor: textfieldbordercolor,
                    fillColor: whiteColor,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    hintText: abouttext,
                    hintStyle: hinttextStyle,
                    labelText: "About",
                    labelStyle: labeltextStyle,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: textfieldbordercolor)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: textfieldbordercolor)),
                  ),
                ),
                height: 150.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: CustomBtn(
                height: 45.h,
                onpress: () {},
                txt: 'Save',
                width: 308.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
