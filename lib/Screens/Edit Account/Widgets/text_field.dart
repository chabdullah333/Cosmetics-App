import 'package:flutter/material.dart';

import '../../../Utils/colors.dart';

class TextFieldsEditProfile extends StatelessWidget {
  const TextFieldsEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(
        color: CustomColors.whiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.whiteColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColors.whiteColor),
        ),
        border: UnderlineInputBorder(),
      ),
    );
  }
}
