import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/widgets/custom_button.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Ten dang nhap'),
            ),
            Obx(
              () => TextField(
                obscureText: controller.isVisibility.value,
                decoration: InputDecoration(
                    labelText: 'mat khau',
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
                text: 'Đăng nhập',
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
    );
  }
}
