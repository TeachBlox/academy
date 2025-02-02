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
      StatisticBlock(
        title: '1%-2%',
        description: locale.landingScreen_statistic_growth,
      ),
      StatisticBlock(
        title: '35%',
        description: locale.landingScreen_statistic_salary,
      ),
    ];

    return AdaptivePadding(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
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
