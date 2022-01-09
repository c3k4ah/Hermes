import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes/services/authentification.dart';
import 'package:hermes/views/transition.dart';
import 'package:provider/provider.dart';

import 'package:hermes/views/chat.dart';
import 'package:hermes/views/chat_room.dart';
import 'package:hermes/views/connexion.dart';
import 'package:hermes/views/favoris.dart';
import 'package:hermes/views/homeSreen.dart';
import 'package:hermes/views/inscription.dart';
import 'package:hermes/views/notification.dart';
import 'package:hermes/views/reglage_compte.dart';
import 'package:hermes/views/splash.dart';
import 'package:hermes/views/user_profil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        StreamProvider.value(value: AuthentiFication().user, initialData: null)
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed('/transition');
    });
    return GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/connect': (context) => ConnectPage(),
          '/inscript': (context) => InscriptPage(),
          '/notif': (context) => NotifIcation(),
          '/home': (context) => Home(),
          '/chat': (context) => Chat(),
          '/chatRoom': (context) => CHatRoom(),
          '/UserProfil': (context) => UserInformation(),
          '/favoris': (context) => FavorisPage(),
          '/setting': (context) => Settings(),
          '/transition': (context) => Transit()
        });
  }
}
