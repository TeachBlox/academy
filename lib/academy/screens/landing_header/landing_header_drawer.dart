import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_header/utils.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/widgets/buttons/button.dart';
import 'package:teachblox/widgets/buttons/link.dart';
import 'package:teachblox/widgets/common/company_logo.dart';
import 'package:teachblox/widgets/selectors/language_selector/language_selelctor.dart';

class LandingHeaderDrawer extends StatelessWidget {
  const LandingHeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);

    return Container(
      width: 360.0,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: kHeaderHeight,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CompanyLogo(),
                    IconButton(
                      onPressed: () => Scaffold.of(context).closeEndDrawer(),
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: LanguageSelector(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Button(
                variant: ButtonVariant.ghost,
                text: locale.login,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                onPressed: () {
                  print('!');
                },
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(bottom: 36.0),
              child: Button(
                text: locale.register,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                onPressed: () {
                  print('!');
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...getLandingLinkList(locale).map(
                    (link) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Link(
                          link: link.link,
                          text: link.text,
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
