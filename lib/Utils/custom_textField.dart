import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.validator,
  }) : super(key: key);
  String hintText;
  TextEditingController controller;
  TextInputType keyboardType;
  String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
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
