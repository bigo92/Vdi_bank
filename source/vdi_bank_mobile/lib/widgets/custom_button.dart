import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vdi_bank/core/utils/util_color.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Function onPress;
  final Color color, textColor;
  final Gradient backgroundGradient;
  final bool disable;
  final bool hidden;
  final bool isLoading;
  final Widget prefix;
  final Widget subfix;
  final Color colorIcon;
  final EdgeInsets margin;

  const CustomButton(
      {Key key,
      this.text = '',
      this.textStyle = VdiAppTheme.buttonTextStyle,
      this.onPress,
      this.color = mainColor,
      this.textColor = Colors.white,
      this.backgroundGradient = VdiAppTheme.buttonTheme_successGradient,
      this.disable = false,
      this.hidden = false,
      this.isLoading = false,
      this.prefix,
      this.subfix,
      this.colorIcon = Colors.white,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return this.hidden
        ? Container()
        : Container(
            margin: margin,
            // width: size.width * 0.8,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  elevation: MaterialStateProperty.all<double>(0.0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      // side: BorderSide(color: Colors.red)
                    ),
                  ),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)),
              onPressed: isLoading ? null : onPress,
              child: Ink(
                decoration: BoxDecoration(
                    gradient: backgroundGradient,
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  // padding: EdgeInsets.symmetric(vertical: 15),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoading
                          ? SizedBox(
                              child: SpinKitFadingCircle(
                                color: textColor,
                                size: 20,
                              ),
                            )
                          : Row(
                              children: [
                                prefix == null ? Container() : prefix,
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  text,
                                  style: TextStyle(color: textColor, fontSize: 18),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                subfix == null ? Container() : subfix,
                              ],
                            )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
