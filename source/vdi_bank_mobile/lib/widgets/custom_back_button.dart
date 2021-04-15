import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonBack extends Container {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mainColor,
          size: 40,
        ),
        onPressed: () => Get.back());
  }
}