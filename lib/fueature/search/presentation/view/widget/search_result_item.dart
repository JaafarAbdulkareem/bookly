import 'package:bookly/core/route.dart';
import 'package:bookly/fueature/home/presntation/manage/home_book_detail/home_book_detail_cubit.dart';
import 'package:bookly/core/share/book_item_widget.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:bookly/fueature/search/presentation/manage/search_result_detail/search_result_detail_cubit.dart';
import 'package:bookly/fueature/search/presentation/view/widget/search_result_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
    required this.book,
  });
  final SearchEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () async {
          GoRouter.of(context).push(RouteApp.bookDetailView);
          BlocProvider.of<HomeBookDetailCubit>(context).book =
              BlocProvider.of<SearchResultDetailCubit>(context)
                  .convertToHomeBook(book);
        },
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: BookItemWidget(
                  image: book.image ?? '',
                ),
              ),
              Flexible(
                  child: SearchResultDetail(
                book: book,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
