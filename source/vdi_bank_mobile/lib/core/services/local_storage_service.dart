import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageService extends GetxService {

  @override
  void onInit() async {
    super.onInit();
    GetStorage.init();
  }

  GetStorage getStorage(){
    return GetStorage();
  }
}