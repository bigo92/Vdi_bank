import 'package:vdi_bank/theme/colors_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class DialogService {
  static Future<bool> confirm({String title, String message}) async {
    bool confirm = false;

    void onAccept() {
      confirm = true;
      Get.back(); // đóng popup
    }

    void onCancel() {
      Get.back(); // đóng popup
    }

    await showDialog(
        barrierDismissible: false,
        context: Get.context,
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.yellow.withAlpha(100),
                    width: MediaQuery.of(context).size.width - 30,
                    // height: 200,
                    child: Column(
                      children: [
                        Container(
                          // width: MediaQuery.of(context).size.width,
                          child: Align(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: mainColor),
                          padding: EdgeInsets.all(5.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              message,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Container(
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        // bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    color: Colors.white,
                                    textColor: Colors.blueGrey,
                                    // padding: EdgeInsets.all(8.0),
                                    onPressed: () {
                                      onCancel();
                                    },
                                    child: Text(
                                      "Hủy",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                width: 0.5,
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: Container(
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        // bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    color: Colors.white,
                                    textColor: Colors.deepOrange,
                                    // padding: EdgeInsets.all(8.0),
                                    onPressed: () {
                                      onAccept();
                                    },
                                    child: Text(
                                      "Đồng ý",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });

    return confirm;
  }

  static Future<bool> confirm2({String title, String message}) async {
    bool confirm = false;

    void onAccept() {
      confirm = true;
      Get.back(); // đóng popup
    }

    void onCancel() {
      Get.back(); // đóng popup
    }

    await Get.defaultDialog(
      content: Text('aaaaa'),
      radius: 0.0,
      title: '',
    );

    return confirm;
  }

  static Future<bool> alert(
      {String title, String message, String textButton = 'Đóng'}) async {
    bool close = false;

    void onClose() {
      close = true;
      Get.back(); // đóng popup
    }

    await showDialog(
        barrierDismissible: false,
        context: Get.context,
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.yellow.withAlpha(100),
                    width: MediaQuery.of(context).size.width - 30,
                    // height: 200,
                    child: Column(
                      children: [
                        Container(
                          // width: MediaQuery.of(context).size.width,
                          child: Align(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: mainColor),
                          padding: EdgeInsets.all(5.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              message,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Container(
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    color: Colors.white,
                                    textColor: Colors.deepOrange,
                                    // padding: EdgeInsets.all(8.0),
                                    onPressed: () {
                                      onClose();
                                    },
                                    child: Text(
                                      "Đóng",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
    return close;
  }

  static void showSnackBar(String text, StatusSnackBar status) {
    Color color;
    switch (status) {
      case StatusSnackBar.success:
        color = kSuccessColor;
        break;
      case StatusSnackBar.error:
        color = kErrorColor;
        break;
      case StatusSnackBar.waring:
        color = kWarningColor;
        break;
      case StatusSnackBar.info:
        color = kInfoColor;
        break;
      default:
        color = kDisabledColor;
        break;
    }
    ScaffoldMessenger.of(Get.context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: color,
    ));
  }

  static void showBottomSheet({List<Widget> children}) {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(15.0),
            topRight: const Radius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              width: 100,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            // children.toList(),
            for (var item in children) item,
          ],
        ),
      ),
      // backgroundColor: mainColor,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: const Radius.circular(15.0),
      //     topRight: const Radius.circular(15.0),
      //   ),
      // ),
      ignoreSafeArea: false,
      // persistent: false
      isScrollControlled: true,
    );
  }

  static void onShowLoading(bool isShow) {
    if (isShow) {
      showDialog(
        context: Get.overlayContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: CupertinoAlertDialog(
              title: Column(
                children: [
                  SpinKitFadingCircle(
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('pleaseWait'.tr),
                ],
              ),
            ),
          );
        },
      );
    } else {
      Get.back();
    }
  }
}

enum StatusSnackBar { success, error, waring, info, disabled }
