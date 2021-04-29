import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/routes/pages.dart';

class TabTransferController extends GetxController {
  final isSchedule = false.obs;
  var controller = new MoneyMaskedTextController(thousandSeparator: ' ',decimalSeparator: '', precision: 0);

  @override
  void onInit() async {
    super.onInit();
  }

  toggleSchedule(value) {
    isSchedule.value = value;
  }

  goToAccountNumber() {
    Get.toNamed(Routes.TO_ACCOUNT_NUMBER);
  }

  @override
  void dispose() {
    super.dispose();
  }
}