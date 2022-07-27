import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.hintText}) : super(key: key);
  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: textFieldController,
      style: TextStyle(
        // fontFamily: 'OpenSansSemiBold',
        color: CustomColors.blackColor,
        fontSize: MediaQuery.of(context).size.width * 0.039,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: validator,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(
            color: CustomColors.textFieldHintTextColor,
            fontSize: MediaQuery.of(context).size.width * 0.039),
        contentPadding: EdgeInsets.only(
          // top: 10,
          bottom: 4,
          left: MediaQuery.of(context).size.width * 0.033,
        ), //left 27,0.075
      ),
    );
  }
}
