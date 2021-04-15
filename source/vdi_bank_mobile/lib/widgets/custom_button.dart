import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Function onPress;
  final Color color, textColor;
  final bool disable;
  final bool hidden;
  final IconData icon;
  final Color colorIcon;

  const CustomButton(
      {Key key,
      this.text,
      this.onPress,
      this.color = mainColor,
      this.textColor = Colors.white,
      this.disable = false,
      this.hidden = false,
      this.icon,
      this.colorIcon = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return this.hidden ? Container() : Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      // width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          color: color,
          disabledColor: Colors.grey,
          onPressed: !this.disable ? onPress : null,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            this.icon != null ? Icon(icon, color: colorIcon) : Container(),
            Container(),
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ]),
        ),
      ),
    );
  }
}
