import 'package:bookly/core/utils/font_app.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/fueature/home/presntation/view/widget/page_number_rate_best_saller.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:flutter/material.dart';

class SearchResultDetail extends StatelessWidget {
  const SearchResultDetail({super.key, required this.book});
  final SearchEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.bookName,
              style: Style.textStyle20.copyWith(fontFamily: FontApp.gTsectra),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              book.authName ?? "",
              style: Style.textStyle14,
              overflow: TextOverflow.ellipsis,
            ),
            PageNumberRateBestSaller(
              pageNumber: book.pageNumber!,
              rate: book.rate ?? 0,
            )
          ],
        ),
      ),
    );
  }
}
