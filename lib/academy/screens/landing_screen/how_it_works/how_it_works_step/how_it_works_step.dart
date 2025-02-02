import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/how_it_works/how_it_works_step/how_it_works_step_desktop.dart';
import 'package:teachblox/academy/screens/landing_screen/how_it_works/how_it_works_step/how_it_works_step_mobile.dart';
import 'package:teachblox/utils.dart';

class HowItWorksStep extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  final bool withDivider;

  const HowItWorksStep({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
    this.withDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return getAdaptiveValue(context,
        mobile: HowItWorksStepMobile(
          iconPath: iconPath,
          title: title,
          description: description,
        ),
        tablet: HowItWorksStepMobile(
          iconPath: iconPath,
          title: title,
          description: description,
        ),
        desktop: HowItWorksStepDesktop(
          iconPath: iconPath,
          title: title,
          description: description,
          withDivider: withDivider,
        ));
  }
}
