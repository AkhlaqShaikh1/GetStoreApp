import 'package:get/get.dart';
import 'package:getx_store_app/controllers/store_contollers.dart';

class StoreBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController());
  }
}
