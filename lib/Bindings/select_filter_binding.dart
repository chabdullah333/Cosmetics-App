import 'package:daxno_tech_app/Screens/Select%20Filter/Controller/select_filter_controller.dart';
import 'package:get/get.dart';

class SelectFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectFilterController());
  }
}
