import 'package:another_flushbar/flushbar.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
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
  static const double messageSize = ScaleApp.messageSnackbar;
  static const FlushbarPosition direction = FlushbarPosition.TOP;
}
