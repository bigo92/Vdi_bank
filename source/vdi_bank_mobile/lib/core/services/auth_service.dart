import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vdi_bank/core/services/local_storage_service.dart';

class AuthService extends GetxService {
  String token = '';

  Future<bool> checkLogin() async {
    final getStore = Get.find<LocalStorageService>().getStorage();
    token = await getStore.read('token') ?? '';
    if(token.isEmpty){
      return false;
    } else {
      return true;
    }
  }

  void login(String token) {
    final getStore = Get.find<LocalStorageService>().getStorage();
    this.token = token;
    getStore.write('token', token);
  }

  void logout() {
    final getStore = Get.find<LocalStorageService>().getStorage();
    this.token = '';
    getStore.remove('token');
  }


  @override
  void onInit() {
    super.onInit();
  }
}
