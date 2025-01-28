import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:teachblox/academy/store/language/language.dart';
import 'package:teachblox/l10n/locals.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: languageStore.selectedLanguage,
      requestFocusOnTap: false,
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      onSelected: (String? languageCode) {
        if (languageCode != null) {
          languageStore.setLanguage(languageCode);
        }
      },
      dropdownMenuEntries:
          kSupportedLocales.map<DropdownMenuEntry<String>>((Locale locale) {
        return DropdownMenuEntry<String>(
          value: locale.languageCode,
          label: locale.languageCode,
        );
      }).toList(),
    );
  }
}
