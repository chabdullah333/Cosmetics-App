import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../Routes/app_pages.dart';

class SignInController extends GetxController {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void getUserData() async {
    bool isvalue = false;
    var collection = FirebaseFirestore.instance.collection('signup');
    var querySnapshot = await collection.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      Map<String, dynamic> data = queryDocumentSnapshot.data();
      if (emailController.text == data['email'] &&
          passwordController.text == data['password']) {
        isvalue = true;
        Get.toNamed(Routes.bottomNavigationBar);
        Fluttertoast.showToast(msg: " User Login Successfully");
        update();
      }
    }
    update();
    if (isvalue == false) {
      Fluttertoast.showToast(msg: " User Login Failed");
    }
  }
}
