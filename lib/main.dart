import 'package:daxno_tech_app/Bindings/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Routes/app_pages.dart';

void main() {
  SplashBinding().dependencies();
  runApp(GetMaterialApp(
    initialRoute: AppPages.initial,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
  ));
}
