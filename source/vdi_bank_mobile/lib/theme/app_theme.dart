import 'package:flutter/material.dart';

import 'colors_theme.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: mainColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  accentColor: mainColor,
  appBarTheme: AppBarTheme(elevation: 0),
  fontFamily: 'Roboto',
);

class VdiAppTheme {
  static const Color nearlyWhite = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF2F3F8);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);

  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color spacer = Color(0xFFF2F2F2);

  static const String fontName = 'MPLUSRounded1c';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );

  static const TextStyle buttonTextStyle = TextStyle(
    // fontSize: 15,
    color: Colors.white,
  );

  static const Color buttonTheme_success = Color(0xFF4CAF50);
  static const Color buttonTheme_danger = Color(0xFFFF9800);
  static const Color buttonTheme_primary = Color(0xFF448AFF);
  static const Color buttonTheme_disabled = Color(0xFF9E9E9E);

  static const LinearGradient buttonTheme_successGradient = LinearGradient(
    colors: [Color(0xFF71b23e), Color(0xFF367b39)],
  );

  static const LinearGradient buttonTheme_dangerGradient = LinearGradient(
    colors: [Color(0xffff7b1c), Color(0xffed4427)],
  );

  static const LinearGradient buttonTheme_primaryGradient = LinearGradient(
    colors: [Color(0xff2777bc), Color(0xff23599f)],
  );

  static const LinearGradient buttonTheme_disabledGradient = LinearGradient(
    colors: [Color(0xffbdbdbd), Color(0xff9E9E9E)],
  );

  static const LinearGradient buttonTheme_transparentGradient = LinearGradient(
    colors: [Color(0x00000000),Color(0x00000000)],
  );


  static const padding = 10.0;
}
