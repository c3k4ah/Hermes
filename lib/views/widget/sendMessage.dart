import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:line_icons/line_icons.dart';

class Send extends StatelessWidget implements PreferredSizeWidget {
  const Send({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 60,
      color: dark,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.paperclip,
                color: redBlood,
              )),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 7),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            //height: 50,
            width: Get.width * .65,
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
                      hintText: "message",
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
    );
  }
}
