import 'package:vdi_bank/core/services/auth_service.dart';
import 'package:vdi_bank/core/services/connectivity_service.dart';
import 'package:vdi_bank/core/services/custom_dialog_service.dart';
import 'package:vdi_bank/core/services/localization_service.dart';
import 'package:vdi_bank/core/utils/util_color.dart';
import 'package:vdi_bank/routes/pages.dart';
import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

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
