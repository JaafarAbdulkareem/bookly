import 'package:bookly/core/share/book_item_widget.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/cubit/book_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSimilerBooks extends StatefulWidget {
  const ListSimilerBooks({
    super.key,
    required this.books,
  });
  final List<HomeEntity> books;

  @override
  State<ListSimilerBooks> createState() => _ListSimilerBooksState();
}

class _ListSimilerBooksState extends State<ListSimilerBooks> {
  late ScrollController _scrollController;
  late double _currentPostion, _maxPostion;
  int startScroll = 1;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollLisener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.12,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AspectRatio(
          aspectRatio: 0.7,
          child: InkWell(
              onTap: () {},
              child: BookItemWidget(image: widget.books[index].image ?? "")),
        ),
      ),
    );
  }

  void _scrollLisener() async {
    _currentPostion = _scrollController.position.pixels;
    _maxPostion = _scrollController.position.maxScrollExtent;
    if (_currentPostion >= 0.7 * _maxPostion) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<BookDetailCubit>(context)
            .fetchSimilerBooks(startScroll: startScroll++);
        isLoading = false;
      }
    }
  }
}
