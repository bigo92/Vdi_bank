import 'package:get/get.dart';
import 'package:vdi_bank/routes/pages.dart';

class MethodOtpController extends GetxController {
  Rx<MethodReceiveOtp> methodReceiveOtp = MethodReceiveOtp.sms.obs;
  final otpObject = {
    MethodReceiveOtp.sms: '012356789',
    MethodReceiveOtp.email: 'example@email.com',
    MethodReceiveOtp.smartOtp: 'Chưa kích hoạt'
  }.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  onChangeMethodReceiveOtp(MethodReceiveOtp value) {
    methodReceiveOtp.value = value;
  }

  onAccept() {
    String param = otpObject.value[methodReceiveOtp];
    Get.toNamed(Routes.OTP_AUTHENTICATION, arguments: param);
  }

  @override
  void dispose() {
    super.dispose();
  }
}

enum MethodReceiveOtp { sms, email, smartOtp }
