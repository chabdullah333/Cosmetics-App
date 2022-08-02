import 'package:daxno_tech_app/Screens/Sign%20Up/Controller/sign_up_controller.dart';
import 'package:daxno_tech_app/Screens/Sign%20Up/Model/sign_up_model.dart';
import 'package:daxno_tech_app/Utils/custom_textField.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/social_login_buttons.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';
import '../../../Utils/colors.dart';
import '../../../Utils/constant_text.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
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
                    right: MediaQuery.of(context).size.width * 0.100,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height *
                              0.341, //282,0.381
                          width: MediaQuery.of(context).size.width,
                          decoration: Style.apothogyTextImageBoxDecoration,
                        ),
                        Center(
                          child: Text(
                            ConstantText.yourSkinJourneyStartHereText,
                            style: Style.whiteColorText.copyWith(
                              fontSize: MediaQuery.of(context).size.width *
                                  0.056, //20
                            ),
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
                            controller: controller.userNameController,
                            hintText: ConstantText.usernameText,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your username";
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
                          height:
                              MediaQuery.of(context).size.height * 0.060, //44
                          width: MediaQuery.of(context).size.width,
                          decoration: Style.textFieldContainerBoxDecoration,
                          child: CustomTextField(
                            hintText: ConstantText.numberText,
                            controller: controller.phoneNumberController,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (!GetUtils.isNum(value!)) {
                                return "Please enter only phone Number";
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
                          height:
                              MediaQuery.of(context).size.height * 0.060, //44
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
                              MediaQuery.of(context).size.height * 0.009, //6
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.060, //44
                          width: MediaQuery.of(context).size.width,
                          decoration: Style.textFieldContainerBoxDecoration,
                          child: CustomTextField(
                            hintText: ConstantText.confirmPasswordText,
                            controller: controller.confirmPasswordController,
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
                              MediaQuery.of(context).size.height * 0.021, //15
                        ),
                        MaterialButton(
                          onPressed: () {
                            if (controller.formkey.currentState!.validate()) {
                              if (controller.emailList
                                  .contains(controller.emailController.text)) {
                                Fluttertoast.showToast(
                                    msg: "Email Already Exist");
                              } else {
                                final user = SignupSigninModel(
                                  username: controller.userNameController.text,
                                  email: controller.emailController.text,
                                  number: controller.phoneNumberController.text,
                                  password: controller.passwordController.text,
                                );
                                controller.createUser(user);
                                Get.toNamed(Routes.signIn);
                                Fluttertoast.showToast(
                                  msg: "SignUp Successful! Please login now",
                                );
                              }
                            } else {
                              Fluttertoast.showToast(
                                msg: "Please Enter Valid Credentials",
                              );
                            }
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.060,
                            width: MediaQuery.of(context).size.width,
                            decoration: Style.signInSignUpButtonBoxDecoration,
                            child: Center(
                              child: Text(
                                ConstantText.signUpText,
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
                              MediaQuery.of(context).size.height * 0.021, //15
                        ),
                        SocialButtons(
                          buttonText: ConstantText.signUpWithGoogleText,
                          imagePath: CustomImages.googleLogoImage,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.009, //6
                        ),
                        SocialButtons(
                          buttonText: ConstantText.signUpWithFacebookText,
                          imagePath: CustomImages.facebookLogoImage,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.016, //25
                        ),
                        MaterialButton(
                          onPressed: () {
                            Get.toNamed(Routes.signIn);
                          },
                          child: Text.rich(
                            TextSpan(
                              text: ConstantText.alreadyHaveAnAccountText,
                              style: Style.whiteColorText.copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.039,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ConstantText.signInText,
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
