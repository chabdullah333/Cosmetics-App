import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: Style.backgroundImageBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(CustomImages.apothogyTextImage),
        ],
      ),
    );
  }
}
