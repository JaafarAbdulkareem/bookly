import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitBestSallerBookList extends StatelessWidget {
  const CubitBestSallerBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyHomeCubit, BodyHomeState>(
      builder: (context, state) {
        if (state is BodyHomeSuccess) {
          return BestSallerBookList(books: state.books);
        } else if (state is BodyHomeFailure) {
          return Text(state.errorMessage);
        }
        return const CustomProgressIndicatorWidget();
      },
    );
  }
}
