import 'package:get/get.dart';

class LoginController extends GetxController {
  var isVisibility = true.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  toggleIsVisibility() {
    isVisibility.value = !isVisibility.value;
  }

  @override
  void dispose() {
    super.dispose();
  }
}