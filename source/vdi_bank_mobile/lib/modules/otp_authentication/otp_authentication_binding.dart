import 'package:vdi_bank/modules/otp_authentication/otp_authentication_controller.dart';
import 'package:get/get.dart';

class OtpAuthenticationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpAuthenticationController>(() => OtpAuthenticationController());
  }
}