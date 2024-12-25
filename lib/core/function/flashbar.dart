import 'package:another_flushbar/flushbar.dart';
import 'package:bookly/core/class/app_snackbar.dart';

Flushbar flashBar({
  required String title,
  required String message,
}) {
  return Flushbar(
    duration: AppSnackBar.duration,
    backgroundGradient: AppSnackBar.backgroundColor,
    title: title,
    message: message,
    messageSize: AppSnackBar.messageSize,
    flushbarPosition: AppSnackBar.direction,
  );
}
