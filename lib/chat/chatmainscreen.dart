import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_time_app/chat/reciverwidget.dart';
import 'package:free_time_app/chat/senderwidget.dart';
import 'package:free_time_app/constants/colors.dart';
import 'package:free_time_app/constants/styles.dart';
import 'package:free_time_app/widgets/backbutton.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageView extends StatefulWidget {
  @override
  _ChatPageViewState createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];

  @override
  void initState() {
    super.initState();

    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'hi its Elina Stark ',
        time: '22:40 PM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'Hey! Sweet Heart Whatsup',
        time: '9:57 PM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'I am wonderful!',
        time: '9:57 PM',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: whiteColor),
          child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BackArrow(),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 17.0,
                          backgroundImage: AssetImage("images/dp2.png"),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Scarlett Jasmin",
                              style: black16medium,
                            ),
                            Text(
                              "Online",
                              style: GoogleFonts.roboto(
                                  fontSize: 10.sp, color: textfieldbordercolor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 6,
                      color: blackColor,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: whiteColor),
                      child: SingleChildScrollView(
                          controller: _scrollController,
                          reverse: true,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: childList,
                            ),
                          )),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 45.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    suffixIcon: const Icon(
                                      Icons.send,
                                      color: whiteColor,
                                    ),
                                    fillColor: btncolor,
                                    border: InputBorder.none,
                                    hintText: "write a message...",
                                    contentPadding: const EdgeInsets.all(10),
                                    hintStyle: white16font),
                              ),
                              decoration: const BoxDecoration(
                                color: btncolor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
