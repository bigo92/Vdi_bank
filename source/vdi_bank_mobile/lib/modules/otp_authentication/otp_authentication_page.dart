import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 70,
              child: Text(
                  'Nhập mã xác thực đã được gửi đến số điện thoại của Quý khách ${controller.otpTypeValue}',
                  textAlign: TextAlign.center),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                  // shape: PinCodeFieldShape.box,
                  // borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedColor: Colors.green,
                  inactiveColor: Colors.green),
              animationDuration: Duration(milliseconds: 100),
              // backgroundColor: Colors.transparent,
              // enableActiveFill: true,
              // errorAnimationControllear: errorController,
              // controller: textEditingController,
              onCompleted: (v) {
                controller.onAuthenticationOtp(v);
              },
              onChanged: (value) {
                print(value);
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
        ]),
      ),
    );
  }
}
