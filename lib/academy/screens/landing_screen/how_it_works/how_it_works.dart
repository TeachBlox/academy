import 'package:flutter/material.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getAdaptiveValue(
          context,
          mobile: 100.0,
          tablet: 150.0,
          desktop: 200.0,
        ),
      ),
      child: Column(
        children: [
          Text(
            'HOW IT WORKS',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kMainOrange),
          ),
        ],
      ),
    );
  }
}
