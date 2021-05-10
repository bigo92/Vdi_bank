import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/widgets/custom_basic_layout.dart';
import 'package:vdi_bank/widgets/custom_button.dart';

import 'method_otp_controller.dart';

class MethodOtpPage extends GetView<MethodOtpController> {
  @override
  Widget build(BuildContext context) {
    return CustomBasicLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  'changeMethodRecieveOtp'.tr,
                  style: VdiAppTheme.textTheme.headline6,
                ),
              ),
            ),
            Divider(),
            _buildOption(
              title: 'SMS',
              name: controller.otpObject[MethodReceiveOtp.sms],
              value: MethodReceiveOtp.sms,
            ),
            Divider(),
            _buildOption(
              title: 'Email',
              name: controller.otpObject[MethodReceiveOtp.email],
              value: MethodReceiveOtp.email,
            ),
            Divider(),
            _buildOption(
              title: 'Smart Otp',
              name: controller.otpObject[MethodReceiveOtp.smartOtp],
              value: MethodReceiveOtp.smartOtp,
            ),
            Divider(),
            Spacer(),
            CustomButton(
              text: 'Xác nhận',
              onPress: () {
                controller.onAccept();
              },
            ),
            CustomButton(
              text: 'Bỏ qua',
              backgroundGradient: VdiAppTheme.buttonTheme_transparentGradient,
              textColor: Colors.black,
              onPress: () {

              },
            )
          ],
        ),
      ),
    );
  }

  Obx _buildOption({String title, String name, MethodReceiveOtp value}) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: controller.methodReceiveOtp.value == value
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            Spacer(),
            Text(
              name,
              style: TextStyle(
                fontWeight: controller.methodReceiveOtp.value == value
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 20,
              child: Radio<MethodReceiveOtp>(
                groupValue: controller.methodReceiveOtp.value,
                value: value,
                activeColor: Colors.green,
                onChanged: (value) {
                  controller.onChangeMethodReceiveOtp(value);
                },
              ),
            ),
          ],
        ));
  }
}
