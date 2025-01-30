import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/utils.dart';

import 'package:teachblox/assets/svg_image.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';

class LandingHeaderTablet extends StatelessWidget
    implements PreferredSizeWidget {
  const LandingHeaderTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptivePadding(
      child: SizedBox(
        height: kHeaderHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(SvgImage.companyLogo),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Text(
                    getLocale(context).companyTitle,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kHeaderHeight);
}
