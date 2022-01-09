// ignore_for_file: unused_import

import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/homeSreen.dart';
import 'package:hermes/views/widget/navBar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ConnectPage extends StatelessWidget {
  ConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = new TextEditingController();
    TextEditingController _passController = new TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: dark,
              child: Stack(
                alignment: Alignment.bottomCenter,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    top: Get.height * .1,
                    child: Center(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(fontSize: 45, color: white),
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                      height: Get.height * .43,
                      width: Get.width,
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * .07,
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 30.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            height: 50,
                            decoration: BoxDecoration(
                              color: darkSecond,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: _emailController,
                                    onChanged: (value) {
                                      value = _emailController.text;
                                    },
                                    style: TextStyle(color: white),
                                    decoration: InputDecoration(
                                      hintText: "email or number",
                                      hintStyle: TextStyle(
                                        color: white.withOpacity(.5),
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      prefixIcon: Icon(
                                        LineIcons.envelope,
                                        color: white,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 30.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            height: 50,
                            decoration: BoxDecoration(
                              color: darkSecond,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: _passController,
                                    onChanged: (value) {
                                      value = _passController.text;
                                    },
                                    style: TextStyle(color: white),
                                    decoration: InputDecoration(
                                      hintText: "password",
                                      hintStyle: TextStyle(
                                        color: white.withOpacity(.5),
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      prefixIcon: Icon(
                                        LineIcons.userShield,
                                        color: white,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            height: 50,
                            minWidth: Get.width * .7,
                            textColor: white,
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 25),
                            ),
                            splashColor: dark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              //Get.offAll(Home());
                              //print(_passController);
                              //print(_emailController);
                            },
                            color: redBlood,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Vous n'avez pas de compte ?",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed('/inscript');
                                },
                                child: Text("S'inscrire", style: TextStyle()),
                              )
                            ],
                          )
                        ],
                      )),
                  Positioned(
                    bottom: Get.height * .33,
                    child: SvgPicture.asset(
                      'assets/img/Login.svg',
                      width: Get.width * .90,
                      height: Get.height * .55,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
