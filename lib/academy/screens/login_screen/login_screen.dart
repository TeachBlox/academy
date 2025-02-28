import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachblox/academy/routing/routes.dart';
import 'package:teachblox/academy/store/auth_store/auth_store.dart';
import 'package:teachblox/academy/store/login_store/login_store.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/validator.dart';
import 'package:teachblox/widgets/buttons/button.dart';
import 'package:teachblox/widgets/input.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';
import 'package:teachblox/widgets/main_app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
    final loginStore = LoginStore();

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
                      locale.loginScreen_do_not_have_account_link_text,
                      style: getLabelMedium(context),
                    ),
                    SizedBox(width: 12.0),
                    Button(
                      variant: ButtonVariant.link,
                      onPressed: () => context.replace(registerScreenRoute),
                      text: locale.sign_up,
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
                Input(
                  onChanged: loginStore.setEmail,
                  initialValue: loginStore.email,
                ),
                SizedBox(height: 24.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${locale.password}*',
                    style: getLabelSmall(context),
                  ),
                ),
                SizedBox(height: 12.0),
                Input(
                  isPassword: true,
                  onChanged: loginStore.setPassword,
                  initialValue: loginStore.password,
                ),
                SizedBox(height: 32.0),
                Button(
                  fullWidth: true,
                  onPressed: () {
                    if (Validator.isValidEmail(loginStore.email) &&
                        loginStore.password.isNotEmpty) {
                      authStore.signIn(
                        loginStore.email,
                        loginStore.password,
                      );
                    }
                  },
                  text: locale.log_in,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
