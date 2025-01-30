import 'package:flutter/material.dart';
import 'package:teachblox/constants.dart';

class Adaptive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Adaptive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;

      if (screenWidth < kMobileWidth) {
        return mobile;
      } else if (screenWidth < kTabletWidth) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
