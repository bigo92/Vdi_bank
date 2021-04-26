import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/theme/colors_theme.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(400),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Icon(
                  Icons.search,
                  color: mainColor,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: controller.widgetOptions.elementAt(controller.selectedIndex.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: controller.listTitleBottom,
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
        onTap: controller.onItemTapped,
      ),
    ),);
  }
}
