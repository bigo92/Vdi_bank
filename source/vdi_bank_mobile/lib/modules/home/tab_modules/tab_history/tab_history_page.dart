import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vdi_bank/core/services/dialog_service.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_history/tab_history_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_setting/tab_setting_controller.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';
import 'package:vdi_bank/routes/pages.dart';
import 'package:vdi_bank/theme/colors_theme.dart';

class TabHistoryPage extends StatelessWidget {
  // final TabHistoryController tabHistoryController =
  // Get.find<TabHistoryController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white10,
            title:TabBar(
              tabs: [
                Text('Tất cả'),
                Text('Biến động'),
                Text('Khác'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ádấđá'),
                    Text('ádấđá'),
                    Text('ádấđá'),
                    Text('ádấđá'),
                    Text('ádấđá')
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ádấđá'),
                    Text('ádấđá'),
                    Text('ádấđá'),
                    Text('ádấđá'),
                    Text('ádấđá')
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitleUi(
                      title: 'Hôm qua',
                      time: '12h30'
                    ),
                    _listFromItem(
                      name: 'aaa', number: '21312312312',
                      value: '12312312'
                    ),
                    _buildTitleUi(
                        title: '15/03/2021',
                        time: '12h30'
                    ),
                    _listFromItem(
                        name: 'aaa', number: '21312312312',
                        value: '12312312'
                    ),
                    _buildTitleUi(
                        title: '16/03/2021',
                        time: '12h30'
                    ),
                    _listFromItem(
                        name: 'aaa', number: '21312312312',
                        value: '12312312'
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Container _buildTitleUi({@required String title, String time}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            time,
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }

  Container _listFromItem(
      {String name = 'PIS VND', String number = '0', String value = '0'}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('From account',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '$name',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                        ),
                        Spacer(),
                        Text(
                          '$value đ',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Text(
                      '$number',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          //--------------------
          Text('To account',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
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
                  Icons.account_balance_wallet_outlined,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'VNLady Credit',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                        ),
                        Spacer(),
                        Text(
                          '+300 000 đ',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '****5678',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Free 0 đ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

}
