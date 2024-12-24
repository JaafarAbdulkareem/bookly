import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(IconApp.search),
          ),
          isDense: true,
          hintText: LanguageKeys.search.tr(context),
          border: outlineBorder(),
          focusedBorder: outlineBorder(),
          enabledBorder: outlineBorder(),
          errorBorder: outlineBorder(color: ColorApp.error),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder({Color color = ColorApp.borderField}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
