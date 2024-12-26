import 'package:bookly/core/function/setup_get_it_local.dart';
import 'package:bookly/fueature/home/data/repositories/fetch_data_respository.dart';
import 'package:bookly/fueature/home/domain/home_use_case/fetch_similer_usecase.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/cubit/book_detail_cubit.dart';
import 'package:bookly/fueature/home/presntation/view/widget/body_book_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BookDetailCubit(
              FetchSimilerUsecase(
                fetchRespository: getIt.get<FetchDataRespository>(),
              ),
            )..fetchSimilerBooks(),
          ),
        ],
        child: const BodyBookDetailView(),
      )),
    );
  }
}
