import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hermes/colors.dart';
import 'package:line_icons/line_icons.dart';

class CardPM extends StatelessWidget {
  const CardPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      width: 150,
      height: 10,
      decoration: BoxDecoration(
          //color: darkSecond,
          border: Border.all(color: redBlood, width: 2),
          //color: darkSecond,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            /*height: 150,
            width: 100,*/
            child: Text(
              "Poste de développeur fornt-end, chez bocasay",
              overflow: TextOverflow.fade,
              style: TextStyle(color: white),
            ),
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Container(
            //height: double.infinity,
            width: Get.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                  width: 45,
                  child: Card(
                    //width: Get.width,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: darkSecond,

                    child: Icon(
                      LineIcons.timesCircle,
                      color: redBlood,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: 45,
                  child: Card(
                    //width: Get.width,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: darkSecond,

                    child: Icon(
                      LineIcons.plusCircle,
                      color: redBlood,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardGM extends StatelessWidget {
  const CardGM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: darkSecond,
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            Color(0xFF192952),
            Color(0xFF212B47),
            Color(0xFF254657),
          ])),
      margin: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 20),
      padding: EdgeInsets.all(15),
      height: Get.height * .32,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Colors.red, width: 2),
                ),
                child: Icon(
                  LineIcons.thumbsUp,
                  size: 35,
                  color: white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    LineIcons.link,
                    color: white,
                  )),
              Text(
                "Il y a 15 minutes",
                style: TextStyle(color: white.withOpacity(.5)),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "MANAO LOGICIEL",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w300, fontSize: 25),
              ),
              Icon(
                LineIcons.certificate,
                color: redBlood,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 5,
            color: redBlood,
          ),
          Text(
            "Développeur mobile",
            style: TextStyle(
                color: white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "Nous recrutons un développeur mobile au sein de notre équipe, nous contacter ou nous voir directement",
            style: TextStyle(
                color: white, fontWeight: FontWeight.normal, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
