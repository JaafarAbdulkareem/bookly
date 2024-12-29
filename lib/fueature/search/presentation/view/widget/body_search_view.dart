import 'dart:developer';

import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/fueature/search/presentation/manage/search_cubit/search_cubit.dart';
import 'package:bookly/fueature/search/presentation/view/widget/cubit_list_result_search.dart';
import 'package:bookly/fueature/search/presentation/view/widget/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodySearchView extends StatefulWidget {
  const BodySearchView({super.key});

  @override
  State<BodySearchView> createState() => _BodySearchViewState();
}

class _BodySearchViewState extends State<BodySearchView> {
  late GlobalKey<FormState> _key;
  late AutovalidateMode _autovalidateMode;
  String? searchTitle;
  @override
  void initState() {
    super.initState();
    _key = GlobalKey();
    _autovalidateMode = AutovalidateMode.disabled;
  }

  @override
  void dispose() {
    super.dispose();
    searchTitle = null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 16),
      child: Form(
        key: _key,
        autovalidateMode: _autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldWidget(
              onSave: (value) {
                searchTitle = value;
                log("$searchTitle : dd : $value");
              },
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _key.currentState!.save();
                  BlocProvider.of<SearchCubit>(context)
                      .fetchSearchBooks(searchTitle: searchTitle!);
                } else {
                  _autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(height: 15),
            Text(
              LanguageKeys.searchResult.tr(context),
              style: Style.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            const Expanded(child: CubitListResultSearch()),
          ],
        ),
      ),
    );
  }
}
