import 'package:bookly/core/function/setup_get_it_local.dart';
import 'package:bookly/fueature/home/data/repositories/fetch_data_respository.dart';
import 'package:bookly/fueature/home/domain/home_use_case/fetch_body_usecase.dart';
import 'package:bookly/fueature/home/domain/home_use_case/fetch_head_usecase.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/view/widget/body_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HeadHomeCubit(
            FetchHeadUsecase(
              fetchRespository: getIt.get<FetchDataRespository>(),
            ),
          )..fetchHeadBooks(),
        ),
        BlocProvider(
          create: (context) => BodyHomeCubit(
            FetchBodyUsecase(
              fetchRespository: getIt.get<FetchDataRespository>(),
            ),
          )..fetchBodyBooks(),
        ),
      ],
      child: const Scaffold(
        body: BodyHomeView(),
      ),
    );
  }
}
