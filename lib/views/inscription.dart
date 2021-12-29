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

  int _genre = 0;

  void _genreValue(int value) {
    setState(() {
      _genre = value;

      switch (_genre) {
        case 0:
          break;

        case 1:
          break;
      }
    });
  }

  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      appBar: AppBar(
        backgroundColor: dark,
        shadowColor: white,
        elevation: 0,
        leading: Icon(
          LineIcons.chevronLeft,
          color: redBlood,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: Get.height * .15,
            ),
            Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                height: Get.height * .77,
                width: Get.width,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Créer un compte",
                        style: TextStyle(
                          color: dark,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.only(left: 11.0, right: 11.0, bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 55,
                      width: Get.width * .85,
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
                                hintText: "email ",
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
                    Container(
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.only(left: 11.0, right: 11.0, bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 55,
                      width: Get.width * .85,
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
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            left: 11.0, right: 11.0, bottom: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 55,
                        width: Get.width,
                        child: DropdownButtonFormField<String>(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: darkSecond,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide.none),
                            focusedBorder: UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide.none),
                            hintText: ('Entreprise'),
                            hintStyle: TextStyle(color: white.withOpacity(.5)),
                            prefixIcon: Icon(LineIcons.userTie, color: white),
                          ),
                          icon: const Icon(LineIcons.chevronCircleDown,
                              color: redBlood),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: redBlood),
                          items: <String>[
                            'Recruteur',
                            'Recherche d\'emploie',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                    Container(
                      margin:
                          EdgeInsets.only(left: 11.0, right: 11.0, bottom: 10),
                      height: 55,
                      width: Get.width * .85,
                      decoration: BoxDecoration(
                        color: darkSecond,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 55,
                            width: Get.width * .5,
                            decoration: BoxDecoration(
                              border: Border.all(color: darkSecond, width: 2.5),
                              color: white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Genre :",
                                style: TextStyle(
                                    color: dark,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          new Text(
                            'F',
                            style: new TextStyle(
                              fontSize: 16.0,
                              color: white,
                            ),
                          ),
                          new Radio(
                            focusColor: white,
                            value: 1,
                            groupValue: _genre,
                            onChanged: (value) {},
                          ),
                          new Text(
                            'M',
                            style: new TextStyle(
                              fontSize: 16.0,
                              color: white,
                            ),
                          ),
                          new Radio(
                            activeColor: white,
                            value: 0,
                            groupValue: _genre,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          left: 11.0,
                          right: 11.0, /* bottom: 10*/
                        ),
                        //padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: redBlood,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        //padding: EdgeInsets.all(10),
                        height: 55,
                        width: Get.width * .85,
                        child: TextField(
                          controller:
                              dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: darkSecond,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide.none),
                            focusedBorder: UnderlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide.none),
                            prefixIcon: Icon(
                              LineIcons.calendar,
                              color: white,
                            ), //icon of text field
                            labelText: "Date de naissance",
                            labelStyle: TextStyle(color: white),
                            //label text of field
                          ),
                          readOnly:
                              true, //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      height: 50,
                      minWidth: Get.width * .7,
                      textColor: white,
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 25),
                      ),
                      splashColor: dark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.red),
                      ),
                      onPressed: () {
                        Get.toNamed('/home');
                        Get.offAll(Home());
                      },
                      color: redBlood,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Vous avez déjà un compte ?",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextButton(
                          onPressed: () {},
                          child: Text("Se connecter", style: TextStyle()),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
