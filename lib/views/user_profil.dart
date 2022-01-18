import 'package:backdrop/backdrop.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import 'package:hermes/colors.dart';
import 'package:hermes/models/firebaseData.dart';
import 'package:hermes/views/widget/cardListe.dart';
import 'package:hermes/views/widget/pop_user_info.dart';

class UserInformation extends StatefulWidget {
  final User? user;

  const UserInformation({Key? key, this.user}) : super(key: key);
  //const UserInformation({Key? key}) : super(key: key);

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<User?>(context);
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/img/user.jpeg'),
                    ),
                    border: Border.all(
                      width: 5,
                      color: blueAccentDark,
                    ),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            if (_user!.displayName == null)
              (Container(
                child: Text("data", style: TextStyle(color: white)),
              ))
            else
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  _user.displayName!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23, color: white),
                ),
              ),
            Container(
              margin: EdgeInsets.all(7),
              height: 10,
              width: Get.width * .95,
              decoration: BoxDecoration(
                  color: redBlood.withOpacity(.15),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: Get.height,
              child: BackdropScaffold(
                frontLayerScrim: dark,
                backLayerBackgroundColor: dark,
                subHeaderAlwaysActive: false,
                frontLayerBorderRadius: BorderRadius.circular(0),
                backgroundColor: dark,
                appBar: BackdropAppBar(
                  leading: BackdropToggleButton(
                    icon: AnimatedIcons.list_view,
                    color: redBlood,
                  ),
                  backgroundColor: dark,
                  title: const Text(
                    "Plus d'informations",
                    style: TextStyle(color: white),
                  ),
                ),
                backLayer: Container(
                  //margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: dark,
                  ),
                  //alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        if (_user.email == null)
                          (Container(
                            child: Text("data", style: TextStyle(color: white)),
                          ))
                        else
                          ListTile(
                            leading: Icon(
                              LineIcons.envelope,
                              color: redBlood,
                            ),
                            title: Text(
                              _user.email!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        if (_user.phoneNumber == null)
                          (Container(
                            child: null,
                          ))
                        else
                          ListTile(
                            leading: Icon(
                              LineIcons.phone,
                              color: redBlood,
                            ),
                            title: Text(
                              "034 44 599 16",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ListTile(
                          leading: Icon(
                            LineIcons.campground,
                            color: redBlood,
                          ),
                          title: Text(
                            "Antananrive, Madagascar",
                            style: TextStyle(
                                fontSize: 20,
                                color: white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            LineIcons.male,
                            color: redBlood,
                          ),
                          title: Text(
                            "Masculin",
                            style: TextStyle(
                                fontSize: 20,
                                color: white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            LineIcons.addressCard,
                            color: redBlood,
                          ),
                          title: Text(
                            "Étudiant",
                            style: TextStyle(
                                fontSize: 20,
                                color: white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                barrierColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: darkSecond,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    content: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          MaterialButton(
                                            onPressed: () {},
                                            color: redBlood,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Download",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: white,
                                                  ),
                                                ),
                                                Icon(
                                                  LineIcons.download,
                                                  color: white,
                                                ),
                                              ],
                                            ),
                                          ),
                                          MaterialButton(
                                            onPressed: () async {
                                              final url =
                                                  'files/CV-DOMINICK.pdf';
                                              final file =
                                                  await FirebaseData.loading(
                                                      url);

                                              // ignore: unnecessary_null_comparison
                                              if (file == null) return;

                                              //openPDF(context, file);
                                            },
                                            color: redBlood,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Visualize",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: white,
                                                  ),
                                                ),
                                                Icon(
                                                  LineIcons.eye,
                                                  color: white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          leading: Icon(
                            LineIcons.folderOpen,
                            color: redBlood,
                          ),
                          title: Text(
                            "CV",
                            style: TextStyle(
                                fontSize: 20,
                                color: white,
                                fontWeight: FontWeight.w300),
                          ),
                          trailing: Icon(
                            LineIcons.angleRight,
                            color: redBlood,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                barrierColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return Projet();
                                });
                          },
                          leading: Icon(
                            LineIcons.hardHat,
                            color: redBlood,
                          ),
                          title: Text(
                            "Compte pour les projets",
                            style: TextStyle(
                                fontSize: 20,
                                color: white,
                                fontWeight: FontWeight.w300),
                          ),
                          trailing: Icon(
                            LineIcons.angleRight,
                            color: redBlood,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /*subHeader: const BackdropSubHeader(
                  title: Text("Sub Header"),
                ),*/
                frontLayer: Container(
                  color: dark,
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        height: 60,
                        color: dark,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              //height: 50,
                              width: Get.width * .8,
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
                                        hintText:
                                            "envoyer un message à dominick ...",
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
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: darkSecond.withOpacity(.3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        padding: EdgeInsets.all(7),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Publication récent",
                          //textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 23, color: white),
                        ),
                      ),
                      Container(
                        color: dark,
                        height: Get.height * .7,
                        width: Get.width * .95,
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return CardGM();
                          },
                          itemCount: 10,
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /*void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => PDFViewerPage(
                  file: file,
                )),
      );*/
}
