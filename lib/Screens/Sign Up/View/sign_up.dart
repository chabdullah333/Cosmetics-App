import 'package:daxno_tech_app/Utils/custom_textField.dart';
import 'package:daxno_tech_app/Utils/social_login_buttons.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';
import '../../../Utils/colors.dart';
import '../../../Utils/constant_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: Style.backgroundImageBoxDecoration,
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.100,
            right: MediaQuery.of(context).size.width * 0.100,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height:
                      MediaQuery.of(context).size.height * 0.341, //282,0.381
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.apothogyTextImageBoxDecoration,
                ),
                Center(
                  child: Text(
                    ConstantText.yourSkinJourneyStartHereText,
                    style: TextStyle(
                      color: CustomColors.whiteColor,
                      fontSize: MediaQuery.of(context).size.width * 0.056,
                    ), //20
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.043, //32
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.textFieldContainerBoxDecoration,
                  child: CustomTextField(
                    hintText: ConstantText.usernameText,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //6
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.textFieldContainerBoxDecoration,
                  child: CustomTextField(
                    hintText: ConstantText.emailText,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //6
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.textFieldContainerBoxDecoration,
                  child: CustomTextField(
                    hintText: ConstantText.numberText,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //6
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.textFieldContainerBoxDecoration,
                  child: CustomTextField(
                    hintText: ConstantText.passwordText,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //6
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.060, //44
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.textFieldContainerBoxDecoration,
                  child: CustomTextField(
                    hintText: ConstantText.confirmPasswordText,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.021, //15
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.060,
                  width: MediaQuery.of(context).size.width,
                  decoration: Style.signInSignUpButtonBoxDecoration,
                  child: Center(
                    child: Text(
                      ConstantText.signUpText,
                      style: TextStyle(
                        color: CustomColors.whiteColor,
                        fontSize: MediaQuery.of(context).size.width * 0.050,
                      ), //18
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.021, //15
                ),
                SocialButtons(
                  buttonText: ConstantText.signUpWithGoogleText,
                  imagePath: "Assets/Images/googleLogo.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //6
                ),
                SocialButtons(
                  buttonText: ConstantText.signUpWithFacebookText,
                  imagePath: "Assets/Images/facebookLogo.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.016, //25
                ),
                MaterialButton(
                  onPressed: () {
                    Get.toNamed(Routes.signIn);
                  },
                  child: Text.rich(
                    TextSpan(
                      text: ConstantText.alreadyHaveAnAccountText,
                      style: TextStyle(
                        color: CustomColors.whiteColor,
                        fontSize: MediaQuery.of(context).size.width * 0.039,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: ConstantText.signInText,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.039,
                              color: CustomColors.blueColor),
                        )
                      ],
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
