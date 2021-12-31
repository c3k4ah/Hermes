import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/cardListe.dart';

import 'package:hermes/views/widget/pop_user_info.dart';
import 'package:line_icons/line_icons.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Stack(
        children: <Widget>[
          Container(
            height: Get.height,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .05,
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
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
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "DOMINICK Randriamanantena Grégoire",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 23, color: white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(7),
                  height: 10,
                  width: Get.width * .95,
                  decoration: BoxDecoration(
                      color: redBlood.withOpacity(.15),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  width: Get.width,
                  height: 60,
                  color: dark,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        //height: 50,
                        width: Get.width * .82,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 2,
                              color: redBlood,
                            )),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                style: TextStyle(color: white),
                                decoration: InputDecoration(
                                  hintText: "envoyer un message à dominick ...",
                                  hintStyle: TextStyle(
                                    color: white.withOpacity(.5),
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                          height: 40,
                          minWidth: Get.width * .1,
                          color: redBlood,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Icon(
                            LineIcons.paperPlane,
                            color: white,
                          )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: darkSecond.withOpacity(.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  padding: EdgeInsets.all(7),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Publication récent",
                    //textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 23, color: white),
                  ),
                ),
                Container(
                  color: dark,
                  height: Get.height * .3,
                  width: Get.width * .95,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return CardGM();
                    },
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
          Dargle(),
        ],
      ),
    );
  }
}

class Dargle extends StatefulWidget {
  const Dargle({Key? key}) : super(key: key);

  @override
  State<Dargle> createState() => _DargleState();
}

class _DargleState extends State<Dargle> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.1,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              color: dark,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          //alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: darkSecond,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        LineIcons.angleUp,
                        color: redBlood,
                      ),
                      Center(
                        child: Text(
                          "Plus d'information",
                          style: TextStyle(
                              fontSize: 17,
                              color: white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Icon(
                        LineIcons.angleUp,
                        color: redBlood,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    LineIcons.envelope,
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
                    "Masculin",
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
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Expe();
                        });
                  },
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
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Diplo();
                        });
                  },
                  leading: Icon(
                    LineIcons.userGraduate,
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
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return CV();
                        });
                  },
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
                    LineIcons.angleRight,
                    color: redBlood,
                  ),
                ),
                ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Projet();
                        });
                  },
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
            ),
          ),
        );
      },
    );
  }
}
