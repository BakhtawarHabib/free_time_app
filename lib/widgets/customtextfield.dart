import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomTextField({required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // First child (child 1)
          width: 308.w,
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
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
                      child: SvgPicture.asset(
                        containericon,
                      )),
                ),
                focusColor: textfieldbordercolor,
                fillColor: whiteColor,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                hintText: hinttext,
                hintStyle: hinttextStyle,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: textfieldbordercolor)),
                border: InputBorder.none),
          ),
          height: 50.h,
          decoration: BoxDecoration(
              border: Border.all(color: textfieldbordercolor),
              color: Colors.white,
              borderRadius: BorderRadius.circular(6)),
          margin: const EdgeInsets.symmetric(horizontal: 0)),
    );
  }
}

// ignore: must_be_immutable
class CreateEventTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CreateEventTextField(
      {Key? key, required this.containericon, required this.hinttext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 33.h,
                  width: 33.w,
                  child: SvgPicture.asset(containericon)),
            ),
            focusColor: textfieldbordercolor,
            fillColor: whiteColor,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            hintText: hinttext,
            hintStyle: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: blackColor.withOpacity(0.33),
                fontWeight: FontWeight.w500),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor)),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor)),
          )),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // First child (child 1)
          width: 308.w,
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
                focusColor: textfieldbordercolor,
                fillColor: whiteColor,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                hintText: "freetime",
                hintStyle: hinttextStyle,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: textfieldbordercolor)),
                border: InputBorder.none,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset("images/closeicon.svg"),
                )),
          ),
          height: 45.h,
          decoration: BoxDecoration(
              border: Border.all(color: textfieldbordercolor),
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)),
          margin: const EdgeInsets.symmetric(horizontal: 0)),
    );
  }
}

class EditProfileTextField extends StatelessWidget {
  String hinttext;
  String labeltext;
  String containericon;

  EditProfileTextField(
      {Key? key,
      required this.containericon,
      required this.hinttext,
      required this.labeltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // First child (child 1)
          width: 308.w,
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
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
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 27.h,
                    width: 27.w,
                    child: SvgPicture.asset(containericon)),
              ),
              focusColor: textfieldbordercolor,
              fillColor: whiteColor,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
              hintText: hinttext,
              hintStyle: hinttextStyle,
              labelText: labeltext,
              labelStyle: labeltextStyle,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: textfieldbordercolor)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: textfieldbordercolor)),
            ),
          ),
          height: 50.h,
          margin: const EdgeInsets.symmetric(horizontal: 0)),
    );
  }
}
