import 'package:flutter/material.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class CoursesTitle extends StatelessWidget {
  const CoursesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);

    return Column(
      children: [
        Text(
          locale.landingScreen_courses_title.toUpperCase(),
          style: getHeadlineSmall(context)?.copyWith(color: kMainOrange),
        ),
        SizedBox(height: 12.0),
        Text(
          locale.landingScreen_courses_subtitle,
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
          textAlign: TextAlign.center,
          locale.landingScreen_courses_description,
          style: getDisplayMedium(context),
        ),
        SizedBox(height: 24.0),
      ],
    );
  }
}
