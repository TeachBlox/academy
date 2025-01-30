import 'package:flutter/material.dart';
import 'package:teachblox/constants.dart';

class AdaptivePadding extends StatelessWidget {
  final Widget child;
  final bool isOnlyRight;
  final bool isOnlyLeft;

  const AdaptivePadding({
    super.key,
    required this.child,
    this.isOnlyLeft = false,
    this.isOnlyRight = false,
  });

  EdgeInsetsGeometry _getHorizontalPadding(double padding) {
    if (isOnlyRight) {
      return EdgeInsets.only(
        right: padding,
      );
    }

    if (isOnlyLeft) {
      return EdgeInsets.only(
        left: padding,
      );
    }

    return EdgeInsets.symmetric(
      horizontal: padding,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;

      if (screenWidth < kMobileWidth) {
        return Padding(
          padding: _getHorizontalPadding(kMobileScreenHorizontalPadding),
          child: child,
        );
      } else if (screenWidth < kTabletWidth) {
        return Padding(
          padding: _getHorizontalPadding(kTabletScreenHorizontalPadding),
          child: child,
        );
      } else {
        return Padding(
          padding: _getHorizontalPadding(kDesktopScreenHorizontalPadding),
          child: child,
        );
      }
    });
  }
}
