import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vdi_bank/core/services/custom_dialog_service.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';
import 'package:vdi_bank/core/services/local_storage_service.dart';
import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:vdi_bank/routes/pages.dart';
import 'package:qrscan/qrscan.dart' as scanner;


class LoginController extends GetxController {
  var isVisibility = true.obs;
  var isSubmit = false.obs;
  final appLanguage = 'vi'.obs;
  final fixShowBroad = false.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await khoiTao();
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        this.fixShowBroad.value = visible;
      },
    );
  }

  Future<void> khoiTao() async {
    final getStore = Get.find<LocalStorageService>().getStorage();
    // final CustomDialogService customDialogService = Get.find();
    // customDialogService.onShowLoading(true);
    DialogService.onShowLoading(true);
    String lang = await getStore.read('lang') ?? Get.deviceLocale.languageCode;
    appLanguage.value = lang;
    await 1.delay();
    DialogService.onShowLoading(false);
  }

  toggleIsVisibility() {
    isVisibility.value = !isVisibility.value;
  }

  onLogin() async {
    print('on login');
    isSubmit.value = true;
    await 1.delay();
    isSubmit.value = false;
    Get.toNamed(Routes.METHOD_OTP);
  }

  onToggleLanguage() {
    appLanguage.value = appLanguage.value == 'vi' ? 'en': 'vi';
    final getStore = Get.find<LocalStorageService>().getStorage();
    LocalizationService.changeLocale(appLanguage.value);
    getStore.write('lang', appLanguage.value);
  }

  onSkip() async {
    Get.offAllNamed(Routes.HOME);
  }

  onQrCodeScanner() async {
    try {
      await Permission.camera.request();
      String photoScanResult = await scanner.scan();
      if (photoScanResult.isNotEmpty) {
        // Get.toNamed(Routes.POSTAGE,
        //     arguments: photoScanResult);
      }
    } catch (e){

    }
  }

  onDev() async {
    DialogService.alert(title: 'Thông báo',message: 'Chức năng đang được phát triển');
  }

  @override
  void dispose() {
    super.dispose();
  }
}
