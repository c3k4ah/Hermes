import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/favoris.dart';
import 'package:hermes/views/offres.dart';
import 'package:hermes/views/user_profil.dart';
import 'package:hermes/views/widget/cardListe.dart';
import 'package:hermes/views/widget/navBar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int _selectedIndex = 0;
final _pageActuel = [
  PageAcceuil(),
  FavorisPage(),
  OffrePage(),
  UserInformation()
];

class _HomeState extends State<Home> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final _user = Provider.of<User?>(context);
    return Scaffold(
      backgroundColor: dark,
      appBar: Appbar(user: _user),
      body: _pageActuel[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: dark,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 5,
              activeColor: white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: redBlood,
              color: redBlood,
              /*tabActiveBorder:
                Border.all(color: redBlood, width: 3), */
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Favoris',
                ),
                GButton(
                  icon: LineIcons.briefcase,
                  text: 'Offres',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  onPressed: () {},
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class PageAcceuil extends StatelessWidget {
  const PageAcceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .015,
            ),

            //SizedBox(height: Get.height * .025),
            /**bar de rechercher */
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
                        hintText: "Recherche",
                        hintStyle: TextStyle(
                          color: redBlood,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /**favoris */
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 35,
              decoration: BoxDecoration(
                  color: redBlood.withOpacity(.1),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ajouter une publication",
                    style: TextStyle(color: white, fontSize: 17),
                  ),
                  IconButton(
                    icon: Icon(
                      LineIcons.plusSquare,
                      color: white,
                      size: 25,
                    ),
                    onPressed: () {
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

                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      //height: 50,
                                      width: Get.width * .82,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                                hintText: " Titre",
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
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      //height: 50,
                                      width: Get.width * .82,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                              style: TextStyle(
                                                color: white,
                                              ),
                                              decoration: InputDecoration(
                                                hintText: "Description",
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
                                    SizedBox(
                                      height: 15,
                                    ),

                                    /**------------------------------ */
                                    MaterialButton(
                                      height: 50,
                                      minWidth: 150,
                                      textColor: white,
                                      child: Text(
                                        "Save",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      splashColor: dark,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
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
                ],
              ),
            ),
            /**liste offre */
            SizedBox(
              height: Get.height * .005,
            ),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 3),
              height: 120,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CardPM();
                  }),
            ),
            /**publcation */
            Container(
              margin: EdgeInsets.all(10),
              height: 10,
              decoration: BoxDecoration(
                  color: redBlood.withOpacity(.1),
                  borderRadius: BorderRadius.circular(50)),
            ),
            Container(
              //color: white,
              width: Get.width,
              height: Get.height,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return CardGM();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
