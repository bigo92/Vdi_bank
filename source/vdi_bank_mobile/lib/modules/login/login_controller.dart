import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';
import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:vdi_bank/routes/pages.dart';

class LoginController extends GetxController {
  var isVisibility = true.obs;
  var isSubmit = false.obs;
  final appLanguage = 'vi'.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await khoiTao();
  }

  Future<void> khoiTao() async {
    final getStore = GetStorage();
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
    final getStore = GetStorage();
    LocalizationService.changeLocale(appLanguage.value);
    getStore.write('lang', appLanguage.value);
  }

  onSkip() async {
    Get.offAllNamed(Routes.HOME);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
