import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teachblox/academy/routing/router.dart';

import 'package:teachblox/academy/store/language/language.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/theme.dart';

void main() {
  runApp(const LandingApp());
}

class LandingApp extends StatelessWidget {
  const LandingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: kLocalizationsDelegates,
        supportedLocales: kSupportedLocales,
        locale: Locale(languageStore.selectedLanguage),
        theme: theme,
        routerConfig: router,
      ),
    );
  }
}
