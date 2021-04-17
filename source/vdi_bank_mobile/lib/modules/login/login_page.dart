import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/widgets/custom_button.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
        actions: [
          Obx(
            () => TextButton(
              onPressed: () {
                controller.onToggleLanguage();
              },
              child: Text(controller.appLanguage.value == 'vi'
                  ? 'English'
                  : 'Tiếng Việt'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: VdiAppTheme.padding,
          ),
          child: Column(
            children: [
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
              Spacer(),
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
      ),
    );
  }
}
