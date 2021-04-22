import 'package:vdi_bank/modules/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_main/tab_main_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_setting/tab_setting_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<TabMainController>(() => TabMainController());
    Get.lazyPut<TabSettingController>(() => TabSettingController());
    Get.lazyPut<TabTransferController>(() => TabTransferController());
  }
}