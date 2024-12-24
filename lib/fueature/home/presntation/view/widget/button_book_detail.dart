import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/share/custom_button_widget.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class ButtonBookDetail extends StatelessWidget {
  const ButtonBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButtonWidget(
          text: r"19.99 $",
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(BookDetailScale.raduis),
            bottomLeft: Radius.circular(BookDetailScale.raduis),
          ),
        ),
        CustomButtonWidget(
          text: LanguageKeys.freePreview.tr(context),
          textSize: 14,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(BookDetailScale.raduis),
            bottomRight: Radius.circular(BookDetailScale.raduis),
          ),
          color: TextColorApp.buttonColors,
          backgroundcolor: ColorApp.buttonOrange,
        ),
      ],
    );
  }
}
