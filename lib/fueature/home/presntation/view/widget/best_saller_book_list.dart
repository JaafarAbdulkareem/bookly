import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_item.dart';
import 'package:flutter/material.dart';

class BestSallerBookList extends StatelessWidget {
  const BestSallerBookList({
    super.key,
     required this.books ,
  });
  final List<HomeEntity> books;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: books.length,
      itemBuilder: (context, index) =>
          BestSallerBookItem(book: books[index]),
    );
  }
}
