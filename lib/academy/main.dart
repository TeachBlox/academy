import 'package:flutter/material.dart';
import 'package:teachblox/l10n/locals.dart';

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
      home: Scaffold(
        body: Center(
          child: Text(
            'Welcome to TeachBlox Landing Page!',
          ),
        ),
      ),
    );
  }
}
