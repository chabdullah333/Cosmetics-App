import 'package:flutter/material.dart';
import 'colors.dart';

class Style {
  static BoxDecoration textFieldContainerBoxDecoration = BoxDecoration(
    color: CustomColors.whiteColor,
    borderRadius: BorderRadius.circular(18),
  );
  static BoxDecoration backgroundImageBoxDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("Assets/Images/backgroundImage.png"),
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
  static TextStyle greenColorText =
      TextStyle(color: CustomColors.greenColor, fontSize: 14);
}
