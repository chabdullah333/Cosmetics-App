import 'package:get/get.dart';

class WishListController extends GetxController {
  RxInt productCounter = 1.obs;
  var weightList = ["50ml", "100ml", "200ml"];
  int? currentIndex;

  void changeContainerColor(int index) {
    currentIndex = index;
    update();
  }
}
