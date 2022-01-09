import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
// ignore: unused_import
import 'package:hermes/views/homeSreen.dart';
import 'package:line_icons/line_icons.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final User? user;
  const Appbar({this.user});
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shadowColor: dark,
      backgroundColor: dark,
      actions: <Widget>[
        Container(
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed('/setting');
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(user!.photoURL!),
                      ),
                      border: Border.all(
                        width: 2,
                        color: redBlood,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Row(
                children: [
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
