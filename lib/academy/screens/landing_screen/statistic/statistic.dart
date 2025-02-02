import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/statistic/statistic_block.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';

class Statistic extends StatelessWidget {
  const Statistic({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
    final childrenList = [
      StatisticBlock(
        title: '25%-50%',
        description: locale.landingScreen_statistic_developers,
      ),
      SizedBox(
        height: getAdaptiveValue(
          context,
          mobile: 32.0,
          tablet: 0.0,
          desktop: 0.0,
        ),
      ),
      StatisticBlock(
        title: '1%',
        description: locale.landingScreen_statistic_growth,
      ),
      SizedBox(
        height: getAdaptiveValue(
          context,
          mobile: 32.0,
          tablet: 0.0,
          desktop: 0.0,
        ),
      ),
      StatisticBlock(
        title: '35%',
        description: locale.landingScreen_statistic_salary,
      ),
    ];

    return AdaptivePadding(
      child: Padding(
        padding: EdgeInsets.only(
          top: getAdaptiveValue(
            context,
            mobile: 100.0,
            tablet: 150.0,
            desktop: 32.0,
          ),
        ),
        child: getAdaptiveValue(
          context,
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: childrenList,
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: childrenList,
          ),
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: childrenList,
          ),
        ),
      ),
    );
  }
}
