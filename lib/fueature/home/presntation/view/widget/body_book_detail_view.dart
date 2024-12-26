import 'package:bookly/fueature/home/presntation/view/widget/book_detail_app_bar.dart';
import 'package:bookly/fueature/home/presntation/view/widget/button_book_detail.dart';
import 'package:bookly/fueature/home/presntation/view/widget/foot_book_detail.dart';
import 'package:bookly/fueature/home/presntation/view/widget/head_book_detail.dart';
import 'package:flutter/material.dart';

class BodyBookDetailView extends StatelessWidget {
  const BodyBookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailAppBar(),
                HeadBookDetail(),
                ButtonBookDetail(),
                Expanded(child: SizedBox(height: 45)),
                FootBookDetail(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
