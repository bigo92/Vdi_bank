import 'package:vdi_bank/routes/pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetxService {
  String token = '';

  Future<AuthService> init() async {
    final getStore = GetStorage();
    token = await getStore.read('token') ?? '';
    return this;
  }

  void login(String token) {
    final getStore = GetStorage();
    this.token = token;
    getStore.write('token', token);
  }

  void logout() {
    final getStore = GetStorage();
    this.token = '';
    getStore.remove('token');
  }


  @override
  void onInit() {
    super.onInit();

    if(token.isEmpty){
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
