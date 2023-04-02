import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopScaffold;
  final Widget mobileScaffold;

  ResponsiveLayout({required this.mobileScaffold,required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth<650){
          return mobileScaffold;
        } else{
          return desktopScaffold;
        }
      },
    );
  }
}