import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/cardListe.dart';
import 'package:hermes/views/widget/navBar.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: dark,
      appBar: Appbar(),
      body: Container(
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * .03,
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
                      "Offres récent",
                      style: TextStyle(color: white, fontSize: 17),
                    ),
                    IconButton(
                      icon: Icon(
                        LineIcons.list,
                        color: white,
                        size: 25,
                      ),
                      onPressed: () {
                        // Get.toNamed('/connect');
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
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
