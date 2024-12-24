import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/core/share/rate_book_widget.dart';
import 'package:flutter/material.dart';

class PageNumberRateBestSaller extends StatelessWidget {
  const PageNumberRateBestSaller({super.key, required this.pageNumber});
  final num pageNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$pageNumber ${LanguageKeys.page.tr(context)}",
          style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const RateBookWidget()
      ],
    );
  }
}
