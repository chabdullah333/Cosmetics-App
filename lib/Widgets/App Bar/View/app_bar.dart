import 'package:flutter/material.dart';
import '../../../Utils/colors.dart';

class RepeatedAppBar extends StatelessWidget with PreferredSizeWidget {
  RepeatedAppBar({Key? key, required this.appBarTitle}) : super(key: key);
  String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: const TextStyle(
          color: CustomColors.blackColor,
        ),
      ),
      centerTitle: true,
      backgroundColor: CustomColors.greenColor,
      iconTheme: const IconThemeData(
        color: CustomColors.blackColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
