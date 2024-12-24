import 'dart:convert';

import 'package:bookly/core/utils/lang_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalizationsApp {
  final Locale? locale;
  LocalizationsApp({required this.locale});

  static LocalizationsApp? of(BuildContext context) {
    // select the postiton in app's tree and declear customer localization
    return Localizations.of<LocalizationsApp>(context, LocalizationsApp);
  }

  static const LocalizationsDelegate<LocalizationsApp> delegate =
      _AppLocalizationDelegate();

  late Map<String, String> _localizedString;
  Future loadJsonLanguage() async {
    String jsonString = await rootBundle
        .loadString("${ConstantLang.langPath}${locale!.languageCode}.json");
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedString =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key) => _localizedString[key] ?? "";
}

class _AppLocalizationDelegate extends LocalizationsDelegate<LocalizationsApp> {
  const _AppLocalizationDelegate();
  @override
  bool isSupported(Locale locale) {
    return ConstantLang.langs.contains(locale.languageCode);
  }

  @override
  Future<LocalizationsApp> load(Locale locale) async {
    LocalizationsApp appLocalizations = LocalizationsApp(locale: locale);
    await appLocalizations.loadJsonLanguage();
    return appLocalizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<LocalizationsApp> old) =>
      false;
}
