import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/core/utils/util_color.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_transfer/tab_transfer_controller.dart';
import 'package:vdi_bank/theme/app_theme.dart';
import 'package:vdi_bank/widgets/custom_button.dart';

class TabTransferPage extends StatelessWidget {
  final TabTransferController tabTransferController =
      Get.find<TabTransferController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 230,
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Color.fromRGBO(246, 246, 246, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _listFromItem(
                        value: '240 000 000',
                        number: '43213634733',
                        name: 'Normal VND')
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: UtilColor.getColorFromHex('FFB7C5E7').withAlpha(100),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Center(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.start,
                        children: [
                          _menuItem(
                            text: 'Send reciept',
                            onPress: () {
                              tabTransferController.goToAccountNumber();
                            },
                            icon: Icon(
                              Icons.present_to_all,
                              color: Colors.white,
                            ),
                          ),
                          _menuItem(
                            text: 'Save as template',
                            icon: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ),
                          ),
                          _menuItem(
                            text: 'Make another transfer',
                            icon: Icon(
                              Icons.transfer_within_a_station,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('VPBank',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 18)),
                                    Spacer(),
                                    Text('25/05/2018 15:04',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 13)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('FT17179940207403',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 13)),
                                    Spacer(),
                                    Text('VPB1804110004503811',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 13))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('From account',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Normal VND',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 13)),
                                Text('130012345',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Transfer to card',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('VPBank',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 13)),
                                Text('1234 **** **** 5678',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Transfer amount',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('165 000 đ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 26)),
                                Text(
                                    'One hundred sixty five thousand Vietnamese Dongs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Free (not include VAT)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('0 đ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Description)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Payment for month)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Success!',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
          Text('From account'),
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
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '$value đ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
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
          Text('To account'),
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
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '+300 000 đ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
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

  Widget _menuItem(
      {String backgroundImage,
      Widget icon,
      String text = '',
      Function onPress,
      Color color = Colors.green}) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 100,
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54.withAlpha(300),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: Offset(0, 4)),
                  ],
                  image: backgroundImage != null
                      ? DecorationImage(
                          image: AssetImage(backgroundImage), fit: BoxFit.cover)
                      : null,
                  color: color),
              child: icon,
            ),
            //assets/images/vpbank_smartotp_icon.png
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
