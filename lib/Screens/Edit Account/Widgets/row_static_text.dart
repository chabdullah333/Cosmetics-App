import 'package:flutter/material.dart';

import '../../../Utils/style.dart';

class RowStaticText extends StatelessWidget {
  RowStaticText({Key? key, required this.leftText, required this.rightText})
      : super(key: key);
  String leftText;
  String rightText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              leftText,
              style: Style.greenColorText.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.039,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              rightText,
              style: Style.greenColorText.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.039,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
