import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hermes/views/connexion.dart';
import 'package:hermes/views/homeSreen.dart';
import 'package:provider/provider.dart';

class Transit extends StatelessWidget {
  const Transit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<User?>(context);

    return _user == null ? ConnectPage() : Home();
  }
}
