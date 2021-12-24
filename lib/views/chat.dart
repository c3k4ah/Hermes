import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/navBar.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Container(
        color: dark,
        width: Get.width,
        height: Get.height * .9,
        child: SingleChildScrollView(
          child: Column(children: [UserChat()]),
        ),
      ),
    );
  }
}

class UserChat extends StatelessWidget {
  const UserChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/chatRoom');
      },
      child: Container(
        width: Get.width * 1,
        height: Get.height * .15,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: darkSecond,
            border: Border(
                bottom: BorderSide(width: 2, color: dark.withOpacity(.5)))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: blueAccentDark,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dominick Randriamanantena",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        "9:25",
                        style: TextStyle(color: white.withOpacity(.5)),
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Salut! Je suis Anne, je suis interéssé pas votre profile",
                    style: TextStyle(color: white.withOpacity(.5)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
