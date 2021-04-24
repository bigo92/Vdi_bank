import 'package:get/get.dart';

class ToAccountNumberController extends GetxController {
  final isSchedule = false.obs;
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
}