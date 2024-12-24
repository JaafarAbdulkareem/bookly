import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_list.dart';
import 'package:bookly/fueature/home/presntation/view/widget/head_home_view.dart';
import 'package:bookly/core/share/custom_title_widget.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: HomeScale.leftmergin),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: HeadHomeView(),
          ),
          SliverToBoxAdapter(
            child: CustomTitleWidget(
              text: LanguageKeys.bestSeller.tr(context),
            ),
          ),
          const BestSallerBookList(),
        ],
      ),
    );
  }
}
