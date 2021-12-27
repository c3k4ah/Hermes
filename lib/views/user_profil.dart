import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:line_icons/line_icons.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: dark,
        appBar: AppBar(
          backgroundColor: dark,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              LineIcons.angleLeft,
              color: white,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: Container(
                height: Get.height * .25,
                width: Get.width * .5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/img/user.jpeg'),
                    ),
                    border: Border.all(
                      width: 5,
                      color: blueAccentDark,
                    ),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "DOMINICK Randriamanantena Grégoire",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: white),
              ),
            ),
            Container(
              height: 7,
              width: Get.width * .95,
              decoration: BoxDecoration(
                  color: redBlood.withOpacity(.15),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    LineIcons.at,
                    color: redBlood,
                  ),
                  title: Text(
                    "dominick17@gmail.com",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    LineIcons.phone,
                    color: redBlood,
                  ),
                  title: Text(
                    "034 44 599 16",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    LineIcons.campground,
                    color: redBlood,
                  ),
                  title: Text(
                    "Antananrive, Madagascar",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    LineIcons.male,
                    color: redBlood,
                  ),
                  title: Text(
                    "masculin",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    LineIcons.birthdayCake,
                    color: redBlood,
                  ),
                  title: Text(
                    "17 Janvier 1999",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    LineIcons.addressCard,
                    color: redBlood,
                  ),
                  title: Text(
                    "Étudiant",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineIcons.toolbox,
                    color: redBlood,
                  ),
                  title: Text(
                    "Expérience",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                  trailing: Icon(
                    LineIcons.angleRight,
                    color: redBlood,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineIcons.graduationCap,
                    color: redBlood,
                  ),
                  title: Text(
                    "Diplôme et cértificat",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                  trailing: Icon(
                    LineIcons.angleRight,
                    color: redBlood,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineIcons.folderOpen,
                    color: redBlood,
                  ),
                  title: Text(
                    "CV",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                  trailing: Icon(
                    LineIcons.download,
                    color: redBlood,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineIcons.hardHat,
                    color: redBlood,
                  ),
                  title: Text(
                    "Compte pour les projets",
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.w300),
                  ),
                  trailing: Icon(
                    LineIcons.angleRight,
                    color: redBlood,
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
