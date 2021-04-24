import 'package:get/get.dart';
import 'package:vdi_bank/routes/pages.dart';

class TabMainController extends GetxController {
  goToAccountNumber() {
    Get.toNamed(Routes.TO_ACCOUNT_NUMBER);
  }
}