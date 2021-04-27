import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:vdi_bank/modules/example/example_page.dart';
import 'package:vdi_bank/routes/pages.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      defaultTransition: Transition.fadeIn,
      // home: HomePage(),
      home: ExamplePage(),
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
      // initialRoute: Routes.HOME,

      theme: appThemeData,

      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),

      // initialBinding: AppBinding(),
    );
  }
}
