import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/widgets/get_started_button.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class WhyChooseUsTitle extends StatelessWidget {
  const WhyChooseUsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locale.landingScreen_why_choose_us_title.toUpperCase(),
          style: getHeadlineSmall(context)?.copyWith(color: kMainOrange),
        ),
        SizedBox(height: 12.0),
        Text(
          locale.landingScreen_why_choose_us_subtitle,
          style: getHeadlineMedium(context),
        ),
        SizedBox(
          height: getAdaptiveValue(
            context,
            mobile: 8.0,
            tablet: 16.0,
            desktop: 16.0,
          ),
        ),
        Text(
          locale.landingScreen_why_choose_us_description,
          style: getDisplayMedium(context),
        ),
        SizedBox(height: 24.0),
        GetStartedButton(),
      ],
    );
  }
}
