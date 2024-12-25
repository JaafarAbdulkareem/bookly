import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/function/flashbar.dart';
import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_list.dart';
import 'package:bookly/fueature/home/presntation/view/widget/indcator_best_saller_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitBestSallerBookList extends StatelessWidget {
  const CubitBestSallerBookList({
    super.key,
  });
  static List<HomeEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BodyHomeCubit, BodyHomeState>(
      listener: (context, state) {
        if (state is BodyHomeSuccess) {
          books.addAll(state.books);
        } else if (state is BodyHomeFailure) {
          flashBar(
            title: LanguageKeys.alert.tr(context),
            message: state.errorMessage.tr(context),
          ).show(context);
        }
      },
      builder: (context, state) {
        return IndcatorBestSallerList();
        if (state is BodyHomeLoading || state is BodyHomeInitial) {
          return const SliverToBoxAdapter(
            child: CustomProgressIndicatorWidget(),
          );
        }
        return BestSallerBookList(books: books);
      },
    );
  }
}
