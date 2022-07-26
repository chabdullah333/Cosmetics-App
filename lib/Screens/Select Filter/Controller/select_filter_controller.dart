import 'package:get/get.dart';

class SelectFilterController extends GetxController {
  var filters = ["Ten Suns", "Lazarus", "Renew", "Ra-ISE", "Resurrect"];
  int? currentIndex;

  void changeFilterColor(int index) {
    currentIndex = index;
    update();
  }
}
