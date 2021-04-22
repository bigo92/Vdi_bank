import 'package:vdi_bank/core/services/auth_service.dart';
import 'package:vdi_bank/core/services/connectivity_service.dart';
import 'package:vdi_bank/core/services/custom_dialog_service.dart';
import 'package:vdi_bank/modules/splash/splash_controller.dart';
import 'package:get/get.dart';


class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
    Get.lazyPut<AuthService>(() => AuthService());
    Get.lazyPut<CustomDialogService>(() => CustomDialogService());
    Get.lazyPut<ConnectivityService>(() => ConnectivityService());
  }
}