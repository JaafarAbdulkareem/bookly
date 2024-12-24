import 'package:bookly/core/class/localizations_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

List<LocalizationsDelegate<Object>> localizationsDelegates = const [
  LocalizationsApp.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
