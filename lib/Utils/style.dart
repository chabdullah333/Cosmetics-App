import 'package:daxno_tech_app/Utils/images.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Style {
  static BoxDecoration textFieldContainerBoxDecoration = BoxDecoration(
    color: CustomColors.whiteColor,
    borderRadius: BorderRadius.circular(18),
  );
  static BoxDecoration backgroundImageBoxDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage(CustomImages.backgroundImage),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration apothogyTextImageBoxDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("Assets/Images/apothogy-text.png"),
    ),
  );
  static BoxDecoration signInSignUpButtonBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: CustomColors.greenColor,
  );
  static BoxDecoration minusCounterBoxDecoration = BoxDecoration(
    border: Border.all(
      color: CustomColors.doveTextColor,
    ),
    borderRadius: BorderRadius.circular(6),
  );
  static TextStyle greenColorText =
      TextStyle(color: CustomColors.greenColor, fontSize: 14);
  static TextStyle whiteColorText =
      TextStyle(color: CustomColors.whiteColor, fontSize: 14);
}
