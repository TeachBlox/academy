import 'package:flutter/material.dart';

import 'package:teachblox/academy/store/language/language.dart';
import 'package:teachblox/constants.dart';
import 'package:teachblox/l10n/locals.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final width =
        MediaQuery.sizeOf(context).width < kTabletWidth ? 328.0 : 120.0;

    return DropdownMenu<String>(
      initialSelection: languageStore.selectedLanguage,
      requestFocusOnTap: false,
      width: width,
      textAlign: TextAlign.center,
      trailingIcon: Icon(Icons.keyboard_arrow_down),
      selectedTrailingIcon: Icon(Icons.keyboard_arrow_up),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      menuStyle: MenuStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
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
          label:
              ApplicationLanguages[locale.languageCode] ?? locale.languageCode,
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) {
                Color? color =
                    languageStore.selectedLanguage == locale.languageCode
                        ? Color(0xFF222225)
                        : Theme.of(context).colorScheme.surface;
                color = states.contains(WidgetState.hovered)
                    ? Colors.grey[800]
                    : color;
                return color;
              },
            ),
          ),
        );
      }).toList(),
    );
  }
}
