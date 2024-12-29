import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:bookly/fueature/search/presentation/view/widget/search_result_item.dart';
import 'package:flutter/material.dart';

class ListResultSearch extends StatelessWidget {
  const ListResultSearch({super.key, required this.books});
  final List<SearchEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => SearchResultItem(book: books[index]),
    );
  }
}
