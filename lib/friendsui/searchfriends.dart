import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/strings.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:free_time_app/widgets/customtextfield.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFriendsScreen extends StatefulWidget {
  const SearchFriendsScreen({Key? key}) : super(key: key);

  @override
  _SearchFriendsScreenState createState() => _SearchFriendsScreenState();
}

class _SearchFriendsScreenState extends State<SearchFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: const BackArrow(),
        title: Text(
          "Search Friends ",
          style: black16textStylefont,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: SearchTextField()),
              Column(
                children: [
                  Column(
                    children: List.generate(
                        7,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 65.h,
                                  child: Card(
                                    color: Color(0xffFFF7F2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                                                          searchfriendsimgs[
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
                                                    searchfriendsnames[index],
                                                    style: black16textStylefont,
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    searchfriendspecs[index],
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
                                            width: 80.w,
                                            height: 27.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: btncolor),
                                            child: Text(
                                              "Add",
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
                              ),
                            )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
