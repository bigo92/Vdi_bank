import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_setting/tab_setting_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';

class TabSettingPage extends StatelessWidget {
  final TabSettingController tabTransferController = Get.put(TabSettingController());
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Tab Setting Page'),);
  }
}
