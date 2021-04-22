import 'package:vdi_bank/core/services/auth_service.dart';
import 'package:vdi_bank/core/services/local_storage_service.dart';
import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vdi_bank/routes/pages.dart';

class SplashController extends GetxController {

  @override
  void onInit() async {
    super.onInit();
    khoiTao();
  }

  //Future<void> initServices() async {
   // print('starting services ...');
    /// Here is where you put get_storage, hive, shared_pref initialization.
    /// or moor connection, or whatever that's async.
    // await Get.putAsync(() => AuthService().init());
    // await Get.putAsync(() => CustomDialogService().init());
    // Get.put(ConnectivityService());
    //print('All services started...');
  //}

  Future<void> khoiTao() async {
    await getLanguage();
    Future.delayed(Duration(milliseconds: 10000), () async {
      final authService = Get.find<AuthService>();
      final checkLogin = await authService.checkLogin();
      checkLogin? Get.offAllNamed(Routes.HOME): Get.offAllNamed(Routes.LOGIN);
    });
  }

  Future<void> getLanguage() async {
    final localStorage = Get.find<LocalStorageService>().getStorage();
    String lang = await localStorage.read('lang') ?? Get.deviceLocale.languageCode;
    LocalizationService.changeLocale(lang);
  }
}