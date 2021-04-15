import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otp_authentication_controller.dart';

class OtpAuthenticationPage extends GetView<OtpAuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('otpAuthentication'.tr),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              'destroy'.tr,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
