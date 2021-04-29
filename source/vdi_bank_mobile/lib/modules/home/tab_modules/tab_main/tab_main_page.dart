import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_main/tab_main_controller.dart';
import 'package:vdi_bank/theme/colors_theme.dart';

class TabMainPage extends StatelessWidget {
  final TabMainController tabMainController = Get.find<TabMainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                color: mainColor,
                child: Column(
                  children: [
                    _buildTitleUi(
                      title: 'My templates',
                    ),
                    Container(
                      height: 70,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          _listMyTemplateItemUI(
                              imageAsset: 'assets/images/viettel_logo.png',
                              title: 'My mobile'),
                          _listMyTemplateItemUI(
                              imageAsset: 'assets/images/vietcombank_logo.png',
                              title: 'Mom'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    _buildTitleUi(
                      title: 'Transfers',
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          height: 160,
                          child: Center(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                _buildListItemTransfer(
                                    icon: LineIcons.bank,
                                    text: 'To account number'),
                                _buildListItemTransfer(
                                    icon: Icons.credit_card,
                                    text: 'To card number'),
                                _buildListItemTransfer(
                                    icon: Icons.phone_android_rounded,
                                    text: 'By phone number'),
                                _buildListItemTransfer(
                                    icon: Icons.recent_actors,
                                    text: 'Receive number'),
                                _buildListItemTransfer(
                                    icon: Icons.credit_card,
                                    text: 'To card number'),
                                _buildListItemTransfer(
                                    icon: Icons.phone_android_rounded,
                                    text: 'By phone number'),
                                _buildListItemTransfer(
                                    icon: Icons.recent_actors,
                                    text: 'Receive number'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    _buildTitleUi(title: 'Payments'),
                    Expanded(
                      child: Center(
                        child: Container(
                          height: 150,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildListItemTransfer(
                                  icon: Icons.phone_android_rounded,
                                  text: 'Mobile phone',
                                  type: 1),
                              _buildListItemTransfer(
                                  icon: LineIcons.lightbulb_o,
                                  text: 'Electricity',
                                  type: 1,
                                  color: Colors.orange),
                              _buildListItemTransfer(
                                  icon: LineIcons.tint,
                                  text: 'Water',
                                  type: 1,
                                  color: Colors.blueAccent),
                              _buildListItemTransfer(
                                  icon: Icons.food_bank_outlined,
                                  text: 'To account number',
                                  type: 1,
                                  color: Colors.lightBlue),
                              _buildListItemTransfer(
                                icon: Icons.food_bank_outlined,
                                text: 'To account number',
                                type: 1,
                              ),
                              _buildListItemTransfer(
                                icon: Icons.food_bank_outlined,
                                text: 'To account number',
                                type: 1,
                              ),
                              _buildListItemTransfer(
                                icon: Icons.food_bank_outlined,
                                text: 'To account number',
                                type: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildSuggessItem(),
                    _buildSuggessItem(),
                    _buildSuggessItem(),
                  ],
                ),
              ),
              Container(
                color: mainColor,
                // height: 100,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  // height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Scheduled \nTransfer & payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text('View all'),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.green,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildSuggessItem() {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 3,
                spreadRadius: -2,
                offset: Offset(1, 3))
          ]),
      child: Center(
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner_suggess.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Miễn phí thường niên, mở thẻ thật tiện'),
                SizedBox(
                  height: 10,
                ),
                Text('Phí thường niên năm đầu \'0 đồng \''),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _listMyTemplateItemUI(
      {String imageAsset, String title = '', Function onPress}) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 20),
      // height: 50,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget _buildListItemTransfer(
      {IconData icon,
      String text,
      Function onPress,
      int type = 0,
      Color color = Colors.green}) {
    double radius = 60;
    double width = 70;
    double height = 70;

    if (type == 1) {
      radius = 15;
      height = 60;
    }

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.fromLTRB(25, 15, 0, 15),
        width: width + 20,
        child: Column(
          children: [
            Container(
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow: [
                    BoxShadow(
                      color: color.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              height: height,
              width: width,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildTitleUi({@required String title}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'View all',
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
