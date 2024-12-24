import 'package:bookly/fueature/home/presntation/view/widget/cubit_list_book_item_widget.dart';
import 'package:bookly/fueature/home/presntation/view/widget/home_app_bar.dart';
import 'package:flutter/material.dart';

class HeadHomeView extends StatelessWidget {
  const HeadHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomeAppBar(),
        CubitListBookItemWidget(),
      ],
    );
  }
}


