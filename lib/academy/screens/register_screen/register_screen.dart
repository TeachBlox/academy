import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachblox/academy/routing/routes.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/buttons/button.dart';
import 'package:teachblox/widgets/input.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';
import 'package:teachblox/widgets/main_app_bar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);

    return Scaffold(
      appBar: MainAppBar(),
      body: AdaptivePadding(
        child: Center(
          child: SizedBox(
            width: getAdaptiveValue(
              context,
              mobile: double.infinity,
              tablet: double.infinity,
              desktop: 400.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      locale.registerScreen_have_account_link_text,
                      style: getLabelMedium(context),
                    ),
                    SizedBox(width: 12.0),
                    Button(
                      variant: ButtonVariant.link,
                      onPressed: () => context.replace(loginScreenRoute),
                      text: locale.log_in,
                    ),
                  ],
                ),
                SizedBox(height: 36.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${locale.email}*',
                    style: getLabelSmall(context),
                  ),
                ),
                SizedBox(height: 12.0),
                Input(),
                SizedBox(height: 32.0),
                Button(
                  fullWidth: true,
                  onPressed: () {},
                  text: locale.continueWithButtonText(locale.email),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
