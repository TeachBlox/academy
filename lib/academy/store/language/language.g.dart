// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Language on _Language, Store {
  late final _$selectedLanguageAtom =
      Atom(name: '_Language.selectedLanguage', context: context);

  @override
  String get selectedLanguage {
    _$selectedLanguageAtom.reportRead();
    return super.selectedLanguage;
  }

  @override
  set selectedLanguage(String value) {
    _$selectedLanguageAtom.reportWrite(value, super.selectedLanguage, () {
      super.selectedLanguage = value;
    });
  }

  late final _$_LanguageActionController =
      ActionController(name: '_Language', context: context);

  @override
  dynamic setLanguage(String lang) {
    final _$actionInfo =
        _$_LanguageActionController.startAction(name: '_Language.setLanguage');
    try {
      return super.setLanguage(lang);
    } finally {
      _$_LanguageActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedLanguage: ${selectedLanguage}
    ''';
  }
}
