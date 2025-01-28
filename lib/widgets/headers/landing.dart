import 'package:flutter/material.dart';

import 'package:teachblox/assets/images.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/widgets/buttons/link.dart';

import '../selectors/language.dart';

const kDesktopHeaderHeight = 87.0;

class LandingHeader extends StatelessWidget implements PreferredSizeWidget {
  const LandingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
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
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Text(
                  getLocale(context).companyTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              Link(
                onPressed: () => print('!'),
                text: locale.link_aboutPlatform,
              ),
              Link(
                onPressed: () => print('!'),
                text: locale.link_courses,
              ),
              Link(
                onPressed: () => print('!'),
                text: locale.link_forTeachers,
              ),
              Link(
                onPressed: () => print('!'),
                text: locale.link_contacts,
              ),
            ],
          ),
          LanguageSelector(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kDesktopHeaderHeight);
}
