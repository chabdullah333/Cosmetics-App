import 'package:daxno_tech_app/Routes/app_pages.dart';
import 'package:daxno_tech_app/Screens/Sign%20In/Controller/sign_in_controller.dart';
import 'package:daxno_tech_app/Screens/Sign%20Up/Model/sign_up_model.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Utils/custom_textField.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../Utils/style.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return Form(
            key: controller.formkey,
            child: Scaffold(
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: Style.backgroundImageBoxDecoration,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.100,
                      right: MediaQuery.of(context).size.width * 0.100), //36,36
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.048, //35
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.381, //282
                          width: MediaQuery.of(context).size.width,
                          decoration: Style.apothogyTextImageBoxDecoration,
                        ),
                        Center(
                          child: Text(
                            ConstantText.yourSkinJourneyStartHereText,
                            style: TextStyle(
                                color: CustomColors.whiteColor,
                                fontSize: MediaQuery.of(context).size.width *
                                    0.056), //20
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.043, //32
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.060, //44
                          width: MediaQuery.of(context).size.width,
                          decoration: Style.textFieldContainerBoxDecoration,
                          child: CustomTextField(
                            hintText: ConstantText.emailText,
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (!GetUtils.isEmail(value!)) {
                                return "Please enter valid email or phone";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.009, //6
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.060,
                          width: MediaQuery.of(context).size.width,
                          decoration: Style.textFieldContainerBoxDecoration,
                          child: CustomTextField(
                            hintText: ConstantText.passwordText,
                            controller: controller.passwordController,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.length < 8) {
                                return 'Enter at least 8 characters';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.022, //16
                        ),
                        InkWell(
                          onTap: () {
                            controller.getUserData();
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.060,
                            width: MediaQuery.of(context).size.width,
                            decoration: Style.signInSignUpButtonBoxDecoration,
                            child: Center(
                              child: Text(
                                ConstantText.signInText,
                                style: TextStyle(
                                  color: CustomColors.whiteColor,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.050,
                                ), //18
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.019, //14
                        ),
                        Text(
                          ConstantText.forgotPasswordText,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: CustomColors.blueColor,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.039, //14
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.034, //25
                        ),
                        SocialButtons(
                          buttonText: ConstantText.signInWithGoogleText,
                          imagePath: CustomImages.googleLogoImage,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.009, //6
                        ),
                        SocialButtons(
                          buttonText: ConstantText.signInWithFacebookText,
                          imagePath: CustomImages.facebookLogoImage,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.016, //25
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Get.toNamed(Routes.signUp);
                            },
                            child: Text.rich(
                              TextSpan(
                                text: ConstantText.dontHaveAnAccountText,
                                style: Style.whiteColorText.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.039,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: ConstantText.signUpText,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.039,
                                      color: CustomColors.blueColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
