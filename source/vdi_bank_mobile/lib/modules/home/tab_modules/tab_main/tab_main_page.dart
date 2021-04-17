import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vdi_bank/modules/home/tab_modules/tab_main/tab_main_controller.dart';
import 'package:vdi_bank/theme/colors_theme.dart';

class TabMainPage extends StatelessWidget {
  final TabMainController tabMainController = Get.put(TabMainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    _buildTitleUi(),
                    Container(
                      height: 60,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            // height: 50,
                            // width: 200,
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
                                ]
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.medical_services),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('My mobile')
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              _buildTitleUi(),
              Container(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                  ],
                ),
              ),
              _buildTitleUi(),
              Container(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                    _buildListItemTransfer(
                        icon: Icons.food_bank_outlined,
                        text: 'To account number'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildListItemTransfer({IconData icon, String text}) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 70,
      child: Column(
        children: [
          Container(
            child: Icon(
              icon,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]
            ),
            height: 60,
            width: 60,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container _buildTitleUi() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My templates',
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
