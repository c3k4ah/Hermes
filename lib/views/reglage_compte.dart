import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/color_picker.dart';
import 'package:hermes/views/widget/navBar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color currentColor = dark;

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      appBar: Appbar(),
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
                  leading: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Icon(Icons.color_lens, color: Colors.white),
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
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.color_lens, color: Colors.white),
                ),
                title: Text(
                  "Modifier vos informations",
                  style: TextStyle(color: white),
                ),
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.color_lens, color: Colors.white),
                ),
                title: Text(
                  "Modifier vos identifiant",
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
