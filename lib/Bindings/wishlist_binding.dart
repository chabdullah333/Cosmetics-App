import 'package:daxno_tech_app/Screens/Wishlist/Controller/wishlist_controller.dart';
import 'package:get/get.dart';

class WishListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishListController());
  }
}
