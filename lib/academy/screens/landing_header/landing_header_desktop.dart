import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_header/utils.dart';

import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/widgets/buttons/button.dart';
import 'package:teachblox/widgets/common/company_logo.dart';
import 'package:teachblox/widgets/selectors/language_selector/language_selelctor.dart';

const kDesktopHeaderHeight = 87.0;

class LandingHeaderDesktop extends StatelessWidget
    implements PreferredSizeWidget {
  const LandingHeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 84.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CompanyLogo(),
              ...getLandingLinkList(locale),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LanguageSelector(),
              Button(
                variant: ButtonVariant.ghost,
                onPressed: () {},
                text: locale.login,
              ),
              SizedBox(width: 8.0),
              Button(onPressed: () {}, text: locale.register),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kDesktopHeaderHeight);
}
