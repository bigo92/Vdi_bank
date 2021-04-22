import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/core/utils/util_color.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/widgets/custom_button.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: VdiAppTheme.padding, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 120,
                      ),
                      Obx(
                        () => TextButton(
                          onPressed: () {
                            controller.onToggleLanguage();
                          },
                          child: Text(
                            controller.appLanguage.value == 'vi'
                                ? 'English'
                                : 'Tiếng Việt',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'userName'.tr,
                    ),
                  ),
                  Obx(
                    () => TextField(
                      obscureText: controller.isVisibility.value,
                      decoration: InputDecoration(
                          labelText: 'passWord'.tr,
                          suffixIcon: IconButton(
                            icon: controller.isVisibility.value
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: () {
                              controller.toggleIsVisibility();
                            },
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Obx(
                    () => CustomButton(
                      text: 'login'.tr,
                      onPress: () {
                        controller.onLogin();
                      },
                      color: Colors.green,
                      isLoading: controller.isSubmit.value,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: UtilColor.getColorFromHex('FFB7C5E7').withAlpha(100),
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.start,
                    children: [
                      _menuItem(
                        text: 'Smart OTP',
                        backgroundImage:
                            'assets/images/vpbank_smartotp_icon.png',
                        onPress: () {
                          controller.onDev();
                        },
                      ),
                      _menuItem(
                          text: 'QR Pay',
                          icon: Icon(
                            Icons.qr_code,
                            color: Colors.green,
                            size: 40,
                          ),
                          onPress: () {
                            controller.onQrCodeScanner();
                          }),
                      _menuItem(
                        text: 'Đăng ký\nVPBank online',
                        icon: Icon(
                          Icons.person_outline,
                          color: Colors.green,
                          size: 40,
                        ),
                        onPress: () {
                          controller.onDev();
                        },
                      ),
                      _menuItem(
                        text: 'ATM/Chi nhánh',
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.green,
                          size: 40,
                        ),
                        onPress: () {
                          controller.onDev();
                        },
                      ),
                      _menuItem(
                        text: 'Khuyến mãi',
                        icon: Icon(
                          Icons.card_giftcard,
                          color: Colors.green,
                          size: 40,
                        ),
                        onPress: () {
                          controller.onDev();
                        },
                      ),
                      _menuItem(
                        text: 'Hỗ trợ',
                        icon: Icon(
                          Icons.help_outline_outlined,
                          color: Colors.green,
                          size: 40,
                        ),
                        onPress: () {
                          controller.onDev();
                        },
                      ),
                      _menuItem(
                        text: 'Tài xế be',
                        backgroundImage: 'assets/images/icon_bee.png',
                        onPress: () {
                          controller.onDev();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _menuItem(
      {String backgroundImage,
      Widget icon,
      String text = '',
      Function onPress,
      Color color = Colors.white}) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 100,
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: backgroundImage != null
                      ? DecorationImage(
                          image: AssetImage(backgroundImage), fit: BoxFit.cover)
                      : null,
                  color: color),
              child: icon,
            ),
            //assets/images/vpbank_smartotp_icon.png
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
