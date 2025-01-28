import 'dart:ui';

import 'package:mobx/mobx.dart';

part 'language.g.dart';

class Language = _Language with _$Language;

abstract class _Language with Store {
  @observable
  String selectedLanguage = PlatformDispatcher.instance.locale.languageCode;

  @action
  setLanguage(String lang) => selectedLanguage = lang;
}

final languageStore = Language();