import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_cubit.dart';
import 'package:bookly/fueature/home/presntation/view/widget/play_button_widget.dart';
import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBookItemWidget extends StatefulWidget {
  const ListBookItemWidget({super.key, required this.books});
  final List<HomeEntity> books;

  @override
  State<ListBookItemWidget> createState() => _ListBookItemWidgetState();
}

class _ListBookItemWidgetState extends State<ListBookItemWidget> {
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
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 50,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => AspectRatio(
            aspectRatio: 0.6,
            child: BookItemWidget(
              image: widget.books[index].image ?? '',
              playButton: PlayButtonWidget(previewLink: widget.books[index].previewLink??'',),
            ),
          ),
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
        await BlocProvider.of<HeadHomeCubit>(context)
            .fetchHeadBooks(startScroll: startScroll++);
        isLoading = false;
      }
    }
  }
}
