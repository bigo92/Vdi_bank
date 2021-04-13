import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'tab1_controller.dart';

class Tab1Page extends StatelessWidget {
  final Tab1Controller c = Get.put(Tab1Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('home page'),
          TextButton(
            onPressed: () {
              c.onLogin();
            },
            child: Text('login'),
          ),
        ],
      ),
    );
  }
}
