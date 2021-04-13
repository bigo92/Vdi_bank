import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text('login'),
              TextButton(
                onPressed: () {
                  controller.goHome();
                },
                child: Text('go home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
