import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_history/tab_history_page.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_main/tab_main_page.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_setting/tab_setting_page.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_page.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;
  final selectedTitle = "VDIBank".obs;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<String> listTitle = <String>[
    "VDIBank",
    "Transfer",
    "History",
    "Setting"
  ];
  List<Widget> widgetOptions = <Widget>[
    TabMainPage(),
    TabTransferPage(),
    TabHistoryPage(),
    TabSettingPage(),
  ];

  List<BottomNavigationBarItem> listTitleBottom = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Main',
    ),
    BottomNavigationBarItem(
      icon: Icon(LineIcons.exchange),
      label: 'Transfer',
    ),
    BottomNavigationBarItem(
      icon: Icon(LineIcons.history),
      label: 'History',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz_outlined),
      label: 'Setting',
    ),
  ];

  onItemTapped(int index) {
    selectedIndex.value = index;
    selectedTitle.value = listTitle[index];
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}