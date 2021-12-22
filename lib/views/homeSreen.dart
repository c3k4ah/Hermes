import 'package:flutter/material.dart';
import 'package:hermes/views/widget/navBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: Navbar(),
    );
  }
}
