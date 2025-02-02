import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/how_it_works/how_it_works_step/how_it_works_step.dart';
import 'package:teachblox/assets/svg_image.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);

    return AdaptivePadding(
      child: Column(
        crossAxisAlignment: getAdaptiveValue(
          context,
          mobile: CrossAxisAlignment.start,
          tablet: CrossAxisAlignment.start,
          desktop: CrossAxisAlignment.center,
        ),
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: getAdaptiveValue(
                  context,
                  mobile: 100.0,
                  tablet: 150.0,
                  desktop: 200.0,
                ),
                bottom: 12.0),
            child: Text(
              locale.landingScreen_howItWorks_title.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: kMainOrange),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: getAdaptiveValue(
                context,
                mobile: 8.0,
                tablet: 16.0,
                desktop: 16.0,
              ),
            ),
            child: Text(
              locale.landingScreen_howItWorks_subtitle,
              style: getHeadlineMedium(context),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: getAdaptiveValue(
                context,
                mobile: 84.0,
                tablet: 56.0,
                desktop: 56.0,
              ),
            ),
            child: Text(
              locale.landingScreen_howItWorks_description,
              style: getDisplayMedium(context),
            ),
          ),
          HowItWorksStep(
            title: locale.landingScreen_howItWorks_step1_title,
            description: locale.landingScreen_howItWorks_step1_description,
            iconPath: SvgImage.start,
          ),
          SizedBox(
            height: getAdaptiveValue(
              context,
              mobile: 44.0,
              tablet: 44.0,
              desktop: 0.0,
            ),
          ),
          HowItWorksStep(
            title: locale.landingScreen_howItWorks_step2_title,
            description: locale.landingScreen_howItWorks_step2_description,
            iconPath: SvgImage.learning,
          ),
          SizedBox(
            height: getAdaptiveValue(
              context,
              mobile: 44.0,
              tablet: 44.0,
              desktop: 0.0,
            ),
          ),
          HowItWorksStep(
            title: locale.landingScreen_howItWorks_step3_title,
            description: locale.landingScreen_howItWork_step3_description,
            iconPath: SvgImage.practice,
          ),
          SizedBox(
            height: getAdaptiveValue(
              context,
              mobile: 44.0,
              tablet: 44.0,
              desktop: 0.0,
            ),
          ),
          HowItWorksStep(
            title: locale.landingScreen_howItWorks_step4_title,
            description: locale.landingScreen_howItWorks_step4_description,
            iconPath: SvgImage.career,
            withDivider: false,
          ),
        ],
      ),
    );
  }
}
