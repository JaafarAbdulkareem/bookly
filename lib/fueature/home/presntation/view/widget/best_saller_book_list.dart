import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_item.dart';
import 'package:flutter/material.dart';

class BestSallerBookList extends StatelessWidget {
  const BestSallerBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const BestSallerBookItem(),
    );
  }
}
