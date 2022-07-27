import 'package:daxno_tech_app/Screens/Order%20Previews/Controller/order_previews_controller.dart';
import 'package:get/get.dart';

class OrderPreviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderPreviewsController());
  }
}
