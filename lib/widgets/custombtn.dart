import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  CustomBtn(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: btncolor),
        child: Text(
          txt,
          style: GoogleFonts.roboto(
              fontSize: 16.sp, fontWeight: FontWeight.w500, color: whiteColor),
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  CustomIconButton(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: btncolor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(""),
              Text(
                txt,
                style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: whiteColor,
                size: 17,
              ),
            ],
          ),
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}
