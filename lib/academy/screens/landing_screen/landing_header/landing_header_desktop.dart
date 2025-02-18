import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachblox/academy/routing/routes.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/utils.dart';

import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/widgets/buttons/button.dart';
import 'package:teachblox/widgets/common/company_logo.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';
import 'package:teachblox/widgets/selectors/language_selector/language_selelctor.dart';

class LandingHeaderDesktop extends StatelessWidget
    implements PreferredSizeWidget {
  const LandingHeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
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
                  onPressed: () {
                    context.go(loginScreenRoute);
                  },
                  text: locale.login,
                ),
                SizedBox(width: 8.0),
                Button(
                    onPressed: () {
                      context.go(registerScreenRoute);
                    },
                    text: locale.register),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kHeaderHeight);
}
