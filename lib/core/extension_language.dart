import 'package:bookly/core/class/localizations_app.dart';
import 'package:flutter/material.dart';

extension TranslateX on String {
  String tr(BuildContext context) {
    return LocalizationsApp.of(context)!.translate(this);
  }
}
