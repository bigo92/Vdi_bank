import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_setting/tab_setting_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';
import 'package:vdi_bank/routes/pages.dart';

class TabSettingPage extends StatelessWidget {
  final TabSettingController tabSettingController =
      Get.find<TabSettingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
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
          ListTile(
            leading: Icon(LineIcons.bell),
            title: Text('Thông báo ứng dụng'),
            trailing: CupertinoSwitch(
              value: tabSettingController.isNotification.value,
              onChanged: (value) {
                tabSettingController.toggleNotification(value);
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.fingerprint),
            title: Text('Đăng nhập bằng vân tay'),
            trailing: CupertinoSwitch(
              value: tabSettingController.isFingerprint.value,
              onChanged: (value) {
                tabSettingController.toggleFingerprint(value);
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.redAccent),
            title: Text('Đăng xuất', style: TextStyle(
                color: Colors.redAccent
            ),),
            onTap: () {
              Get.toNamed(Routes.LOGIN);
            },
          )
        ],
      ),
    ),);
  }
}
