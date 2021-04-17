import 'package:vdi_bank/modules/home/home_binding.dart';
import 'package:vdi_bank/modules/home/home_page.dart';
import 'package:vdi_bank/modules/lock_screen/lock_screen_binding.dart';
import 'package:vdi_bank/modules/lock_screen/lock_screen_page.dart';
import 'package:vdi_bank/modules/login/login_binding.dart';
import 'package:vdi_bank/modules/login/login_page.dart';
import 'package:vdi_bank/modules/method_otp/method_otp_binding.dart';
import 'package:vdi_bank/modules/method_otp/method_otp_page.dart';
import 'package:vdi_bank/modules/otp_authentication/otp_authentication_binding.dart';
import 'package:vdi_bank/modules/otp_authentication/otp_authentication_page.dart';
import 'package:vdi_bank/modules/splash/splash_binding.dart';
import 'package:vdi_bank/modules/splash/splash_page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => LockScreenPage(),
      binding: LockScreenBinding(),
    ),
    GetPage(
      name: Routes.OTP_AUTHENTICATION,
      page: () => OtpAuthenticationPage(),
      binding: OtpAuthenticationBinding(),
    ),
    GetPage(
      name: Routes.METHOD_OTP,
      page: () => MethodOtpPage(),
      binding: MethodOtpBinding(),
    ),
  ];
}
