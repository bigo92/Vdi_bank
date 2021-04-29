import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:get/get.dart';

class ToAccountNumberController extends GetxController {
  final isSchedule = false.obs;
  var controller = new MoneyMaskedTextController(thousandSeparator: ' ',decimalSeparator: '', precision: 0);

  @override
  void onInit() async {
    super.onInit();
  }

  toggleSchedule(value) {
    isSchedule.value = value;
  }

  @override
  void dispose() {
    super.dispose();
  }

  close(){
    if (Navigator.canPop(Get.context)) {
      Navigator.pop(Get.context);
    } else {
      SystemNavigator.pop();
    }
  }
}
