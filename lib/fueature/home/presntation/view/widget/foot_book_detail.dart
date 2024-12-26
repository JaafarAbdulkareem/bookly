import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/fueature/home/presntation/view/widget/cubit_list_simiter_book.dart';
import 'package:flutter/material.dart';

class FootBookDetail extends StatelessWidget {
  const FootBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LanguageKeys.similarbook.tr(context),
          style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const CubitListSimiterBook(),
        const SizedBox(height: 10),
      ],
    );
  }
}
