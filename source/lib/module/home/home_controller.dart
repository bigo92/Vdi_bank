import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/module/home/widget/tab1.dart';
import 'package:vdi_bank/module/home/widget/tab2.dart';
import 'package:vdi_bank/module/home/widget/tab3.dart';
import 'package:vdi_bank/route/page.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> widgetOptions = [
    Tab1Page(),
    Tab2Page(),
    Tab3Page(),
  ];



  onItemTapped(int index) {
    selectedIndex.value = index;
      // update();
  }
}