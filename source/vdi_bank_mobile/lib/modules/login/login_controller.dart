import 'package:get/get.dart';
import 'package:vdi_bank/routes/pages.dart';

class LoginController extends GetxController {
  var isVisibility = true.obs;
  var isSubmit = false.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  toggleIsVisibility() {
    isVisibility.value = !isVisibility.value;
  }

  onLogin() async {
    print('on login');
    isSubmit.value = true;
    await 1.delay();
    isSubmit.value = false;
    Get.toNamed(Routes.METHOD_OTP);
  }

  onSkip() async {
    Get.offAllNamed(Routes.HOME);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
