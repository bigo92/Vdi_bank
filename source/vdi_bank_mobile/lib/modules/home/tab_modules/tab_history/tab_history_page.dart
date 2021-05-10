import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_history/tab_history_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_setting/tab_setting_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';
import 'package:vdi_bank/routes/pages.dart';

class TabHistoryPage extends StatelessWidget {
  final TabHistoryController tabHistoryController =
  Get.find<TabHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          ListTile(
            leading: Icon(LineIcons.user),
            title: Text('Thông tin tài khoản'),
            onTap: () {
              DialogService.alert(message: 'Chức năng đang phát triển');
            },
          ),
        ],
      ),
    );
  }
}
