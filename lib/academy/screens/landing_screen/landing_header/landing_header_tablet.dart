import 'package:flutter/material.dart';

import 'package:teachblox/assets/images.dart';
import 'package:teachblox/l10n/locals.dart';

const kDesktopHeaderHeight = 87.0;

class LandingHeaderTablet extends StatelessWidget
    implements PreferredSizeWidget {
  const LandingHeaderTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: SvgImage.logo,
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kDesktopHeaderHeight);
}
