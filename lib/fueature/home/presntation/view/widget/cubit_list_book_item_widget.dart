import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/list_book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitListBookItemWidget extends StatelessWidget {
  const CubitListBookItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeadHomeCubit, HeadHomeState>(
      builder: (context, state) {
        if (state is HeadHomeSuccess) {
          return ListBookItemWidget(books: state.books,);
        } else if (state is HeadHomeFailure) {
          return Text(state.errorMessage);
        }
        return const CustomProgressIndicatorWidget();
      },
    );
  }
}


