import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_block.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_desktop.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_tablet.dart';
import 'package:teachblox/assets/svg_image.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({super.key});

  List<WhyChooseUsBlock> _getBlocks(BuildContext context) {
    final locale = getLocale(context);
    return [
      WhyChooseUsBlock(
        title: locale.landingScreen_why_choose_us_block1_title,
        description: locale.landingScreen_why_choose_us_block1_description,
        iconPath: SvgImage.customLearningPath,
      ),
      WhyChooseUsBlock(
        title: locale.landingScreen_why_choose_us_block2_title,
        description: locale.landingScreen_why_choose_us_block2_description,
        iconPath: SvgImage.aiAssessment,
      ),
      WhyChooseUsBlock(
        title: locale.landingScreen_why_choose_us_block3_title,
        description: locale.landingScreen_why_choose_us_block3_description,
        iconPath: SvgImage.digitalCertification,
      ),
      WhyChooseUsBlock(
        title: locale.landingScreen_why_choose_us_block4_title,
        description: locale.landingScreen_why_choose_us_block4_description,
        iconPath: SvgImage.gamification,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final blocks = _getBlocks(context);

    return AdaptivePadding(
      child: Padding(
        padding: EdgeInsets.only(
          top: getAdaptiveValue(
            context,
            mobile: 100.0,
            tablet: 150.0,
            desktop: 200.0,
          ),
        ),
        child: getAdaptiveValue(
          context,
          mobile: WhyChooseUsTablet(blocks: blocks),
          tablet: WhyChooseUsTablet(blocks: blocks),
          desktop: WhyChooseUsDesktop(blocks: blocks),
        ),
      ),
    );
  }
}
