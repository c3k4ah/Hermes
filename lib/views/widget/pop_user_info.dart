import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hermes/colors.dart';
import 'package:line_icons/line_icons.dart';

class Projet extends StatelessWidget {
  const Projet({Key? key}) : super(key: key);

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

class Expe extends StatelessWidget {
  const Expe({Key? key}) : super(key: key);

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
                  LineIcons.briefcase,
                  color: redBlood,
                  size: 35,
                ),
                title: Text(
                  "Stage de pré embauche",
                  style: TextStyle(
                      fontSize: 20,
                      color: white,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  "| 2020",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.briefcase,
                  color: redBlood,
                  size: 35,
                ),
                title: Text(
                  "Altérnance chez Hairum",
                  style: TextStyle(
                      fontSize: 20,
                      color: white,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  "| 2020",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.briefcase,
                  color: redBlood,
                  size: 35,
                ),
                title: Text(
                  "Développeur front-end",
                  style: TextStyle(
                      fontSize: 20,
                      color: white,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  "| 2021",
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

class Diplo extends StatelessWidget {
  const Diplo({Key? key}) : super(key: key);

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
                  LineIcons.graduationCap,
                  color: redBlood,
                  size: 35,
                ),
                title: Text(
                  "License en développement",
                  style: TextStyle(
                      fontSize: 20,
                      color: white,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  "| 2019",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.graduationCap,
                  color: redBlood,
                  size: 35,
                ),
                title: Text(
                  "Formation en Leadership",
                  style: TextStyle(
                      fontSize: 20,
                      color: white,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  "| 2020",
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  LineIcons.graduationCap,
                  color: redBlood,
                  size: 35,
                ),
                title: Text(
                  "Codign Pord",
                  style: TextStyle(
                      fontSize: 20,
                      color: white,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  "| 2021",
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

class CV extends StatelessWidget {
  const CV({Key? key}) : super(key: key);

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
              MaterialButton(
                onPressed: () {},
                color: redBlood,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Download",
                      style: TextStyle(
                        fontSize: 20,
                        color: white,
                      ),
                    ),
                    Icon(
                      LineIcons.download,
                      color: white,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: redBlood,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Visualize",
                      style: TextStyle(
                        fontSize: 20,
                        color: white,
                      ),
                    ),
                    Icon(
                      LineIcons.eye,
                      color: white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
