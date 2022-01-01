import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
// ignore: unused_import
import 'package:hermes/views/homeSreen.dart';
import 'package:line_icons/line_icons.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shadowColor: dark,
      backgroundColor: dark,
      leading: IconButton(
        icon: Icon(LineIcons.userCog, color: redBlood),
        onPressed: () {
          Get.toNamed('/setting');
        },
      ),
      actions: [
        IconButton(
          icon: Icon(LineIcons.bell, color: redBlood),
          onPressed: () {
            Get.toNamed('/notif');
          },
        ),
        IconButton(
          icon: Icon(LineIcons.sms, color: redBlood),
          onPressed: () {
            Get.toNamed('/chat');
          },
        ),
      ],
    );
  }
}
