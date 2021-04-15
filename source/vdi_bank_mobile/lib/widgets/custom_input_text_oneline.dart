import 'package:flutter/material.dart';

class CustomInputTextOnline extends StatefulWidget {
  const CustomInputTextOnline({
    Key key,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<CustomInputTextOnline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          Text('Chi tiết'),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "VD: Sản phẩm dich vụ"),
            ),
          )
        ],
      ),
    );
  }
}