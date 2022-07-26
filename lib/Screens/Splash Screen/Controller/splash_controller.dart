import 'dart:async';

import 'package:daxno_tech_app/Routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 5), (() => Get.offNamed(Routes.signIn)));
    // TODO: implement onInit
    super.onInit();
  }
}
