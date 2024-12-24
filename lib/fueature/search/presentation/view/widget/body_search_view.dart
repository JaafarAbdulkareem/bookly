import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/fueature/search/presentation/view/widget/custom_text_field_widget.dart';
import 'package:bookly/fueature/search/presentation/view/widget/list_result_search.dart';
import 'package:flutter/material.dart';

class BodySearchView extends StatelessWidget {
  const BodySearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextFieldWidget(),
          const SizedBox(height: 15),
          Text(
            LanguageKeys.searchResult.tr(context),
            style: Style.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Expanded(child: ListResultSearch()),
        ],
      ),
    );
  }
}
