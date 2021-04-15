import 'package:vdi_bank/modules/lock_screen/lock_screen_controller.dart';
import 'package:get/get.dart';

class LockScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LockScreenController>(() => LockScreenController());
  }
}