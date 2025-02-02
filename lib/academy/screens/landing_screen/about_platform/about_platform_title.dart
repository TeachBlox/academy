import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teachblox/assets/svg_image.dart';
import 'package:teachblox/constants.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/buttons/button.dart';

class AboutPlatformTitle extends StatelessWidget {
  const AboutPlatformTitle({super.key});

  double? _getButtonWidth(double screenWidth) {
    if (screenWidth < kMobileWidth) {
      return double.infinity;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final locale = getLocale(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${locale.landingScreen_title} ',
                style: getHeadlineLarge(context),
              ),
              TextSpan(
                text: locale.companyTitle,
                style: getHeadlineLarge(context)?.copyWith(
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: linearGradientColors,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(
                      Rect.fromLTWH(0, 0, 600, 50),
                    ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            locale.landingScreen_titleDescription,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 24.0),
        SizedBox(
          width: _getButtonWidth(screenWidth),
          child: Button(
            leading: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(SvgImage.getStarted),
            ),
            onPressed: () => print('!'),
            text: locale.getStarted,
            padding: EdgeInsets.only(
              top: 6.0,
              right: 20.0,
              bottom: 6.0,
              left: 6.0,
            ),
          ),
        ),
      ],
    );
  }
}
