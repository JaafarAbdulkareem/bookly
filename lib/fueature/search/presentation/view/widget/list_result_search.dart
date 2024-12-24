import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_item.dart';
import 'package:flutter/material.dart';

class ListResultSearch extends StatelessWidget {
  const ListResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const BestSallerBookItem(),
    );
  }
}
