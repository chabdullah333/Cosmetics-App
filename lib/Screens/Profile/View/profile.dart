import 'package:daxno_tech_app/Routes/app_pages.dart';
import 'package:daxno_tech_app/Screens/Profile/Widgets/row_profile_info.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:daxno_tech_app/Widgets/App%20Bar/View/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        appBarTitle: ConstantText.profileText,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: Style.backgroundImageBoxDecoration,
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.067,
              right: MediaQuery.of(context).size.width * 0.067), //24,24
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.061, //45
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.056), //20
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: ClipRect(
                      child: Image.asset(
                        CustomImages.userProfileImage,
                      ),
                    ),
                  ),
                  title: Text(
                    ConstantText.user12345Text,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.072,
                      color: CustomColors.greenColor,
                    ), //26
                  ),
                  subtitle: Text(
                    ConstantText.userEmailText,
                    style: Style.whiteColorText.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.050, //18
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030, //22
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.056,
                    right: MediaQuery.of(context).size.width * 0.056), //20,20
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.editAccount);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.059, //43
                    color: CustomColors.greenColor,
                    child: Center(
                      child: Text(
                        ConstantText.editAccountText,
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.044, //16
                          color: CustomColors.whiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.077, //57
              ),
              RowProfileInfo(
                icon: Icons.person_outline,
                text: ConstantText.mySlideShowText,
                iconColor: CustomColors.profileIconColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const Divider(
                color: CustomColors.dividerColor,
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.selectFilter);
                },
                child: RowProfileInfo(
                  icon: Icons.copy,
                  text: ConstantText.applySkinFilterText,
                  iconColor: CustomColors.profileIconColor,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const Divider(
                color: CustomColors.dividerColor,
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              RowProfileInfo(
                icon: Icons.settings,
                text: ConstantText.settingsText,
                iconColor: CustomColors.profileIconColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const Divider(
                color: CustomColors.dividerColor,
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.signIn);
                },
                child: RowProfileInfo(
                  icon: Icons.settings_power,
                  text: ConstantText.logoutText,
                  iconColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018, //13
              ),
              const Divider(
                color: CustomColors.dividerColor,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
