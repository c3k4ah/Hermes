import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/color_picker.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color currentColor = dark;

  int _genre = 0;

  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      appBar: AppBar(
        backgroundColor: dark,
        elevation: 0,
        leading: Icon(
          LineIcons.angleLeft,
          color: redBlood,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Settings",
                style: TextStyle(
                  color: white,
                  fontSize: 27,
                )),
            Divider(),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: darkSecond,
                        title: Text(
                          "Choisir une couleur",
                          style: TextStyle(color: white),
                        ),
                        content: SingleChildScrollView(
                            child: BlockPicker(
                                pickerColor: currentColor,
                                onColorChanged: changeColor)),
                      );
                    });
              },
              child: SizedBox(
                child: ListTile(
                  leading: Icon(
                    LineIcons.palette,
                    color: redBlood,
                  ),
                  title: Text(
                    "Personalisez vos couleurs",
                    style: TextStyle(color: white),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: Icon(
                  LineIcons.edit,
                  color: redBlood,
                ),
                title: Text(
                  "Modifier vos informations",
                  style: TextStyle(color: white),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: darkSecond,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          content: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  //height: 50,
                                  width: Get.width * .82,
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
                                            hintText: " votre nom",
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
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  //height: 50,
                                  width: Get.width * .82,
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
                                            hintText: "votre adresse mail",
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
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  //height: 50,
                                  width: Get.width * .82,
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
                                            hintText: "votre numéro",
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
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  //height: 50,
                                  width: Get.width * .82,
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
                                            hintText: "votre localisation",
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
                                Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                        left: 11.0, right: 11.0, bottom: 10),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    height: 55,
                                    width: Get.width,
                                    child: DropdownButtonFormField<String>(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: darkSecond,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(90.0)),
                                            borderSide: BorderSide.none),
                                        focusedBorder: UnderlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(90.0)),
                                            borderSide: BorderSide.none),
                                        hintText: ('Entreprise'),
                                        hintStyle: TextStyle(
                                            color: white.withOpacity(.5)),
                                        prefixIcon: Icon(LineIcons.userTie,
                                            color: white),
                                      ),
                                      icon: const Icon(
                                          LineIcons.chevronCircleDown,
                                          color: redBlood),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: redBlood),
                                      items: <String>[
                                        'Recruteur',
                                        'Recherche d\'emploie',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 11.0, right: 11.0, bottom: 10),
                                  height: 55,
                                  width: Get.width * .85,
                                  decoration: BoxDecoration(
                                    color: darkSecond,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: 55,
                                        width: Get.width * .5,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: darkSecond, width: 2.5),
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(90.0)),
                                            borderSide: BorderSide.none),
                                        focusedBorder: UnderlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(90.0)),
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
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(
                                                    2000), //DateTime.now() - not to allow to choose before today.
                                                lastDate: DateTime(2101));

                                        if (pickedDate != null) {
                                          print(
                                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                          String formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(pickedDate);
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
                                /**------------------------------ */
                                MaterialButton(
                                  height: 50,
                                  minWidth: Get.width * .7,
                                  textColor: white,
                                  child: Text(
                                    "Save",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  splashColor: dark,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.red),
                                  ),
                                  onPressed: () {},
                                  color: redBlood,
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: Icon(
                  LineIcons.userCircle,
                  color: redBlood,
                ),
                title: Text(
                  "Modifier vos identifiant",
                  style: TextStyle(color: white),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: darkSecond,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          content: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  //height: 50,
                                  width: Get.width * .82,
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
                                            hintText: " adresse mail",
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
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  //height: 50,
                                  width: Get.width * .82,
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
                                            hintText: "mot de passe",
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

                                /**------------------------------ */
                                MaterialButton(
                                  height: 50,
                                  minWidth: Get.width * .7,
                                  textColor: white,
                                  child: Text(
                                    "Save",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  splashColor: dark,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.red),
                                  ),
                                  onPressed: () {},
                                  color: redBlood,
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: Icon(
                  LineIcons.trash,
                  color: redBlood,
                ),
                title: Text(
                  "Suprimer votre compte",
                  style: TextStyle(color: white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
