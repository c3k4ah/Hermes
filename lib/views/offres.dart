import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';
import 'package:hermes/views/widget/cardListe.dart';

class OffrePage extends StatelessWidget {
  const OffrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: dark,
        height: Get.height,
        width: Get.width,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return CardGM();
          },
          itemCount: 5,
          scrollDirection: Axis.vertical,
        ),
      ),
    ));
  }
}
