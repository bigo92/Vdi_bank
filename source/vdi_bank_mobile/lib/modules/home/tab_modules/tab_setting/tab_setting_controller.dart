import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';

enum _SupportState {
  unknown,
  supported,
  unsupported,
}

class TabSettingController extends GetxController {
  final isNotification = true.obs;
  final isFingerprint = false.obs;

  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;

  @override
  void onInit() {
    super.onInit();
    auth.isDeviceSupported().then(
          (isSupported) => _supportState =
              isSupported ? _SupportState.supported : _SupportState.unsupported,
        );
    print(_supportState);
  }

  void toggleNotification(value) {
    this.isNotification.value = value;
  }

  void toggleFingerprint(value) async {
    this.isFingerprint.value = value;
    if (!value) {
      return;
    }
    if (_supportState != _SupportState.supported) {
      await DialogService.alert(
          message: 'Thiết bị không hỗ trợ hoặc chưa cài đặt vân tay');
      this.isFingerprint.value = false;
      return;
    } else {
      bool didAuthenticate = await auth.authenticate(
          useErrorDialogs: false,
          stickyAuth: true,
          androidAuthStrings: const AndroidAuthMessages(
            cancelButton: 'Hủy',
            biometricHint: '',
            signInTitle: 'Trắc sinh học'
          ),
          iOSAuthStrings: const IOSAuthMessages(
              cancelButton: 'Hủy',
          ),
          sensitiveTransaction: true,
          biometricOnly: true,
          localizedReason: 'Để sử dụng tính năng này bạn phải xác thực vân tay đã lưu trên máy');
      if (!didAuthenticate) {
        this.isFingerprint.value = false;
        return;
      }
    }

  }
}
