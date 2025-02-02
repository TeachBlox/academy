import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class HowItWorksStepDesktop extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  final bool withDivider;

  const HowItWorksStepDesktop({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
    this.withDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 44.0,
                bottom: 12.0,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: kGreySuperDark,
                child: SvgPicture.asset(iconPath),
              ),
            ),
            if (withDivider)
              Padding(
                padding: EdgeInsets.only(
                  bottom: 12.0,
                  left: 29.0,
                ),
                child: Container(
                  width: 1.0,
                  height: 77.0,
                  decoration: BoxDecoration(
                    color: kGreySuperDark,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(
          width: 520.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: getBodyMedium(context)?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: getDisplayMedium(context),
              ),
            ],
          ),
        )
      ],
    );
  }
}
