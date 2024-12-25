import 'package:another_flushbar/flushbar.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:flutter/material.dart';

class AppSnackBar {
  static const Duration duration = Duration(seconds: 2);
  static const LinearGradient backgroundColor = LinearGradient(
    colors: [
      ColorApp.snackbar,
      ColorApp.error,
      ColorApp.scaffoldBackground,
    ],
  );
  static const double messageSize = 16;
  static const FlushbarPosition direction = FlushbarPosition.TOP;
}
