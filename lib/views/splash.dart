import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(color: dark),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/icon/hermès.png',
                  width: 200,
                  height: 200,
                )),
            SizedBox(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  redBlood,
                ),
              ),
              height: 25,
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
