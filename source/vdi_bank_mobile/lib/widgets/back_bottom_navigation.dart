import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackBottomButton extends Container {
  final String text;
  BackBottomButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: RaisedButton(
        onPressed: () => Get.back(),
        color: mainColor,
        textColor: Colors.white,
        child: Text(this.text),
      ),
    );
  }
}