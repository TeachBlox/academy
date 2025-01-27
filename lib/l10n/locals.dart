import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const kLocalizationsDelegates = AppLocalizations.localizationsDelegates;
const kSupportedLocales = AppLocalizations.supportedLocales;

AppLocalizations getLocale(BuildContext context) {
  return AppLocalizations.of(context)!;
}
