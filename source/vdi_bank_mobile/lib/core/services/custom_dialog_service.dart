import 'package:vdi_bank/core/services/local_storage_service.dart';
import 'package:vdi_bank/routes/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CustomDialogService extends GetxService {
  String token = '';

  Future<CustomDialogService> init() async {
    return this;
  }

  void onShowLoading(bool isShow) {
    if(isShow) {
      showDialog(
        context: Get.overlayContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: CupertinoAlertDialog(
              title: Text(
                  'Loading....'),
            ),
          );
        },
      );
    } else {
      Get.back();
    }
  }

  void logout() {
    final getStore = Get.find<LocalStorageService>().getStorage();
    this.token = '';
    getStore.remove('token');
  }


  @override
  void onInit() {
    super.onInit();

    if(token.isEmpty){
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
