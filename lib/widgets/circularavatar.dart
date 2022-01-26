import 'package:flutter/material.dart';
import 'package:free_time_app/constants/colors.dart';

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: const CircleAvatar(
          radius: 60.0,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 17.0,
                child: Icon(
                  Icons.edit,
                  size: 17.0,
                  color: btncolor,
                ),
              ),
            ),
            radius: 55.0,
            backgroundImage: AssetImage('images/profile.png'),
          ),
        ),
      ),
    );
  }
}
