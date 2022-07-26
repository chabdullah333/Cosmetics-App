import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Widgets/bottom_navigation_bar/Controller/bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Screens/Dashboard/View/dashboard.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarController>(
        init: BottomNavigationBarController(),
        builder: (controller) {
          return Scaffold(
            extendBody: true,
            body: controller.children[controller.currentindex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.onTabTapped,
              showUnselectedLabels: true,
              currentIndex: controller.currentindex,
              backgroundColor: Colors.blue,
              selectedItemColor: CustomColors.selectedItemsColor,
              unselectedItemColor: CustomColors.bottomNavBarItemsColor,
              selectedLabelStyle:
                  const TextStyle(color: CustomColors.selectedItemsColor),
              unselectedLabelStyle:
                  const TextStyle(color: CustomColors.whiteColor),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                    backgroundColor: CustomColors.blackColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    label: "Explore",
                    backgroundColor: CustomColors.blackColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.heart_broken),
                    label: "Wishlist",
                    backgroundColor: CustomColors.blackColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                    backgroundColor: CustomColors.blackColor),
              ],
            ),
          );
        });
  }
}
