import 'package:vdi_bank/modules/to_account_number/to_account_number_controller.dart';
import 'package:get/get.dart';

class ToAccountNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToAccountNumberController>(() => ToAccountNumberController());
  }
}