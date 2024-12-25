import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/view/widget/cubit_best_saller_book_list.dart';
import 'package:bookly/fueature/home/presntation/view/widget/head_home_view.dart';
import 'package:bookly/core/share/custom_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyHomeView extends StatefulWidget {
  const BodyHomeView({super.key});

  @override
  State<BodyHomeView> createState() => _BodyHomeViewState();
}

class _BodyHomeViewState extends State<BodyHomeView> {
  late ScrollController _scrollController;
  late double _currentPostion, _maxPostion;
  int startScroll = 1;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollLisener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: HomeScale.leftmergin),
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: HeadHomeView(),
          ),
          SliverToBoxAdapter(
            child: CustomTitleWidget(
              text: LanguageKeys.bestSeller.tr(context),
            ),
          ),
          const CubitBestSallerBookList(),
        ],
      ),
    );
  }

  void _scrollLisener() async {
    _currentPostion = _scrollController.position.pixels;
    _maxPostion = _scrollController.position.maxScrollExtent;
    if (_currentPostion >= 0.7 * _maxPostion) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<BodyHomeCubit>(context)
            .fetchBodyBooks(startScroll: startScroll++);
        isLoading = false;
      }
    }
  }
}
