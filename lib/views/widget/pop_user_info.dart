import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hermes/colors.dart';
import 'package:line_icons/line_icons.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
      child: AlertDialog(
        backgroundColor: darkSecond,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  LineIcons.github,
                  color: white,
                  size: 35,
                ),
                title: Text(
                  "c3k4ah",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.facebook,
                  color: white,
                  size: 35,
                ),
                title: Text(
                  "Dominick",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.pinterest,
                  color: white,
                  size: 35,
                ),
                title: Text(
                  "Dominick Greg",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.dribbble,
                  color: white,
                  size: 35,
                ),
                title: Text(
                  "Dominick Randriamanantena Grégoire",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
