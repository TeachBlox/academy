import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class WhyChooseUsBlock extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;

  const WhyChooseUsBlock({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: kLighterDark,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: kGreySuperDark),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(iconPath, width: 40.0, height: 40.0),
          SizedBox(height: 16.0),
          Text(
            title,
            style: getDisplayLarge(context),
          ),
          SizedBox(height: 8.0),
          Text(
            locale.landingScreen_why_choose_us_block1_description,
            style: getDisplayMedium(context),
          ),
        ],
      ),
    );
  }
}
