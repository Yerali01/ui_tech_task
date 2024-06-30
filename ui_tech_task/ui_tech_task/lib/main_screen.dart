import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final Widget mobileUi;
  final Widget tabletUi;
  final Widget desktopUi;

  MainScreen({
    super.key,
    required this.mobileUi,
    required this.tabletUi,
    required this.desktopUi,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileUi;
        } else if (constraints.maxWidth < 1100) {
          return tabletUi;
        } else {
          return desktopUi;
        }
      },
    );
  }
}
