import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';

class TabTransferPage extends StatelessWidget {
  final TabTransferController tabTransferController = Get.find<TabTransferController>();
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Tab Transfer Page'),);
  }
}
