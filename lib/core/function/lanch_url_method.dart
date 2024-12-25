import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/function/flashbar.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> lanchUrlMethod(BuildContext context, String urlPath) async {
  final Uri url = Uri.parse(urlPath);

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    if (!context.mounted) return;
    flashBar(
      title: LanguageKeys.alert.tr(context),
      message: LanguageKeys.launchError.tr(context) + url.toString(),
    ).show(context);
  }
}
