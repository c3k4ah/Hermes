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
        width: Get.width,
        height: Get.height * .15,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: darkSecond,
            border: Border(
                bottom: BorderSide(width: 2, color: dark.withOpacity(.5)))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: Get.height * .05,
              backgroundImage: ExactAssetImage('assets/img/user.jpeg'),
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
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Salut! Je suis Anne, je suis interéssé pas votre profile",
                      style: TextStyle(color: white.withOpacity(.5)),
                    ),
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
