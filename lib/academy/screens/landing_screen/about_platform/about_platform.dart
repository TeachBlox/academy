import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/about_platform/about_platform_title.dart';
import 'package:teachblox/assets/png_image.dart';
import 'package:teachblox/constants.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';

class AboutPlatform extends StatelessWidget {
  const AboutPlatform({super.key});

  EdgeInsetsGeometry _getPaddingTop(double screenWidth) {
    if (screenWidth < kMobileWidth) {
      return const EdgeInsets.only(top: 140.0);
    }
    if (screenWidth < kTabletWidth) {
      return const EdgeInsets.only(top: 255.0);
    }
    return const EdgeInsets.only(top: 120.0);
  }

  double? _getHeroTopPosition(double screenWidth) {
    if (screenWidth < kMobileWidth) {
      return -490.0;
    }

    if (screenWidth < kTabletWidth) {
      return -400;
    }

    return null;
  }

  double _getHeroRightPosition(double screenWidth) {
    if (screenWidth < kMobileWidth) {
      return -160.0;
    }

    if (screenWidth < kTabletWidth) {
      return -50.0;
    }

    return -100.0;
  }

  double? _getHeight(double screenWidth) {
    if (screenWidth < kTabletWidth) {
      return null;
    }

    return 640.0;
  }

  double? _getTitleWidth(double screenWidth) {
    if (screenWidth < kMobileWidth) {
      return null;
    }

    return 580.0;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: _getHeight(screenWidth),
      child: Stack(
        children: [
          Padding(
            padding: _getPaddingTop(screenWidth),
            child: AdaptivePadding(
              isOnlyLeft: screenWidth >= kTabletWidth,
              child: SizedBox(
                width: _getTitleWidth(screenWidth),
                child: AboutPlatformTitle(),
              ),
            ),
          ),
          Positioned(
            top: _getHeroTopPosition(screenWidth),
            right: _getHeroRightPosition(screenWidth),
            child: Container(
              height: 640,
              width: 740,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PngImage.landingHero),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
