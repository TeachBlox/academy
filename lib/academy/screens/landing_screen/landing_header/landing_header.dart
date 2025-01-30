import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/landing_header_desktop.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/landing_header_tablet.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/utils.dart';

import 'package:teachblox/widgets/layout/adaptive_screen.dart';

class LandingHeader extends StatelessWidget implements PreferredSizeWidget {
  const LandingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreen(
      mobile: LandingHeaderTablet(),
      tablet: LandingHeaderTablet(),
      desktop: LandingHeaderDesktop(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kHeaderHeight);
}
