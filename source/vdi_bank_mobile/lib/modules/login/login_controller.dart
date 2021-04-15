import 'package:get/get.dart';

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
    await 2.delay();
    isSubmit.value = false;
  }

  @override
  void dispose() {
    super.dispose();
  }
}