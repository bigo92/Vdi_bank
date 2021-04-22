import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/core/utils/util_color.dart';
import 'package:vdi_bank/modules/splash/splash_controller.dart';
import 'package:vdi_bank/theme/colors_theme.dart';

class SplashPage extends GetView<SplashController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                UtilColor.getColorFromHex('#5581F1'),
                UtilColor.getColorFromHex('#1153FC'),
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 250,
              height: 250,
            ),
            SpinKitFadingCircle(color: Colors.white, size: 40,)
          ],
        ),
      ),
    );
  }
}
