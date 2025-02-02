import 'package:flutter/material.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class StatisticBlock extends StatelessWidget {
  final String title;
  final String description;

  const StatisticBlock({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getAdaptiveValue(
        context,
        mobile: double.infinity,
        tablet: 200.0,
        desktop: 280.0,
      ),
      child: Column(
        crossAxisAlignment: getAdaptiveValue(
          context,
          mobile: CrossAxisAlignment.start,
          tablet: CrossAxisAlignment.start,
          desktop: CrossAxisAlignment.center,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: getHeadlineMedium(context)?.copyWith(
                color: kMainOrange,
              ),
            ),
          ),
          Text(
            description,
            textAlign: getAdaptiveValue(
              context,
              mobile: TextAlign.start,
              tablet: TextAlign.start,
              desktop: TextAlign.center,
            ),
            style: getDisplayMedium(context),
          ),
        ],
      ),
    );
  }
}
