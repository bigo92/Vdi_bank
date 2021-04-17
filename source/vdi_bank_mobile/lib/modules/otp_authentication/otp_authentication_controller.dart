import 'package:get/get.dart';
import 'package:vdi_bank/core/services/custom_dialog_service.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';
import 'package:vdi_bank/routes/pages.dart';

class OtpAuthenticationController extends GetxController {
  final otpTypeValue = ''.obs;
  @override
  void onInit() async {
    otpTypeValue.value = Get.arguments;
    super.onInit();
  }

  onAuthenticationOtp(String otpCode) async {
    DialogService.onShowLoading(true);
    await 2.delay();
    DialogService.onShowLoading(false);
    Get.offAllNamed(Routes.HOME);
  }

  @override
  void dispose() {
    super.dispose();
  }
}