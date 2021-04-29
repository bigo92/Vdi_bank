import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/theme/app_theme.dart';
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
              height: MediaQuery.of(context).size.height -
                  (_appBar.preferredSize.height +
                      MediaQueryData.fromWindow(Get.window).padding.top),
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
                          child: Stack(
                            children: [
                              PageView(
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index) {
                                  print(index);
                                },
                                children: [
                                  _listFromItem(
                                    value: '240 000 000',
                                    number: '43213634733',
                                  ),
                                  _listFromItem(
                                    value: '123 000 000',
                                    number: '43213634733',
                                  ),
                                  _listFromItem(
                                    value: '500 000',
                                    number: '43213634733',
                                  ),
                                ],
                              ),
                              // Positioned(
                              //   child: Icon(
                              //     Icons.arrow_forward_ios_rounded,
                              //   ),
                              //   right: 5,
                              //   top: 30,
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          child: Text('To'),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Expanded(
                          child: PageView(
                            // shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              _listFromItem(
                                name: 'Normal VND',
                                value: '500 000',
                                number: '43213634733',
                              ),
                              _listFromItem(
                                name: 'Normal VND',
                                value: '400 000',
                                number: '43213634733',
                              ),
                              _listFromItem(
                                name: 'Normal VND',
                                value: '233 000',
                                number: '43213634733',
                              ),
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
                              contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              isDense: true,
                              labelText: 'Transfer amount',
                              suffix: Text(
                                'đ',
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ),
                              labelStyle: TextStyle(fontSize: 18),
                            ),
                            keyboardType: TextInputType.number,
                            style: VdiAppTheme.textTheme.headline5,
                            controller: controller.controller,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(0, 10, 0, 0),
                                isDense: true,
                                labelText: 'Description(optional)',
                                helperText:
                                    'Must contains only latin characters'),
                            maxLength: 160,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Shedule'),
                              Spacer(),
                              Obx(
                                () => CupertinoSwitch(
                                  activeColor: Colors.blueAccent,
                                  value: controller.isSchedule.value,
                                  onChanged: (value) {
                                    controller.toggleSchedule(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Spacer(),
                          CustomButton(
                            text: 'Continue',
                            color: Colors.green,
                            onPress: () {
                              controller.close();
                            },
                          ),
                          SizedBox(
                            height: 15,
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

  Container _listFromItem(
      {String name = 'PIS VND', String number = '0', String value = '0'}) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                '$value đ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$name | $number',
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
