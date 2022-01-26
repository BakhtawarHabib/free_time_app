import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class SendedMessageWidget extends StatelessWidget {
  final String content;
  final String time;

  SendedMessageWidget({
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "1 min ago",
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0, left: 10.0, top: 4.0, bottom: 10.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Container(
                    color: btncolor,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 12.0, left: 23.0, top: 8.0, bottom: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            content,
                            style: white16font,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 13.0,
              backgroundImage: AssetImage("images/dp.png"),
            ),
          ],
        ),
      ],
    );
  }
}
