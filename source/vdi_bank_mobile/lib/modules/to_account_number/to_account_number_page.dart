import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:vdi_bank/widgets/custom_button.dart';

import 'to_account_number_controller.dart';

class ToAccountNumberPage extends GetView<ToAccountNumberController> {
  final AppBar _appBar = AppBar(
    title: Text('Between my accounts'),
    elevation: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - (_appBar.preferredSize.height + MediaQuery.of(context).padding.top),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    color: mainColor,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          child: Text('From'),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Expanded(
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              _listFromItem(),
                              _listFromItem(),
                              _listFromItem(),
                            ],
                          ),
                        ),
                        Padding(
                          child: Text('To'),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Expanded(
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              _listFromItem(),
                              _listFromItem(),
                              _listFromItem(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Transfer amount',
                              suffix: Text(
                                'đ',
                                style:
                                TextStyle(decoration: TextDecoration.underline),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Description(optional)',
                                helperText: 'Must contains only latin characters'),
                            maxLength: 160,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Shedule'),
                              Spacer(),
                              Obx(() => CupertinoSwitch(
                                activeColor: Colors.blueAccent,
                                value: controller.isSchedule.value,
                                onChanged: (value) {
                                  controller.toggleSchedule(value);
                                },
                              ),),
                            ],
                          ),
                          Divider(),
                          Spacer(),
                          CustomButton(
                            text: 'Continue',
                            color: Colors.green,
                            onPress: () {

                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _listFromItem() {
    return Container(
      width: 350,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black54.withAlpha(300),
              spreadRadius: 0,
              blurRadius: 7,
              offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withAlpha(300),
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Icon(
              Icons.sticky_note_2_outlined,
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '240 000 000 đ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'PID | DSN',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
