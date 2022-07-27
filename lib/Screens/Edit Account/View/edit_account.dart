import 'package:daxno_tech_app/Screens/Edit%20Account/Widgets/row_static_text.dart';
import 'package:daxno_tech_app/Screens/Edit%20Account/Widgets/text_field.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Widgets/App%20Bar/View/app_bar.dart';
import 'package:flutter/material.dart';
import '../../../Utils/style.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        appBarTitle: ConstantText.editAccountText,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: Style.backgroundImageBoxDecoration,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.067,
              right: MediaQuery.of(context).size.width * 0.067,
            ), //24,24
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                ),
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    child: ClipRect(
                      child: Image.asset(CustomImages.userProfileImage),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                ),
                Text(
                  ConstantText.userInformationText,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.056, //20
                    color: CustomColors.greenColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.063, //46
                ),
                //First name and Last name Text Row
                RowStaticText(
                  leftText: ConstantText.firstNameText,
                  rightText: ConstantText.lastNameText,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const TextFieldsEditProfile(),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const TextFieldsEditProfile(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.032,
                ),
                Text(
                  ConstantText.emailText,
                  style: Style.greenColorText.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.039,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const TextFieldsEditProfile(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.032, //23
                ),
                //Gender and Phone text Row
                RowStaticText(
                  leftText: ConstantText.genderText,
                  rightText: ConstantText.phoneText,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const TextFieldsEditProfile(),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const TextFieldsEditProfile(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.056, //41
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.068, //50
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.signInSignUpButtonBoxDecoration,
                  child: Center(
                    child: Text(
                      ConstantText.saveText,
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width * 0.050, //18
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
