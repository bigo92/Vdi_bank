import 'package:vdi_bank/core/services/auth_service.dart';
import 'package:vdi_bank/core/services/connectivity_service.dart';
import 'package:vdi_bank/core/services/custom_dialog_service.dart';
import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    khoiTao();
  }

  Future<void> initServices() async {
    print('starting services ...');
    /// Here is where you put get_storage, hive, shared_pref initialization.
    /// or moor connection, or whatever that's async.
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => CustomDialogService().init());
    Get.put(ConnectivityService());
    print('All services started...');
  }

  void khoiTao() async {
    await initServices();
    await getLanguage();
  }

  Future<void> getLanguage() async {
    final getStore = GetStorage();
    String lang = await getStore.read('lang') ?? Get.deviceLocale.languageCode;
    LocalizationService.changeLocale(lang);
  }
}