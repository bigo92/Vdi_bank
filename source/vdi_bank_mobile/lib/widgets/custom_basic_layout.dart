import 'package:flutter/material.dart';

class CustomBasicLayout extends StatelessWidget {
  final Widget child;
  CustomBasicLayout({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
    );
  }
}
