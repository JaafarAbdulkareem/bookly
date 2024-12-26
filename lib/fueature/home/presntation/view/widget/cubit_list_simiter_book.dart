import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/function/flashbar.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/cubit/book_detail_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/cubit/book_detail_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/indector_list_similer_book.dart';
import 'package:bookly/fueature/home/presntation/view/widget/list_similer_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitListSimiterBook extends StatefulWidget {
  const CubitListSimiterBook({
    super.key,
  });

  @override
  State<CubitListSimiterBook> createState() => _CubitListSimiterBookState();
}

class _CubitListSimiterBookState extends State<CubitListSimiterBook> {
  List<HomeEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookDetailCubit, BookDetailState>(
      listener: (context, state) {
        if (state is BookDetailSuccess) {
          books.addAll(state.books);
        } else if (state is BookDetailFailure) {
          flashBar(
            title: LanguageKeys.alert.tr(context),
            message: state.errorMessage.tr(context),
          ).show(context);
        }
      },
      builder: (context, state) {
        if (state is BookDetailLoading || state is BookDetailInitial) {
          return const IndecatorListSimilerBook();
        }
        return ListSimilerBooks(
          books: books,
        );
      },
    );
  }
}
