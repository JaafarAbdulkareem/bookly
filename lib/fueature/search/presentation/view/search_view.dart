import 'package:bookly/core/function/setup_get_it_local.dart';
import 'package:bookly/fueature/search/data/repositories/search_data_repository.dart';
import 'package:bookly/fueature/search/domain/search_use_case/search_usecase.dart';
import 'package:bookly/fueature/search/presentation/manage/search_cubit/search_cubit.dart';
import 'package:bookly/fueature/search/presentation/view/widget/body_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => SearchCubit(
            FetchSearchUsecase(
              searchDomainRepository: getIt.get<SearchDataRepository>(),
            ),
          ),
          child: const BodySearchView(),
        ),
      ),
    );
  }
}
