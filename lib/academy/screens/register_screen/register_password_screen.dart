import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teachblox/academy/store/auth_store/auth_store.dart';
import 'package:teachblox/academy/store/registration_store/registration_store.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/buttons/button.dart';
import 'package:teachblox/widgets/input.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';
import 'package:teachblox/widgets/main_app_bar.dart';

class RegisterPasswordScreen extends StatelessWidget {
  const RegisterPasswordScreen({super.key});

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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    locale.fullName,
                    style: getLabelSmall(context),
                  ),
                ),
                SizedBox(height: 12.0),
                Input(
                  initialValue: registrationStore.fullName,
                  onChanged: registrationStore.setFullName,
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
                  initialValue: registrationStore.password,
                  onChanged: registrationStore.setPassword,
                ),
                SizedBox(height: 24.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${locale.confirmPassword}*',
                    style: getLabelSmall(context),
                  ),
                ),
                SizedBox(height: 12.0),
                Input(
                  isPassword: true,
                  initialValue: registrationStore.confirmPassword,
                  onChanged: registrationStore.setConfirmPassword,
                ),
                SizedBox(height: 32.0),
                Observer(
                  builder: (_) => Button(
                    fullWidth: true,
                    onPressed: () {
                      if (registrationStore.password ==
                          registrationStore.confirmPassword) {
                        authStore.signUp(
                          registrationStore.email,
                          registrationStore.password,
                        );
                      }
                    },
                    text: locale.createAccount,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
