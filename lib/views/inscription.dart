// ignore_for_file: unused_import, unused_element

import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/homeSreen.dart';
import 'package:hermes/views/widget/navBar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:intl/intl.dart';

class InscriptPage extends StatefulWidget {
  InscriptPage({Key? key}) : super(key: key);

  @override
  State<InscriptPage> createState() => _InscriptPageState();
}

class _InscriptPageState extends State<InscriptPage> {
  //Genre genre = Genre.femme;

  @override
  Widget build(BuildContext context) {
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
                        "SIGN UP",
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
                                    onChanged: (value) {},
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
                                    onChanged: (value) {},
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
                              "Sign Up",
                              style: TextStyle(fontSize: 25),
                            ),
                            splashColor: dark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Get.offAll(Home());
                            },
                            color: redBlood,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Vous avez déjà un compte ?",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed('/connect');
                                },
                                child: Text("Se connecter", style: TextStyle()),
                              )
                            ],
                          )
                        ],
                      )),
                  Positioned(
                    bottom: Get.height * .33,
                    child: SvgPicture.asset(
                      'assets/img/SignIn.svg',
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
