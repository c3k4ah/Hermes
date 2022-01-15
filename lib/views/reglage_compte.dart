import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hermes/models/firebaseData.dart';
import 'package:path/path.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/services/authentification.dart';
import 'package:hermes/views/widget/color_picker.dart';
import 'package:line_icons/line_icons.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color currentColor = dark;
  File? file;
  UploadTask? task;
  int _genre = 0;

  TextEditingController dateinput = TextEditingController();

  String textChange = "Add file";
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    final nomDuFichier = file != null ? basename(file!.path) : 'Aucun fichier';
    return Scaffold(
      backgroundColor: dark,
      appBar: AppBar(
        backgroundColor: dark,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            LineIcons.angleLeft,
            color: redBlood,
          ),
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
                    LineIcons.folderPlus,
                    color: redBlood,
                  ),
                  title: Text(
                    "Ajouter un CV",
                    style: TextStyle(color: white),
                  ),
                  onTap: () async {
                    await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Center(
                              child: Text(
                                "Cirucilum Vitae",
                                style: TextStyle(fontSize: 20, color: redBlood),
                              ),
                            ),
                            backgroundColor: darkSecond,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            content: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      nomDuFichier,
                                      style:
                                          TextStyle(fontSize: 15, color: white),
                                    ),
                                  ),
                                  /**------------------------------ */
                                  MaterialButton(
                                    height: 50,
                                    minWidth: 150,
                                    textColor: white,
                                    child: Text(
                                      textChange,
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    splashColor: dark,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(color: Colors.red),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        file == null
                                            ? selectFile()
                                            : uploadFile();
                                        textChange = 'Save';
                                      });
                                    },
                                    color: redBlood,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                    //setState(() {});
                  }),
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
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 2,
                                          color: redBlood,
                                        )),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 10),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.0),
                                    //height: 55,
                                    width: Get.width * .82,
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
                                        hintText: ('Status'),
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
                                        'Étudiant',
                                        'Salarié',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    )),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 10),
                                  //height: 55,
                                  width: Get.width * .82,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 2,
                                        color: redBlood,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Text(
                                        'Femme',
                                        style: new TextStyle(
                                          fontSize: 16.0,
                                          color: white.withOpacity(.5),
                                        ),
                                      ),
                                      new Radio(
                                        focusColor: white,
                                        value: 1,
                                        groupValue: _genre,
                                        onChanged: (value) {},
                                      ),
                                      new Text(
                                        'Homme',
                                        style: new TextStyle(
                                          fontSize: 16.0,
                                          color: white.withOpacity(.5),
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
            SizedBox(
              child: ListTile(
                  leading: Icon(
                    LineIcons.alternateSignOut,
                    color: redBlood,
                  ),
                  title: Text(
                    "Se déconecter",
                    style: TextStyle(color: white),
                  ),
                  onTap: () {
                    seDeconnecter(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  seDeconnecter(BuildContext context) {
    Get.back();
    AuthentiFication().deconexion();
  }

  Future selectFile() async {
    final selected = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (selected == null) return;

    final path = selected.files.single.path!;

    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) return;

    final fileSelected = basename(file!.path);

    final cheminFireBase = 'fichiers/$fileSelected';

    FirebaseData.uploiding(cheminFireBase, file!);
  }
}
