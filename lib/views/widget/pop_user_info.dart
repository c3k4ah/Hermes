import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hermes/colors.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
      child: AlertDialog(
        backgroundColor: dark,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          child: Text("data"),
        ),
      ),
    );
  }
}
