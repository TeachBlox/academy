import 'package:flutter/material.dart';

import 'package:teachblox/academy/screens/landing_screen.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/theme/theme.dart';

void main() {
  runApp(const LandingApp());
}

class LandingApp extends StatelessWidget {
  const LandingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: kLocalizationsDelegates,
      supportedLocales: kSupportedLocales,
      theme: theme,
      home: LandingScreen(),
    );
  }
}
