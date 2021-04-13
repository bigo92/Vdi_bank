import 'package:get/get.dart';
import 'package:vdi_bank/module/home/home_bindding.dart';
import 'package:vdi_bank/module/home/home_page.dart';
import 'package:vdi_bank/module/login/login_bindding.dart';
import 'package:vdi_bank/module/login/login_page.dart';

part 'routes.dart';

abstract class AppPage {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBindding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBindding(),
    ),
  ];
}
