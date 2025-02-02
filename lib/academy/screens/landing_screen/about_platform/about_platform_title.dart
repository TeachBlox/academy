import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/widgets/get_started_button.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class AboutPlatformTitle extends StatelessWidget {
  const AboutPlatformTitle({super.key});

  @override
  Widget build(BuildContext context) {
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
            style: getBodyMedium(context),
          ),
        ),
        SizedBox(height: 24.0),
        GetStartedButton(),
      ],
    );
  }
}
