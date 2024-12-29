import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/function/flashbar.dart';
import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/fueature/search/presentation/manage/search_cubit/search_cubit.dart';
import 'package:bookly/fueature/search/presentation/manage/search_cubit/search_state.dart';
import 'package:bookly/fueature/search/presentation/view/widget/list_result_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitListResultSearch extends StatelessWidget {
  const CubitListResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is SearchFailure) {
          flashBar(
            title: LanguageKeys.alert.tr(context),
            message: state.errorMessage.tr(context),
          ).show(context);
        }
      },
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListResultSearch(books: state.books);
        } else if (state is SearchLoading) {
          return const CustomProgressIndicatorWidget();
        }
        return const SizedBox();
      },
    );
  }
}
