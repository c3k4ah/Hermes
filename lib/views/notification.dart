import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/navBar.dart';

class NotifIcation extends StatelessWidget {
  const NotifIcation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      backgroundColor: dark,
      body: Container(
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                minWidth: Get.width * .95,
                height: 30,
                color: darkSecond.withOpacity(.5),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Tout marquer comme lu",
                  style: TextStyle(
                      color: white.withOpacity(.5),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 10,
                decoration: BoxDecoration(
                  color: redBlood.withOpacity(.1),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                  width: Get.width,
                  height: Get.height * .8,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return CardNotif();
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

class CardNotif extends StatelessWidget {
  const CardNotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 1,
      height: Get.height * .15,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color: redBlood.withOpacity(.5)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: white,
          ),
          SizedBox(
            width: 25,
          ),
          Container(
            width: Get.width * .7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                    child: RichText(
                  text: TextSpan(
                      text: 'Dominick Randria',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: white,
                          fontSize: 18),
                      children: [
                        TextSpan(
                            text:
                                ' a aimé votre publication "Je suis à la recherche d\'une poste de dev mobile"',
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ]),
                )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Il y a 15 minutes",
                  style: TextStyle(color: white.withOpacity(.5)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
