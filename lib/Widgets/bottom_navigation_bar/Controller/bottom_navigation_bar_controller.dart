import 'package:daxno_tech_app/Screens/Profile/View/profile.dart';
import 'package:daxno_tech_app/Screens/Sign%20Up/View/sign_up.dart';
import 'package:daxno_tech_app/Screens/Wishlist/View/wishlist.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../Screens/Dashboard/View/dashboard.dart';

class BottomNavigationBarController extends GetxController {
  int currentindex = 0;
  final List<Widget> children = [
    const Dashboard(),
    const WishList(),
    const WishList(),
    const Profile(),

    //FIXME:before ServicesWidget(),
    // Archives(),
    //FIXME:before ChatWidget(),
    // Contact(),
  ];

  void onTabTapped(int index) {
    currentindex = index;
    update();
  }
}
