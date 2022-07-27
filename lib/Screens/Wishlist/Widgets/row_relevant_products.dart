import 'package:daxno_tech_app/Utils/images.dart';
import 'package:flutter/material.dart';

class RowRelevantProducts extends StatelessWidget {
  const RowRelevantProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(CustomImages.cosmeticGreenBottleImage),
        SizedBox(width: MediaQuery.of(context).size.width * 0.051),
        Image.asset(CustomImages.cosmeticPinkBottleImage),
        SizedBox(width: MediaQuery.of(context).size.width * 0.028),
        Image.asset(CustomImages.cosmeticBlueBottleImage),
        SizedBox(width: MediaQuery.of(context).size.width * 0.028),
        Image.asset(CustomImages.cosmeticYellowBottleImage),
      ],
    );
  }
}
