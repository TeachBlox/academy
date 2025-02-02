import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class HowItWorksStepMobile extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;

  const HowItWorksStepMobile({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: kGreySuperDark,
            child: SvgPicture.asset(iconPath),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: getBodyMedium(context)?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          description,
          style: getDisplayMedium(context),
        )
      ],
    );
  }
}
