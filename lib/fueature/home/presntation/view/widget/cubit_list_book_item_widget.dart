import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/list_book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitListBookItemWidget extends StatefulWidget {
  const CubitListBookItemWidget({
    super.key,
  });

  @override
  State<CubitListBookItemWidget> createState() =>
      _CubitListBookItemWidgetState();
}

class _CubitListBookItemWidgetState extends State<CubitListBookItemWidget> {
  List<HomeEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeadHomeCubit, HeadHomeState>(
      listener: (context, state) {
        if (state is HeadHomeSuccess) {
          books.addAll(state.books);
        }
      },
      builder: (context, state) {
        if (state is HeadHomeLoading || state is HeadHomeInitial) {
          return const CustomProgressIndicatorWidget();
        } else if (state is HeadHomeFailure) {
          return Text(state.errorMessage);
        }
        return ListBookItemWidget(
          books: books,
        );
      },
    );
  }
}
