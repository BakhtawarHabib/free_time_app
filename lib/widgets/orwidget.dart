import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ORWidget extends StatelessWidget {
  const ORWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Expanded(
              child: Container(
            width: 133,
            height: 1,
            color: const Color(0xff707070),
          )),
          SizedBox(
            width: 5.w,
          ),
          Text("OR", style: GoogleFonts.roboto(fontSize: 16.sp)),
          SizedBox(
            width: 5.w,
          ),
          Expanded(
              child: Container(
            width: 133,
            height: 1,
            color: const Color(0xff707070),
          )),
          SizedBox(
            width: 5.w,
          ),
        ],
      ),
    );
  }
}
