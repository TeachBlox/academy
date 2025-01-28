import 'package:flutter/material.dart';

import 'package:teachblox/assets/images.dart';
import 'package:teachblox/l10n/locals.dart';

const kDesktopHeaderHeight = 87.0;

class LandingHeader extends StatelessWidget implements PreferredSizeWidget {
  const LandingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 84.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: SvgImage.logo,
              ),
              Text(
                getLocale(context).companyTitle,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text('Buttons')],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kDesktopHeaderHeight);
}
