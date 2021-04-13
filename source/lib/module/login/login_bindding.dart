import 'package:get/get.dart';
import 'package:vdi_bank/module/home/home_controller.dart';

import 'login_controller.dart';

class LoginBindding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }

}