import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/navBar.dart';

class CHatRoom extends StatefulWidget {
  const CHatRoom({Key? key}) : super(key: key);

  @override
  _CHatRoomState createState() => _CHatRoomState();
}

class _CHatRoomState extends State<CHatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Container(
        width: Get.width,
        height: Get.height * .9,
        color: dark,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20, right: 15),
                      width: Get.width * .55,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: darkSecond,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Center(
                        child: Text("Hello !",
                            style: TextStyle(color: white, fontSize: 20)),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 15),
                      width: Get.width * .55,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: darkSecond,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          bottomRight: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                      child: Center(
                        child: Expanded(
                          child: Text(
                              "Salut! Je suis Anne, je suis interéssé pas votre profile ",
                              style: TextStyle(color: white, fontSize: 20)),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
