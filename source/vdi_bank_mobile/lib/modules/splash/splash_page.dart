import 'package:vdi_bank/core/services/auth_service.dart';
import 'package:vdi_bank/core/services/connectivity_service.dart';
import 'package:vdi_bank/core/services/custom_dialog_service.dart';
import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:vdi_bank/core/utils/util_color.dart';
import 'package:vdi_bank/routes/pages.dart';
import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                UtilColor.getColorFromHex('#5581F1'),
                UtilColor.getColorFromHex('#1153FC'),
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 250,
              height: 250,
            ),
            SpinKitFadingCircle(color: Colors.white, size: 40,)
          ],
        ),
      ),
    );
  }
}
