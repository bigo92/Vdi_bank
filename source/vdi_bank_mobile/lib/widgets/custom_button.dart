import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Function onPress;
  final Color color, textColor;
  final bool disable;
  final bool hidden;
  final bool isLoading;
  final Widget prefix;
  final Widget subfix;
  final Color colorIcon;

  const CustomButton(
      {Key key,
      this.text = '',
      this.textStyle = VdiAppTheme.buttonTextStyle,
      this.onPress,
      this.color = mainColor,
      this.textColor = Colors.white,
      this.disable = false,
      this.hidden = false,
      this.isLoading = false,
      this.prefix,
      this.subfix,
      this.colorIcon = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return this.hidden
        ? Container()
        : Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            // width: size.width * 0.8,
            child: ElevatedButton(
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (isLoading)
                      return color;
                    else if (!states.contains(MaterialState.disabled))
                      return color;
                    else
                      return Colors.grey.shade400;
                  },
                ),
                elevation: MaterialStateProperty.all<double>(0.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  // side: BorderSide(color: Colors.red)
                )),
              ),
              onPressed: isLoading ? null : onPress,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isLoading
                      ? SizedBox(
                          child: SpinKitFadingCircle(
                            color: textColor,
                            size: 15,
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
                              style: textStyle,
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
          );
  }
}
