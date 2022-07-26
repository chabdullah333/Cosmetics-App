import 'package:flutter/material.dart';

import '../../../Utils/colors.dart';

class RowProfileInfo extends StatelessWidget {
  RowProfileInfo(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);
  IconData icon;
  String text;
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.019,
          right: MediaQuery.of(context).size.width * 0.022), //7,8
      child: Row(
        children: [
          Icon(
            icon,
            color: CustomColors.greenColor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.033, //12
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.050, //18
                color: CustomColors.whiteColor,
                fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: iconColor,
          ),
        ],
      ),
    );
  }
}
