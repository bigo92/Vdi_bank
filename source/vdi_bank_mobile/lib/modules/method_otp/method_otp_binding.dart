import 'package:vdi_bank/modules/method_otp/method_otp_controller.dart';
import 'package:get/get.dart';

class MethodOtpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MethodOtpController>(() => MethodOtpController());
  }
}
