import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/friendsui/searchfriends.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  _InviteFriendsScreenState createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "My Friends ",
          style: black16textStylefont,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => const SearchFriendsScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("images/searchicon.svg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Send event invitations to friends",
                style: black16textStylefont,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis\nmagna justo, ",
                style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Column(
                    children: List.generate(
                        4,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 65.h,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 51.h,
                                              width: 51.w,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        eventinvitefriendsimgs[
                                                            index])),
                                                color: whiteColor,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  eventinvitefriends[index],
                                                  style: black16textStylefont,
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  eventinvitefriendspecs[index],
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12.sp,
                                                    color: Colors.black
                                                        .withOpacity(0.5),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 90.w,
                                          height: 30.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: btncolor),
                                          child: Text(
                                            "Invite",
                                            style: GoogleFonts.roboto(
                                                color: whiteColor,
                                                fontSize: 16.sp),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 2,
                        color: textfieldbordercolor,
                      )),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Share External",
                        style: black16textStylefont,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                          child: Container(
                        height: 2,
                        color: textfieldbordercolor,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Wrap(
                    children: List.generate(
                      7,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70.h,
                              width: 70.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                                color: whiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(socialmediaimages[index]),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              socialmedianames[index],
                              style: black14,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
