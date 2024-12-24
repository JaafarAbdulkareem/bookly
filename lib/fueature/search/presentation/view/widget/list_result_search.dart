import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_item.dart';
import 'package:flutter/material.dart';

class ListResultSearch extends StatelessWidget {
  const ListResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomeEntity> test = [];
    return ListView.builder(
      itemBuilder: (context, index) =>  BestSallerBookItem(book: test[index],),
    );
  }
}
