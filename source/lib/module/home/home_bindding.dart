import 'package:get/get.dart';
import 'package:vdi_bank/module/home/home_controller.dart';

class HomeBindding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }

}