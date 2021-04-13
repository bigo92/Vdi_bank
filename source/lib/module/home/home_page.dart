import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/module/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      body: SafeArea(
        child: Container(
          child: controller.widgetOptions[controller.selectedIndex.value],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.amber[800],
        onTap: controller.onItemTapped,
      ),
    ),
    );
  }
}
