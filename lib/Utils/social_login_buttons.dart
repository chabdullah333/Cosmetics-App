import 'package:flutter/material.dart';
import 'colors.dart';

class SocialButtons extends StatelessWidget {
  SocialButtons({Key? key, required this.buttonText, required this.imagePath})
      : super(key: key);
  String buttonText;
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.060,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: CustomColors.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.042,
          ),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.042,
            ),
          ),
        ],
      ),
    );
  }
}
