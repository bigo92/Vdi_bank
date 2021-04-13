import 'package:get/get.dart';
import 'package:vdi_bank/route/page.dart';

class Tab1Controller extends GetxController {
  onLogin () {
    Get.offAllNamed(Routes.LOGIN);
  }
}