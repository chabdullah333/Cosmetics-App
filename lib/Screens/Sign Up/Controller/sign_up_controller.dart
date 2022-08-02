import 'package:daxno_tech_app/Screens/Sign%20Up/Model/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpController extends GetxController {
  final formkey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future createUser(SignupSigninModel user) async {
    final docUser = FirebaseFirestore.instance.collection('signup').doc();
    user.id = docUser.id;
    final json = user.toJson();
    await docUser.set(json);
  }

  var emailList = [];
  bool isvalue = true;
  void getUserData() async {
    var collection = FirebaseFirestore.instance.collection('signup');
    var querySnapshot = await collection.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      Map<String, dynamic> data = queryDocumentSnapshot.data();
      emailList.add(data["email"]);

      if (emailController.text == data['email']) {
        isvalue = false;
        update();
      }
    }
    print(emailList);
    update();
  }

  @override
  void onInit() {
    getUserData();
    // TODO: implement onInit
    super.onInit();
  }
}
